/* Check if database already exists and delete it if it does exist*/
IF EXISTS(SELECT 1 FROM master.dbo.sysdatabases WHERE name = 'MusicSales') 
BEGIN
DROP DATABASE MusicSales
END
GO

CREATE DATABASE MusicSales
GO

USE [MusicSales]
GO

/****** Object:  Table [dbo].[Artist]    Script Date: 23/04/2014 16:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists](
	[Artist] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Sales] [money] NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[Artist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Companies]    Script Date: 23/04/2014 16:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Company] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Artists] ([Artist], [Company], [Sales]) VALUES (N'Assignment 182', N'Media Ltd', 34.6000)
INSERT [dbo].[Artists] ([Artist], [Company], [Sales]) VALUES (N'Mike Parr', N'Media Ltd', 3.5000)
INSERT [dbo].[Artists] ([Artist], [Company], [Sales]) VALUES (N'RadioStar', N'ABC Co', 22.7000)
INSERT [dbo].[Artists] ([Artist], [Company], [Sales]) VALUES (N'The Objects', N'Class UK', 12.6000)
INSERT [dbo].[Artists] ([Artist], [Company], [Sales]) VALUES (N'The Trees', N'United Co', 3.7200)
INSERT [dbo].[Artists] ([Artist], [Company], [Sales]) VALUES (N'The Visuals', N'ABC Co', 0.0000)
INSERT [dbo].[Companies] ([Company], [Location]) VALUES (N'ABC Co', N'London')
INSERT [dbo].[Companies] ([Company], [Location]) VALUES (N'Class UK', N'Madrid')
INSERT [dbo].[Companies] ([Company], [Location]) VALUES (N'Media Ltd', N'Chicago')
INSERT [dbo].[Companies] ([Company], [Location]) VALUES (N'United Co', N'London')
USE [master]
GO
ALTER DATABASE [MusicSales] SET  READ_WRITE 
GO
