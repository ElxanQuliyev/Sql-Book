USE [Libaries]
GO
/****** Object:  Table [dbo].[Authority]    Script Date: 5/9/2019 10:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_to_Genres]    Script Date: 5/9/2019 10:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_to_Genres](
	[Book_id] [int] NULL,
	[Genres_Id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 5/9/2019 10:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreateDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books_to_authority]    Script Date: 5/9/2019 10:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books_to_authority](
	[Authority_id] [int] NOT NULL,
	[Book_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 5/9/2019 10:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 5/9/2019 10:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GENRES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers]    Script Date: 5/9/2019 10:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[facultyID] [int] NULL,
 CONSTRAINT [PK_READERS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers_to_Book]    Script Date: 5/9/2019 10:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers_to_Book](
	[Reader_id] [int] NOT NULL,
	[Book_id] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authority] ON 

INSERT [dbo].[Authority] ([Id], [Name]) VALUES (1, N'Nizami Gencevi')
INSERT [dbo].[Authority] ([Id], [Name]) VALUES (2, N'Xalid Huseyn')
INSERT [dbo].[Authority] ([Id], [Name]) VALUES (3, N'Memmed Israfilov')
INSERT [dbo].[Authority] ([Id], [Name]) VALUES (4, N'Dasdayevski')
INSERT [dbo].[Authority] ([Id], [Name]) VALUES (5, N'Qaraqan')
INSERT [dbo].[Authority] ([Id], [Name]) VALUES (6, N'Lazim Felesof')
INSERT [dbo].[Authority] ([Id], [Name]) VALUES (7, N'Musfiq')
SET IDENTITY_INSERT [dbo].[Authority] OFF
INSERT [dbo].[Book_to_Genres] ([Book_id], [Genres_Id]) VALUES (1, 2)
INSERT [dbo].[Book_to_Genres] ([Book_id], [Genres_Id]) VALUES (2, 1)
INSERT [dbo].[Book_to_Genres] ([Book_id], [Genres_Id]) VALUES (3, 5)
INSERT [dbo].[Book_to_Genres] ([Book_id], [Genres_Id]) VALUES (4, 3)
INSERT [dbo].[Book_to_Genres] ([Book_id], [Genres_Id]) VALUES (6, 1)
INSERT [dbo].[Book_to_Genres] ([Book_id], [Genres_Id]) VALUES (8, 1)
INSERT [dbo].[Book_to_Genres] ([Book_id], [Genres_Id]) VALUES (9, 2)
INSERT [dbo].[Book_to_Genres] ([Book_id], [Genres_Id]) VALUES (10, 1)
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Name], [CreateDate]) VALUES (1, N'Harry Poter', CAST(N'2017-05-04' AS Date))
INSERT [dbo].[Books] ([Id], [Name], [CreateDate]) VALUES (2, N'Leyli ve Mecnun', CAST(N'1995-05-06' AS Date))
INSERT [dbo].[Books] ([Id], [Name], [CreateDate]) VALUES (3, N'Cerpeleng Ucuran', CAST(N'2015-08-06' AS Date))
INSERT [dbo].[Books] ([Id], [Name], [CreateDate]) VALUES (4, N'Gunahkar Bende', CAST(N'2014-04-07' AS Date))
INSERT [dbo].[Books] ([Id], [Name], [CreateDate]) VALUES (6, N'Suc ve Ceza', CAST(N'2014-12-05' AS Date))
INSERT [dbo].[Books] ([Id], [Name], [CreateDate]) VALUES (8, N'Birinci Addim', CAST(N'2012-03-01' AS Date))
INSERT [dbo].[Books] ([Id], [Name], [CreateDate]) VALUES (9, N'Ali ve Nino', CAST(N'1998-10-04' AS Date))
INSERT [dbo].[Books] ([Id], [Name], [CreateDate]) VALUES (10, N'Robin Hood', CAST(N'1997-05-02' AS Date))
SET IDENTITY_INSERT [dbo].[Books] OFF
INSERT [dbo].[Books_to_authority] ([Authority_id], [Book_id]) VALUES (1, 2)
INSERT [dbo].[Books_to_authority] ([Authority_id], [Book_id]) VALUES (2, 3)
INSERT [dbo].[Books_to_authority] ([Authority_id], [Book_id]) VALUES (3, 4)
INSERT [dbo].[Books_to_authority] ([Authority_id], [Book_id]) VALUES (4, 6)
INSERT [dbo].[Books_to_authority] ([Authority_id], [Book_id]) VALUES (5, 8)
INSERT [dbo].[Books_to_authority] ([Authority_id], [Book_id]) VALUES (7, 9)
SET IDENTITY_INSERT [dbo].[Faculty] ON 

INSERT [dbo].[Faculty] ([Id], [Name]) VALUES (1, N'Muhendislik')
INSERT [dbo].[Faculty] ([Id], [Name]) VALUES (2, N'IT')
INSERT [dbo].[Faculty] ([Id], [Name]) VALUES (3, N'Computer Science')
INSERT [dbo].[Faculty] ([Id], [Name]) VALUES (4, N'Biznes Admistration ')
INSERT [dbo].[Faculty] ([Id], [Name]) VALUES (5, N'Economy')
SET IDENTITY_INSERT [dbo].[Faculty] OFF
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (1, N'Roman')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (2, N'Dastan')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (3, N'Detektiv')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (4, N'Romantic')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (5, N'Fantastik')
INSERT [dbo].[Readers] ([Id], [Name], [Surname], [Email], [facultyID]) VALUES (1, N'Memmed', N'Hesenov', N'memmed@gmail.com', 1)
INSERT [dbo].[Readers] ([Id], [Name], [Surname], [Email], [facultyID]) VALUES (2, N'Sebine ', N'Asadzade', N'sabina@gmail.com', 2)
INSERT [dbo].[Readers] ([Id], [Name], [Surname], [Email], [facultyID]) VALUES (3, N'Resul', N'Ibadzade', N'resul@gmail.com', 3)
INSERT [dbo].[Readers] ([Id], [Name], [Surname], [Email], [facultyID]) VALUES (4, N'Daskesen', N'Imanov', N'daskesen@gmail.com', 4)
INSERT [dbo].[Readers] ([Id], [Name], [Surname], [Email], [facultyID]) VALUES (5, N'Rafiq', N'Isazade', N'rafiq@gmail.com', 5)
INSERT [dbo].[Readers_to_Book] ([Reader_id], [Book_id]) VALUES (3, 1)
INSERT [dbo].[Readers_to_Book] ([Reader_id], [Book_id]) VALUES (2, 3)
INSERT [dbo].[Readers_to_Book] ([Reader_id], [Book_id]) VALUES (4, 6)
INSERT [dbo].[Readers_to_Book] ([Reader_id], [Book_id]) VALUES (3, 8)
INSERT [dbo].[Readers_to_Book] ([Reader_id], [Book_id]) VALUES (5, 10)
INSERT [dbo].[Readers_to_Book] ([Reader_id], [Book_id]) VALUES (1, 4)
ALTER TABLE [dbo].[Book_to_Genres]  WITH CHECK ADD  CONSTRAINT [Book_to_Genres_fk0] FOREIGN KEY([Book_id])
REFERENCES [dbo].[Books] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Book_to_Genres] CHECK CONSTRAINT [Book_to_Genres_fk0]
GO
ALTER TABLE [dbo].[Book_to_Genres]  WITH CHECK ADD  CONSTRAINT [Book_to_Genres_fk1] FOREIGN KEY([Genres_Id])
REFERENCES [dbo].[Genres] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Book_to_Genres] CHECK CONSTRAINT [Book_to_Genres_fk1]
GO
ALTER TABLE [dbo].[Books_to_authority]  WITH CHECK ADD  CONSTRAINT [Books_to_authority_fk0] FOREIGN KEY([Authority_id])
REFERENCES [dbo].[Authority] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Books_to_authority] CHECK CONSTRAINT [Books_to_authority_fk0]
GO
ALTER TABLE [dbo].[Books_to_authority]  WITH CHECK ADD  CONSTRAINT [Books_to_authority_fk1] FOREIGN KEY([Book_id])
REFERENCES [dbo].[Books] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Books_to_authority] CHECK CONSTRAINT [Books_to_authority_fk1]
GO
ALTER TABLE [dbo].[Readers]  WITH CHECK ADD FOREIGN KEY([facultyID])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Readers_to_Book]  WITH CHECK ADD  CONSTRAINT [Readers_to_Book_fk0] FOREIGN KEY([Reader_id])
REFERENCES [dbo].[Readers] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Readers_to_Book] CHECK CONSTRAINT [Readers_to_Book_fk0]
GO
ALTER TABLE [dbo].[Readers_to_Book]  WITH CHECK ADD  CONSTRAINT [Readers_to_Book_fk1] FOREIGN KEY([Book_id])
REFERENCES [dbo].[Books] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Readers_to_Book] CHECK CONSTRAINT [Readers_to_Book_fk1]
GO
