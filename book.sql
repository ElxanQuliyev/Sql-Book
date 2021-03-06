USE [NewBook]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 5/9/2019 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_to_Janr]    Script Date: 5/9/2019 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_to_Janr](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Book_id] [int] NULL,
	[Janr_id] [int] NULL,
 CONSTRAINT [PK_Book_to_Janr] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_to_Readers]    Script Date: 5/9/2019 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_to_Readers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [int] NULL,
	[reader_id] [int] NULL,
 CONSTRAINT [PK_Book_to_Readers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 5/9/2019 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Count] [int] NULL,
	[author_id] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 5/9/2019 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Janr]    Script Date: 5/9/2019 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Janr](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[Janr_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Janr] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers]    Script Date: 5/9/2019 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Faculty_id] [int] NULL,
 CONSTRAINT [PK_Readers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (1, N'Omer Xeyyam')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (2, N'Nizami Gencevi')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (3, N'Elshen Xezer')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (4, N'Resad Dagli')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (5, N'Memmed Mashennik')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (6, N'Sebine Asadzade')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (7, N'Marks Evil')
SET IDENTITY_INSERT [dbo].[Authors] OFF
SET IDENTITY_INSERT [dbo].[Book_to_Readers] ON 

INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (1, 1, 3)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (2, 3, 4)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (3, 2, 5)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (4, 6, 7)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (5, 4, 1)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (6, 5, 5)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (7, 3, 1)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (8, 6, 3)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (10, 4, 2)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (11, 3, 6)
INSERT [dbo].[Book_to_Readers] ([Id], [book_id], [reader_id]) VALUES (12, 3, 5)
SET IDENTITY_INSERT [dbo].[Book_to_Readers] OFF
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (1, N'Maşenikliye geden Yol', 1, 5)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (2, N'Xemse', 20, 2)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (3, N'Meyxana', 3, 6)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (4, N'Qara Dervis', 6, 3)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (5, N'Kisiler Marsdan Qadinlar Veneradan', 7, 7)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (6, N'Düşün ve Varlan', 12, 4)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (7, N'Sennen once men', 8, 6)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (8, N'asdasd', 22, 2)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (9, N'asdasdas', 22, 5)
INSERT [dbo].[Books] ([Id], [Name], [Count], [author_id]) VALUES (10, N'Kitab', 6, 1)
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Readers] ON 

INSERT [dbo].[Readers] ([Id], [FullName], [Email], [Age], [Faculty_id]) VALUES (1, N'Ruslan Eyvazov', N'ruslan@gmail.comn', 24, NULL)
INSERT [dbo].[Readers] ([Id], [FullName], [Email], [Age], [Faculty_id]) VALUES (2, N'Nezrin Musavi', N'nezrin@gmail.com', 23, NULL)
INSERT [dbo].[Readers] ([Id], [FullName], [Email], [Age], [Faculty_id]) VALUES (3, N'Mashennik Atanshikov', N'masennik@gmail.com', 66, NULL)
INSERT [dbo].[Readers] ([Id], [FullName], [Email], [Age], [Faculty_id]) VALUES (4, N'Vaqif Israfilov', N'vaqif@gmail.com', 19, NULL)
INSERT [dbo].[Readers] ([Id], [FullName], [Email], [Age], [Faculty_id]) VALUES (5, N'Sultan Kerimov', N'sultan@gmail.com', 18, NULL)
INSERT [dbo].[Readers] ([Id], [FullName], [Email], [Age], [Faculty_id]) VALUES (6, N'Arzu', N'arzu@gmail.com', 17, NULL)
INSERT [dbo].[Readers] ([Id], [FullName], [Email], [Age], [Faculty_id]) VALUES (7, N'Xanim Melikov', N'xanim@gmail.com', 21, NULL)
SET IDENTITY_INSERT [dbo].[Readers] OFF
ALTER TABLE [dbo].[Book_to_Janr]  WITH CHECK ADD  CONSTRAINT [FK_Book_to_Janr_Books] FOREIGN KEY([Book_id])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Book_to_Janr] CHECK CONSTRAINT [FK_Book_to_Janr_Books]
GO
ALTER TABLE [dbo].[Book_to_Janr]  WITH CHECK ADD  CONSTRAINT [FK_Book_to_Janr_Janr] FOREIGN KEY([Janr_id])
REFERENCES [dbo].[Janr] ([İd])
GO
ALTER TABLE [dbo].[Book_to_Janr] CHECK CONSTRAINT [FK_Book_to_Janr_Janr]
GO
ALTER TABLE [dbo].[Book_to_Readers]  WITH CHECK ADD  CONSTRAINT [FK_Book_to_Readers_Books] FOREIGN KEY([book_id])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Book_to_Readers] CHECK CONSTRAINT [FK_Book_to_Readers_Books]
GO
ALTER TABLE [dbo].[Book_to_Readers]  WITH CHECK ADD  CONSTRAINT [FK_Book_to_Readers_Readers] FOREIGN KEY([reader_id])
REFERENCES [dbo].[Readers] ([Id])
GO
ALTER TABLE [dbo].[Book_to_Readers] CHECK CONSTRAINT [FK_Book_to_Readers_Readers]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([author_id])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Readers]  WITH CHECK ADD  CONSTRAINT [FK_Readers_Faculty] FOREIGN KEY([Faculty_id])
REFERENCES [dbo].[Faculty] ([İd])
GO
ALTER TABLE [dbo].[Readers] CHECK CONSTRAINT [FK_Readers_Faculty]
GO
