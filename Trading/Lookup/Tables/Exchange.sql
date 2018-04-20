CREATE TABLE [Lookup].[Exchange] (
    [ExchangeId]   VARCHAR (10)  NOT NULL,
    [ExchangeName] VARCHAR (100) NOT NULL,
    [Enabled]      BIT           DEFAULT ((1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ExchangeId] ASC)
);

