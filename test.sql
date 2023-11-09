CREATE EXTERNAL TABLE [dbo].[ActorDimension]
(
    [ActorID] VARCHAR(100),
    [ActorKnownGroup] VARCHAR(100),
    [ActorEthnicity] VARCHAR(100),
    [ActorReligion1] VARCHAR(100),
    [ActorReligion2] VARCHAR(100),
    [ActorType1] VARCHAR(100),
    [ActorType2] VARCHAR(100),
    [ActorType3] VARCHAR(100),
    [CountryCameoCode] VARCHAR(3),
    [CountryName] VARCHAR(100),
    [CountryRegion] VARCHAR(100),
    [CountrySubregion] VARCHAR(100)
)
WITH
(
    LOCATION = '/GoldLayer/ActorDimension/'
)

CREATE EXTERNAL TABLE [dbo].[FactTable]
(
    [EventID] BIGINT,
    [MentionDateTime] TIMESTAMP,
    [MentionType] BIGINT,
    [MentionSourceName] VARCHAR(150),
    [MentionIdentifier] VARCHAR(150),
    [Actor1CharOffset] INT,
    [Actor2CharOffset] INT,
    [MentionDocLen] INT,
    [MentionDocTone] FLOAT,
    [EventMentionID] BIGINT,
    [EventDate] DATE,
    [Actor1ID] VARCHAR(100),
    [Actor1EventLocationID] BIGINT,
    [Actor2ID] VARCHAR(100),
    [Actor2EventLocationID] BIGINT,
    [EventTypeID] VARCHAR(50),
    [GoldsteinScale] FLOAT,
    [AvgTone] FLOAT
)
WITH
(
    LOCATION = '/GoldLayer/FactTable/',
    DATA_SOURCE = [ExternalDataSource],
    FILE_FORMAT = [ParquetFormat]
)