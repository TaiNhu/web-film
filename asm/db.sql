USE [master]
GO
/****** Object:  Database [asm_java_4]    Script Date: 3/23/2022 9:43:25 PM ******/
CREATE DATABASE [asm_java_4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'asm_java_4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\asm_java_4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'asm_java_4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\asm_java_4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [asm_java_4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [asm_java_4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [asm_java_4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [asm_java_4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [asm_java_4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [asm_java_4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [asm_java_4] SET ARITHABORT OFF 
GO
ALTER DATABASE [asm_java_4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [asm_java_4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [asm_java_4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [asm_java_4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [asm_java_4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [asm_java_4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [asm_java_4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [asm_java_4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [asm_java_4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [asm_java_4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [asm_java_4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [asm_java_4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [asm_java_4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [asm_java_4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [asm_java_4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [asm_java_4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [asm_java_4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [asm_java_4] SET RECOVERY FULL 
GO
ALTER DATABASE [asm_java_4] SET  MULTI_USER 
GO
ALTER DATABASE [asm_java_4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [asm_java_4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [asm_java_4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [asm_java_4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [asm_java_4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [asm_java_4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'asm_java_4', N'ON'
GO
ALTER DATABASE [asm_java_4] SET QUERY_STORE = OFF
GO
USE [asm_java_4]
GO
/****** Object:  Table [dbo].[favorites]    Script Date: 3/23/2022 9:43:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favorites](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [varchar](55) NULL,
	[videoId] [varchar](55) NULL,
	[likeDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[share]    Script Date: 3/23/2022 9:43:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[share](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [varchar](55) NULL,
	[videoId] [varchar](55) NULL,
	[email] [varchar](100) NULL,
	[shareDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/23/2022 9:43:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [varchar](55) NOT NULL,
	[password] [varchar](55) NULL,
	[email] [varchar](100) NULL,
	[fullname] [nvarchar](100) NULL,
	[admin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[videos]    Script Date: 3/23/2022 9:43:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[videos](
	[id] [varchar](55) NOT NULL,
	[title] [nvarchar](55) NULL,
	[poster] [varchar](100) NULL,
	[views] [int] NULL,
	[description] [nvarchar](100) NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[favorites] ON 

INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (83, N'hehe', N'5', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (96, N'hehe', N'6', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (98, N'hehe', N'4', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (138, N'hehe', N'15', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (139, N'hehe', N'2', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (140, N'hehe', N'3', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (141, N'hehe', N'13', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (143, N'hehe', N'14', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (144, N'hehe', N'7', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (145, N'hehe', N'9', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (147, N'hehe', N'11', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (150, N'taitai', N'10', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (151, N'taitai', N'11', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (152, N'taitai', N'12', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (153, N'taitai', N'13', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (154, N'taitai', N'14', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (155, N'taitai', N'6', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (156, N'taitai', N'5', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (157, N'taitai', N'4', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (158, N'taitai', N'3', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (159, N'taitai', N'2', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (160, N'taitai', N'15', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (161, N'taitai', N'7', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (162, N'taitai', N'8', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (167, N'test10', N'4', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (168, N'test10', N'2', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (169, N'test10', N'12', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (170, N'test10', N'11', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (172, N'test10', N'14', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (173, N'test10', N'5', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (183, N'test1', N'10', CAST(N'2022-02-24' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (237, N'test1', N'11', CAST(N'2022-02-24' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (238, N'test1', N'4', CAST(N'2022-02-24' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (239, N'test2', N'13', CAST(N'2022-02-27' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (240, N'test2', N'12', CAST(N'2022-02-27' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (241, N'test2', N'5', CAST(N'2022-02-27' AS Date))
INSERT [dbo].[favorites] ([id], [userId], [videoId], [likeDate]) VALUES (242, N'test2', N'7', CAST(N'2022-02-27' AS Date))
SET IDENTITY_INSERT [dbo].[favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[share] ON 

INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1008, N'nhutai', N'11', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1009, N'nhutai', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1010, N'nhutai', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1011, N'test1', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1012, N'test1', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1013, N'test1', N'11', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1014, N'test1', N'11', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1015, N'test2', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1016, N'test2', N'3', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1017, N'test2', N'11', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1018, N'test2', N'11', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1019, N'nhutai', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1020, N'nhutai', N'12', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1021, N'nhutai', N'11', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1023, N'test2', N'11', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1025, N'nhutai', N'11', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1026, N'test2', N'10', N'tanpha01677@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1027, N'test2', N'4', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1028, N'test3', N'6', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1029, N'test3', N'8', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1033, N'test1', N'11', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1034, N'test1', N'8', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1035, N'test2', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1036, N'test3', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1037, N'test3', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1038, N'test1', N'3', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1039, N'test3', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1040, N'test2', N'11', N'tanpha01677@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1041, N'test2', N'11', N'tanpha01677@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1042, N'test3', N'11', N'storagefilm102@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1043, N'test3', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1044, N'test1', N'11', N'tanpha01677@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1046, N'test3', N'3', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1047, N'test1', N'10', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1048, N'test3', N'3', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1050, N'test3', N'10', N'nhutai1302@gmail.com', CAST(N'2022-02-21' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1053, N'test1', N'9', N'nhutai1302@gmail.com', CAST(N'2022-02-22' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1054, N'test1', N'9', N'tanpha01677@gmail.com', CAST(N'2022-02-22' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1055, N'test1', N'5', N'phamtrannamkha3005@gmail.com', CAST(N'2022-02-22' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1056, N'hehe', N'10', N'giangcho@gmail.com', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1057, N'hehe', N'12', N'meocandam@gmail.com', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1058, N'test1', N'11', N'tanpha01677@gmail.com', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1059, N'test1', N'12', N'tanpha01677@gmail.com', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1060, N'test1', N'11', N'tanpha01677@gmail.com', CAST(N'2022-02-23' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1061, N'dung', N'3', N'hieudung2001@gmail.com', CAST(N'2022-02-24' AS Date))
INSERT [dbo].[share] ([id], [userId], [videoId], [email], [shareDate]) VALUES (1062, N'test1', N'4', N'tainnps19064@fpt.edu.vn', CAST(N'2022-02-24' AS Date))
SET IDENTITY_INSERT [dbo].[share] OFF
GO
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'admin', N'nhutai1302', N'tainnps19064@fpt.edu.vn', N'Admin', 1)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'dung', N'123', N'hieudung2001@gmail.com', N'le dung', 0)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'hehe', N'123', N'vl@gmail.com', N'tai', 0)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'nhutai', N'nhutai1302', N'tanpha01677@gmail.com', N'Nguye Nhu Tai', 0)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'tainhu', N'123', N'taitai@gmail.com', N'ten thi sao', 0)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'taitai', N'123', N'tattai@gmail.com', N'taitai', 0)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'test1', N'nhutai1302', N'tainnps19064@fpt.edu.vn', N'ttttttai', 0)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'test10', N'123', N'tai@gmail.com', N'fdsfdf', 0)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'test2', N'nhutai1302', N'tainnps19064@fpt.edu.vn', N'Tai Nhu', 0)
INSERT [dbo].[users] ([id], [password], [email], [fullname], [admin]) VALUES (N'test3', N'nhutai1302', N'storagefilm102@gmail.com', N'ten gi cung duoc', 0)
GO
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'10', N'Sự Thật', N'video10.jpg', 12, N'https://www.youtube.com/embed/lpyz4Ns1A-I', 1)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'11', N'Kinh dị', N'yourname.png', 27, N'https://www.youtube.com/embed/pbDYKBMp2Qs', 1)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'12', N'Nhạc', N'video12.jpg', 23, N'https://www.youtube.com/embed/cHcD1LcmxfA', 1)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'13', N'Nhạc', N'Your Name on Mei Yui.jpg', 5, N'https://www.youtube.com/embed/y3tsJ4r54PA', 0)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'14', N'Nhạc', N'shelter.png', 7, N'https://www.youtube.com/embed/FgRAn-loWi4', 1)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'15', N'Nhạc', N'video14.jpg', 15, N'https://www.youtube.com/embed/U-lpEo64JZo', 0)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'2', N'Sự Thật', N'video2.jpg', 5, N'https://www.youtube.com/embed/3te6TZztQ00', 0)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'3', N'Sự thật', N'video3.jpg', 7, N'https://www.youtube.com/embed/pTxQw1Q9CWw', 0)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'4', N'Review sản phẩm', N'video4.jpg', 6, N'https://www.youtube.com/embed/uYMiSDeAiv4', 0)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'5', N'Review sản phẩm', N'video5.jpg', 9, N'https://www.youtube.com/embed/2h7lw8-7QnA', 1)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'6', N'Kinh dị', N'video6.jpg', 4, N'https://www.youtube.com/embed/lgXSzX0tX04', 0)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'7', N'Sự thật', N'video7.jpg', 1, N'https://www.youtube.com/embed/Ebqv9OAxVEI', 0)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'8', N'Kinh dị', N'video8.jpg', 9, N'https://www.youtube.com/embed/k4hVEqszZBs', 1)
INSERT [dbo].[videos] ([id], [title], [poster], [views], [description], [active]) VALUES (N'9', N'Nhạc', N'yourname.png', 2, N'https://www.youtube.com/embed/w6eWno3iAjk', 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni]    Script Date: 3/23/2022 9:43:26 PM ******/
ALTER TABLE [dbo].[favorites] ADD  CONSTRAINT [uni] UNIQUE NONCLUSTERED 
(
	[userId] ASC,
	[videoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[favorites]  WITH CHECK ADD  CONSTRAINT [FK__favorites__userI__286302EC] FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[favorites] CHECK CONSTRAINT [FK__favorites__userI__286302EC]
GO
ALTER TABLE [dbo].[favorites]  WITH CHECK ADD  CONSTRAINT [FK__favorites__video__29572725] FOREIGN KEY([videoId])
REFERENCES [dbo].[videos] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[favorites] CHECK CONSTRAINT [FK__favorites__video__29572725]
GO
ALTER TABLE [dbo].[share]  WITH CHECK ADD  CONSTRAINT [FK__share__userId__2C3393D0] FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[share] CHECK CONSTRAINT [FK__share__userId__2C3393D0]
GO
ALTER TABLE [dbo].[share]  WITH CHECK ADD  CONSTRAINT [FK__share__videoId__2D27B809] FOREIGN KEY([videoId])
REFERENCES [dbo].[videos] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[share] CHECK CONSTRAINT [FK__share__videoId__2D27B809]
GO
/****** Object:  StoredProcedure [dbo].[spMostLikeVideo]    Script Date: 3/23/2022 9:43:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spMostLikeVideo] 
as
begin
	select videos.id, videos.title, count(favorites.id) from videos inner join favorites on favorites.videoId = videos.id group by videos.id, videos.title order by count(favorites.id) desc
end;
GO
/****** Object:  StoredProcedure [dbo].[spMostShareVideo]    Script Date: 3/23/2022 9:43:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spMostShareVideo]
as
begin
	select videos.id, videos.title, count(share.id) from videos inner join share on share.videoId = videos.id group by videos.id, videos.title order by count(share.id) desc
end;
GO
/****** Object:  StoredProcedure [dbo].[spMostViewVideo]    Script Date: 3/23/2022 9:43:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spMostViewVideo]
as
begin
	select videos.id, videos.title, videos.views from videos order by views desc
end;
GO
USE [master]
GO
ALTER DATABASE [asm_java_4] SET  READ_WRITE 
GO
