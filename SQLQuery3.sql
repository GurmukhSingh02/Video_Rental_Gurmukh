GO
/****** Object:  Table [dbo].[Customers]    Script Date: 03-06-2020 01:26:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RentedMovie]    Script Date: 03-06-2020 01:26:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentedMovie](
	[RMID] [int] IDENTITY(1,1) NOT NULL,
	[MovieIDFK] [int] NULL,
	[CustIDFK] [int] NULL,
	[DateRented] [datetime] NULL,
	[DateReturned] [datetime] NULL,
 CONSTRAINT [PK_RentedMovie] PRIMARY KEY CLUSTERED 
(
	[RMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Videos]    Script Date: 03-06-2020 01:26:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Points] [nvarchar](50) NULL,
	[Year] [int] NULL,
	[Copies] [int] NULL,
	[ReleasedBy] [nvarchar](50) NULL,
	[RentalCost] [int] NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

GO
INSERT [dbo].[Customers] ([ID], [Name], [Mobile], [Address]) VALUES (1, N'Nirmal', N'9815276871', N'abcd')
GO
INSERT [dbo].[Customers] ([ID], [Name], [Mobile], [Address]) VALUES (2, N'Gurmukh', N'23244345', N'qwerty')
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[RentedMovie] ON 

GO
INSERT [dbo].[RentedMovie] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned]) VALUES (1, 1, 1, CAST(N'2019-12-11 00:00:00.000' AS DateTime), CAST(N'2019-12-10 22:21:03.000' AS DateTime))
GO
INSERT [dbo].[RentedMovie] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned]) VALUES (2, 1, 1, CAST(N'2019-12-11 00:00:00.000' AS DateTime), CAST(N'2019-12-10 22:33:11.000' AS DateTime))
GO
INSERT [dbo].[RentedMovie] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned]) VALUES (3, 1, 1, CAST(N'2019-12-10 00:00:00.000' AS DateTime), CAST(N'2019-12-10 22:36:56.000' AS DateTime))
GO
INSERT [dbo].[RentedMovie] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned]) VALUES (4, 1, 1, CAST(N'2019-12-10 00:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[RentedMovie] OFF
GO
SET IDENTITY_INSERT [dbo].[Videos] ON 

GO
INSERT [dbo].[Videos] ([ID], [Name], [Points], [Year], [Copies], [ReleasedBy], [RentalCost]) VALUES (1, N'Hum Tum', N'6', 1990, 5, N'Kamal', 2)
GO
SET IDENTITY_INSERT [dbo].[Videos] OFF
GO
USE [master]
GO
ALTER DATABASE [VideoRental_Gurmukh] SET  READ_WRITE 
GO
