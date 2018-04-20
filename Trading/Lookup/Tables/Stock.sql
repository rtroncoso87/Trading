CREATE TABLE [Lookup].[Stock] (
    [StockId]   VARCHAR (10)  NOT NULL,
    [StockName] VARCHAR (100) NOT NULL,
    [Enabled]   BIT           DEFAULT ((1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([StockId] ASC)
);

