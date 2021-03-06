USE master
GO
CREATE DATABASE Thi60
GO
USE [Thi60]
GO
/****** Object:  Table [dbo].[Cat]    Script Date: 6/6/2018 5:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cat](
	[CatID] [int] NOT NULL,
	[CatName] [nvarchar](50) NULL,
	[CatDes] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Cat] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pro]    Script Date: 6/6/2018 5:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pro](
	[ProID] [int] NOT NULL,
	[ProName] [nvarchar](50) NULL,
	[ProDes] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[CatID] [int] NULL,
 CONSTRAINT [fk_PK_ID] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cat] ([CatID], [CatName], [CatDes], [Status]) VALUES (1, N'Máy bộ', N'Máy bộ cho gia đình', 1)
GO
INSERT [dbo].[Cat] ([CatID], [CatName], [CatDes], [Status]) VALUES (2, N'Laptop', N'Máy tính xách tay thời tràn', 2)
GO
INSERT [dbo].[Cat] ([CatID], [CatName], [CatDes], [Status]) VALUES (3, N'Máy MP3, M4', N'Máy nghe nhạc thời trang', 1)
GO
INSERT [dbo].[Cat] ([CatID], [CatName], [CatDes], [Status]) VALUES (4, N'Máy scan', N'Máy scan chất lượng cao', 2)
GO
INSERT [dbo].[Cat] ([CatID], [CatName], [CatDes], [Status]) VALUES (5, N'Máy in ', N'Máy in giành cho gia đình và các công ty', 1)
GO
INSERT [dbo].[Cat] ([CatID], [CatName], [CatDes], [Status]) VALUES (6, N'Mực in', N'Mực máy in các loại', 2)
GO
INSERT [dbo].[Cat] ([CatID], [CatName], [CatDes], [Status]) VALUES (7, N'Ổ cứng', N'ổ cứng để bàn các loại', 1)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (1, N'Máy bộ 1', N'Máy bộ 1 giành cho gia đình', 1, 1)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (2, N'Máy bộ 2', N'Máy bộ 2 giành cho gia đình', 2, 1)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (3, N'Máy bộ 3', N'Máy bộ 3 giành cho sinh viên', 1, 1)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (4, N'Máy bộ 4', N'Máy bộ 4 giành cho hộ gia đình', 2, 1)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (5, N'Máy bộ 5', N'Máy bộ 5 giành cho học sinh', 1, 1)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (6, N'Laptop 1', N'Laptop thời trang', 1, 2)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (7, N'Laptop 2', N'Laptop giành cho làm việc', 2, 2)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (9, N'Laptop 4', N'lap top dành cho ', 1, 2)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (11, N'Máy in 1', N'Máy in 1 cho 1', 1, 5)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (12, N'Máy In 2', N'Máy in 2 cho 2', 2, 5)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (13, N'Máy MP3', N'Máy Mp 3 cho người sử dụng', 1, 3)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (15, N'Mực in 1', N'Mực in cho máy in 1', 1, 6)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (16, N'Mực in 2', N'Mực in cho máy in 2', 2, 6)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (17, N'Ổ cứng 1', N'Ổ cứng 1 cho máy tính 1', 1, 7)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (18, N'Ổ cứng 1', N'Ổ cứng 2 cho máy tính 2', 2, 7)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (19, N'Máy scan 1', N'máy scan 1 cho lap top 1', 1, 4)
GO
INSERT [dbo].[Pro] ([ProID], [ProName], [ProDes], [Status], [CatID]) VALUES (20, N'Máy scan 2', N'Máy scan 2 cho máy tính 2', 2, 4)
GO
