/**CREATE AIRLINE TABLE**/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[airline]
(
	[AIRPORT_ID] [int] NULL,
	[AIRPORT] [nvarchar](256) NULL,
	[DISPLAY_AIRPORT_NAME] [nvarchar](256) NULL,
	[LATITUDE] [float] NULL,
	[LONGITUDE] [float] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** CREATE BLOBDATA TABLE ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[blobdata]
(
	[ID] [nvarchar](1) NULL,
	[date] [nvarchar](256) NULL,
	[dateid] [int] NULL,
	[airport] [nvarchar](256) NULL,
	[temp] [nvarchar](256) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** CREATE PRODUCT TABLE ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product]
(
	[prodID] [int] NULL,
	[category] [nvarchar](256) NULL,
	[brand] [nvarchar](256) NULL,
	[model] [nvarchar](256) NULL,
	[size] [nvarchar](256) NULL,
	[price] [float] NULL,
	[doublePrice] [float] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** CREATE STORED PROC******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_TruncateStaging] AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    TRUNCATE TABLE dbo.airline;
	
END
GO


