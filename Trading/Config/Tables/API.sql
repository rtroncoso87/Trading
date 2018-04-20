CREATE TABLE [Config].[API] (
    [APIId]         INT            IDENTITY (1, 1) NOT NULL,
    [ApiMethod]     VARCHAR (100)  NOT NULL,
    [Url]           VARCHAR (1000) NOT NULL,
    [TryConversion] BIT            CONSTRAINT [DF__API__TryConversi__1CF15040] DEFAULT ((0)) NOT NULL,
    [Limit]         INT            NULL,
    [Enabled]       BIT            CONSTRAINT [DF__API__Enabled__1DE57479] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK__API__ABCD70D2EC9D7F6A] PRIMARY KEY CLUSTERED ([APIId] ASC)
);

