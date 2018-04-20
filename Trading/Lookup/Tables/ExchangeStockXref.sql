CREATE TABLE [Lookup].[ExchangeStockXref] (
    [ExchangeId]  VARCHAR (100) NOT NULL,
    [StockIdFrom] VARCHAR (10)  NOT NULL,
    [StockIdTo]   VARCHAR (10)  NOT NULL,
    [Enabled]     BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_ExchangeStockXref] PRIMARY KEY CLUSTERED ([ExchangeId] ASC, [StockIdFrom] ASC, [StockIdTo] ASC)
);

