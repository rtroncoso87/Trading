CREATE TABLE [Stock].[PriceByHour] (
    [Timestamp]    BIGINT           NOT NULL,
    [CryptoId]     VARCHAR (10)     NOT NULL,
    [PriceDate]    DATETIME         NOT NULL,
    [ClosePrice]   DECIMAL (12, 4)  NULL,
    [HighPrice]    DECIMAL (12, 4)  NULL,
    [LowPrice]     DECIMAL (12, 4)  NULL,
    [OpenPrice]    DECIMAL (12, 4)  NULL,
    [VolumeFrom]   DECIMAL (30, 15) NULL,
    [VolumeTo]     DECIMAL (30, 15) NULL,
    [DateInserted] DATETIME         DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_PriceHistoryByHour] PRIMARY KEY CLUSTERED ([Timestamp] ASC, [CryptoId] ASC)
);

