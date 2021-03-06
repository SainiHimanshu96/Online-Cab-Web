SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Feedback](
	[Comment] [nvarchar](2000) NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewBooking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewBooking](
	[Booking_ID] [int] IDENTITY(1000,1) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[Pickup_City] [nvarchar](50) NOT NULL,
	[Pickup_Location] [nvarchar](50) NOT NULL,
	[Landmark] [nvarchar](50) NOT NULL,
	[Number_Of_Cabs] [int] NOT NULL,
	[Destination] [nvarchar](50) NOT NULL,
	[Contact_Number] [decimal](18, 0) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Pickup_Date] [nvarchar](50) NOT NULL,
	[Pickup_Time] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NewBooking_1] PRIMARY KEY CLUSTERED 
(
	[Booking_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Registration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User_Registration](
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Sex] [nvarchar](50) NOT NULL,
	[Date_Of_Birth] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[Password_Hint] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[PIN_Code] [int] NULL,
	[Contact_Number] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_User_Registration] PRIMARY KEY CLUSTERED 
(
	[User_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Taxi_Information]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Taxi_Information](
	[Cab_Number] [nvarchar](15) NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Taxi_Information] PRIMARY KEY CLUSTERED 
(
	[Cab_Number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lost_Found]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Lost_Found](
	[Booking_ID] [int] NOT NULL,
	[Pickup_Source] [nvarchar](50) NOT NULL,
	[Destination] [nvarchar](50) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[Pickup_Date] [nvarchar](50) NOT NULL,
	[Pickup_Time] [nvarchar](50) NOT NULL,
	[Item_Left_In_Cab] [nvarchar](500) NOT NULL,
	[Contact_Number] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
END
