CREATE PROC Config.GetApiUrlByMethod(
	@ApiMethod VARCHAR(100)
)
AS
BEGIN TRY

	DECLARE @BaseURL VARCHAR(500)

	SET @BaseURL = (SELECT [Url] FROM [Config].API WHERE ApiMethod = @ApiMethod AND [Enabled] = 1)

	SELECT DISTINCT @BaseURL + '?' +
		REPLACE(SUBSTRING(
			(
				SELECT '|' + P1.[Name] + '=' + P1.[Value] AS [text()]
				FROM [Config].[Parameter] AS P1
				WHERE P1.ApiMethod = P2.ApiMethod
				AND [Enabled] = 1
				ORDER BY P1.ApiMethod
				FOR XML PATH ('')
			), 2, 1000), '|', '&') AS [Url]
	FROM [Config].[Parameter] AS P2
	WHERE ApiMethod = @ApiMethod
			
END TRY
BEGIN CATCH

    DECLARE @ProcessName VARCHAR(255)
    SET @ProcessName = OBJECT_NAME(@@PROCID)

    -- ROLLBACK TRANSACTION
	   IF @@TRANCOUNT > 0 ROLLBACK TRAN

    -- DECLARE AND SET VARIABLES
	   DECLARE @ErrorMessage VARCHAR(2000)
		  , @ErrorSeverity TINYINT
		  , @ErrorState TINYINT
		  , @ErrorLine INT

	   SET @ErrorMessage  = ERROR_MESSAGE()
	   SET @ErrorSeverity = ERROR_SEVERITY()
	   SET @ErrorState    = ERROR_STATE()
	   SET @ErrorLine	  = ERROR_LINE()

    -- LOG ERROR
	   --EXEC [Log].LogEvent 
		  --  @ProcessName = @ProcessName
		  --, @Message = @ErrorMessage
		  --, @IsError = 1
		  --, @ErrorLineNumber = @ErrorLine
		
    -- RAISE FAILURE ERROR --
	   RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
		

END CATCH


