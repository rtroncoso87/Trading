CREATE TABLE [Config].[Parameter] (
    [ParameterId] INT           IDENTITY (1, 1) NOT NULL,
    [ApiMethod]   VARCHAR (100) NOT NULL,
    [Name]        VARCHAR (100) NOT NULL,
    [Description] VARCHAR (500) NULL,
    [Value]       VARCHAR (100) NOT NULL,
    [Required]    BIT           NOT NULL,
    [Enabled]     BIT           CONSTRAINT [DF__Parameter__Enabl__5070F446] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK__Paramete__F80C6277F7999FF6] PRIMARY KEY CLUSTERED ([ParameterId] ASC)
);

