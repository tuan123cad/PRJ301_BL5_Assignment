USE [SchoolTimeKeeper]
GO
ALTER TABLE [dbo].[Waiting Line Acp] DROP CONSTRAINT [FK_Waiting Line Acp_Account]
GO
ALTER TABLE [dbo].[Time Slot Detail] DROP CONSTRAINT [FK_Time Slot Detail_Time Slot]
GO
ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [FK_Teacher_Teacher Status]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_Time Slot]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_Teacher]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_Semester]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_Room]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_Class]
GO
ALTER TABLE [dbo].[Role Feature] DROP CONSTRAINT [FK_Role Feature_Role]
GO
ALTER TABLE [dbo].[Role Feature] DROP CONSTRAINT [FK_Role Feature_Feature]
GO
ALTER TABLE [dbo].[Role Account] DROP CONSTRAINT [FK_Role Account_Role]
GO
ALTER TABLE [dbo].[Role Account] DROP CONSTRAINT [FK_Role Account_Account]
GO
ALTER TABLE [dbo].[Request] DROP CONSTRAINT [FK_Request_Type Request]
GO
ALTER TABLE [dbo].[Request] DROP CONSTRAINT [FK_Request_Request Status]
GO
ALTER TABLE [dbo].[Request] DROP CONSTRAINT [FK_Request_Account1]
GO
ALTER TABLE [dbo].[Request] DROP CONSTRAINT [FK_Request_Account]
GO
ALTER TABLE [dbo].[Linking Teacher Subject] DROP CONSTRAINT [FK_Linking Teacher Subject_Group Teacher]
GO
ALTER TABLE [dbo].[Linking Teacher Subject] DROP CONSTRAINT [FK_Linking Teacher Subject_Group Subject]
GO
ALTER TABLE [dbo].[Linking Teacher Group] DROP CONSTRAINT [FK_Linking Teacher Group_Teacher]
GO
ALTER TABLE [dbo].[Linking Teacher Group] DROP CONSTRAINT [FK_Linking Teacher Group_Group Teacher]
GO
ALTER TABLE [dbo].[Linking Subject Group] DROP CONSTRAINT [FK_Linking Subject Group_Subject]
GO
ALTER TABLE [dbo].[Linking Subject Group] DROP CONSTRAINT [FK_Linking Subject Group_Group Subject]
GO
ALTER TABLE [dbo].[Class] DROP CONSTRAINT [FK_Class_Semester]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Teacher]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Question]
GO
/****** Object:  Index [IX_Account_Username]    Script Date: 18/08/22 19:34:59 ******/
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [IX_Account_Username]
GO
/****** Object:  Index [IX_Account_TeacherId]    Script Date: 18/08/22 19:34:59 ******/
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [IX_Account_TeacherId]
GO
/****** Object:  Table [dbo].[Waiting Line Acp]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Waiting Line Acp]') AND type in (N'U'))
DROP TABLE [dbo].[Waiting Line Acp]
GO
/****** Object:  Table [dbo].[Type Request]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Type Request]') AND type in (N'U'))
DROP TABLE [dbo].[Type Request]
GO
/****** Object:  Table [dbo].[Time Slot Detail]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Time Slot Detail]') AND type in (N'U'))
DROP TABLE [dbo].[Time Slot Detail]
GO
/****** Object:  Table [dbo].[Time Slot]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Time Slot]') AND type in (N'U'))
DROP TABLE [dbo].[Time Slot]
GO
/****** Object:  Table [dbo].[Teacher Status]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher Status]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher Status]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subject]') AND type in (N'U'))
DROP TABLE [dbo].[Subject]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Semester]') AND type in (N'U'))
DROP TABLE [dbo].[Semester]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Schedule]') AND type in (N'U'))
DROP TABLE [dbo].[Schedule]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room]') AND type in (N'U'))
DROP TABLE [dbo].[Room]
GO
/****** Object:  Table [dbo].[Role Feature]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role Feature]') AND type in (N'U'))
DROP TABLE [dbo].[Role Feature]
GO
/****** Object:  Table [dbo].[Role Account]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role Account]') AND type in (N'U'))
DROP TABLE [dbo].[Role Account]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Request Status]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Request Status]') AND type in (N'U'))
DROP TABLE [dbo].[Request Status]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Request]') AND type in (N'U'))
DROP TABLE [dbo].[Request]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
DROP TABLE [dbo].[Question]
GO
/****** Object:  Table [dbo].[Linking Teacher Subject]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Linking Teacher Subject]') AND type in (N'U'))
DROP TABLE [dbo].[Linking Teacher Subject]
GO
/****** Object:  Table [dbo].[Linking Teacher Group]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Linking Teacher Group]') AND type in (N'U'))
DROP TABLE [dbo].[Linking Teacher Group]
GO
/****** Object:  Table [dbo].[Linking Subject Group]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Linking Subject Group]') AND type in (N'U'))
DROP TABLE [dbo].[Linking Subject Group]
GO
/****** Object:  Table [dbo].[Group Teacher]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[Group Teacher]
GO
/****** Object:  Table [dbo].[Group Subject]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group Subject]') AND type in (N'U'))
DROP TABLE [dbo].[Group Subject]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feature]') AND type in (N'U'))
DROP TABLE [dbo].[Feature]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Class]') AND type in (N'U'))
DROP TABLE [dbo].[Class]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 18/08/22 19:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
USE [master]
GO
/****** Object:  Database [SchoolTimeKeeper]    Script Date: 18/08/22 19:34:59 ******/
DROP DATABASE [SchoolTimeKeeper]
GO
/****** Object:  Database [SchoolTimeKeeper]    Script Date: 18/08/22 19:34:59 ******/
CREATE DATABASE [SchoolTimeKeeper]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchoolTimeKeeper', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SchoolTimeKeeper.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SchoolTimeKeeper_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SchoolTimeKeeper_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SchoolTimeKeeper] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolTimeKeeper].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolTimeKeeper] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolTimeKeeper] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchoolTimeKeeper] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SchoolTimeKeeper] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchoolTimeKeeper] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET RECOVERY FULL 
GO
ALTER DATABASE [SchoolTimeKeeper] SET  MULTI_USER 
GO
ALTER DATABASE [SchoolTimeKeeper] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchoolTimeKeeper] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchoolTimeKeeper] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchoolTimeKeeper] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SchoolTimeKeeper] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SchoolTimeKeeper] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SchoolTimeKeeper', N'ON'
GO
ALTER DATABASE [SchoolTimeKeeper] SET QUERY_STORE = OFF
GO
USE [SchoolTimeKeeper]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[teaid] [int] NULL,
	[qid] [int] NOT NULL,
	[answer] [text] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[className] [nvarchar](50) NOT NULL,
	[semId] [int] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group Subject]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group Subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Group Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group Teacher]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group Teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Group Teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linking Subject Group]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linking Subject Group](
	[groupSuId] [int] NOT NULL,
	[subjectId] [int] NOT NULL,
 CONSTRAINT [PK_Linking Subject Group] PRIMARY KEY CLUSTERED 
(
	[groupSuId] ASC,
	[subjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linking Teacher Group]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linking Teacher Group](
	[groupTeId] [int] NOT NULL,
	[teaId] [int] NOT NULL,
 CONSTRAINT [PK_Linking Teacher Group] PRIMARY KEY CLUSTERED 
(
	[groupTeId] ASC,
	[teaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linking Teacher Subject]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linking Teacher Subject](
	[groupTeId] [int] NOT NULL,
	[groupSuId] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Linking Teacher Subject] PRIMARY KEY CLUSTERED 
(
	[groupTeId] ASC,
	[groupSuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeId] [int] NOT NULL,
	[from] [date] NOT NULL,
	[to] [date] NOT NULL,
	[note] [text] NOT NULL,
	[accId] [int] NOT NULL,
	[statusId] [int] NOT NULL,
	[alterAccId] [int] NOT NULL,
	[approveAccId] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request Status]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Request Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role Account]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role Account](
	[roleId] [int] NOT NULL,
	[accId] [int] NOT NULL,
 CONSTRAINT [PK_Role Account] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC,
	[accId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role Feature]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role Feature](
	[roleId] [int] NOT NULL,
	[feaId] [int] NOT NULL,
 CONSTRAINT [PK_Role Feature] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC,
	[feaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[teaId] [int] NOT NULL,
	[roomId] [int] NOT NULL,
	[classId] [int] NOT NULL,
	[timeId] [int] NOT NULL,
	[semId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[semNum] [int] NOT NULL,
	[semName] [nvarchar](150) NOT NULL,
	[semStart] [date] NOT NULL,
	[semEnd] [date] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[codeName] [nchar](10) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[birthday] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[avatar] [text] NOT NULL,
	[joindate] [date] NOT NULL,
	[statusId] [int] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher Status]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nchar](100) NULL,
 CONSTRAINT [PK_Teacher Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time Slot]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time Slot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isActive] [bit] NOT NULL,
	[from] [nchar](10) NOT NULL,
	[to] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Time Slot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time Slot Detail]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time Slot Detail](
	[timeSlotId] [int] NOT NULL,
	[start] [int] NOT NULL,
	[end] [int] NOT NULL,
	[isActive] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type Request]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type Request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[percent] [int] NULL,
	[maxday] [int] NOT NULL,
	[note] [text] NULL,
	[isActive] [nchar](10) NULL,
 CONSTRAINT [PK_Type Request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Waiting Line Acp]    Script Date: 18/08/22 19:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Waiting Line Acp](
	[accId] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[type_io] [bit] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [teaid], [qid], [answer]) VALUES (2, N'admin', N'Ad1234', NULL, 1, N'yes')
INSERT [dbo].[Account] ([id], [username], [password], [teaid], [qid], [answer]) VALUES (8, N'tuan123cad', N'Mod123', 1, 1, N'yes')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([id], [content]) VALUES (1, N'Tên bạn có được đặt theo tên của ai không?
')
INSERT [dbo].[Question] ([id], [content]) VALUES (2, N'Bạn có anh chị em không (kể ra)?')
INSERT [dbo].[Question] ([id], [content]) VALUES (3, N'Lần cuối bạn khóc là khi nào?')
INSERT [dbo].[Question] ([id], [content]) VALUES (4, N'Bạn có lần sinh nhật đáng nhớ nào không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (5, N'Bạn yêu thích ngón tay nào nhất?')
INSERT [dbo].[Question] ([id], [content]) VALUES (6, N'Thói quen xấu của bạn?')
INSERT [dbo].[Question] ([id], [content]) VALUES (7, N'Điều bạn nghĩ đến đầu tiên khi thức dậy là gì?')
INSERT [dbo].[Question] ([id], [content]) VALUES (8, N'Bạn có phải là một người ưa mạo hiểm không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (9, N'Bạn có bao giờ nói ra điều gì đó mà bạn hứa là giữ bí mật không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (10, N'Bạn có nghĩ nói dối là xấu không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (11, N'Màu sắc ưa thích của bạn là gì?')
INSERT [dbo].[Question] ([id], [content]) VALUES (12, N'Môn thể thao bạn ưa thích nhất?')
INSERT [dbo].[Question] ([id], [content]) VALUES (13, N'Bạn khoái mặc loại quần áo như thế nào?')
INSERT [dbo].[Question] ([id], [content]) VALUES (14, N'Con số ưa thích?')
INSERT [dbo].[Question] ([id], [content]) VALUES (15, N'Tháng ưa thích?')
INSERT [dbo].[Question] ([id], [content]) VALUES (16, N'Món ăn ưa thích?')
INSERT [dbo].[Question] ([id], [content]) VALUES (17, N'Bạn có biệt danh nào ngoài đời hay không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (18, N'Điều đầu tiên mà bạn chú ý ở một người khác phái là gì?')
INSERT [dbo].[Question] ([id], [content]) VALUES (19, N'Bạn có thể mô tả một người khác phái mà bạn cho là lý tưởng không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (20, N'Bạn có thích chữ viết của bạn không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (21, N'Bạn có dễ dàng tin tưởng vào người khác không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (22, N'Người cuối cùng bạn nói chuyện điện thoại đến lúc này là ai?')
INSERT [dbo].[Question] ([id], [content]) VALUES (23, N'Bạn ghét nhất loại người như thế nào?')
INSERT [dbo].[Question] ([id], [content]) VALUES (24, N'Bạn có bao giờ ước không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (25, N'Bạn có thích ngắm sao không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (26, N'Khi tức giận, bạn làm gì?')
INSERT [dbo].[Question] ([id], [content]) VALUES (27, N'Bạn có khỏe mạnh không?')
INSERT [dbo].[Question] ([id], [content]) VALUES (28, N'Nếu có thể trở thành một người khác, bạn sẽ trở thành ai?')
INSERT [dbo].[Question] ([id], [content]) VALUES (29, N'Loại kem ưa thích bạn hay ăn?')
INSERT [dbo].[Question] ([id], [content]) VALUES (30, N'Thể loại nhạc ưa thích của bạn?')
INSERT [dbo].[Question] ([id], [content]) VALUES (31, N'Bài hát bạn hay nghe gần đây nhất là gì?')
INSERT [dbo].[Question] ([id], [content]) VALUES (32, N'Phim hoạt hình / anime ưa thích của bạn?')
INSERT [dbo].[Question] ([id], [content]) VALUES (33, N'Thể loại phim ưa thích?')
INSERT [dbo].[Question] ([id], [content]) VALUES (34, N'Mùa ưa thích của bạn?')
INSERT [dbo].[Question] ([id], [content]) VALUES (35, N'Ai là người hay nói chuyện điện thoại với bạn nhất?')
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (1, N'Ngữ văn', N'NV        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (2, N'Toán', N'TO        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (3, N'Ngoại ngữ 1', N'NN        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (4, N'Giáo dục công dân', N'CD        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (5, N'Lịch sử', N'LS        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (6, N'Địa lí', N'ĐL        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (7, N'Khoa học tự nhiên', N'KH        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (8, N'Công nghệ', N'CN        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (9, N'Tin học', N'IT        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (10, N'Giáo dục thể chất', N'TD        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (11, N'Mĩ thuật', N'MT        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (12, N'Âm nhạc', N'AN        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (13, N'Hoạt động trải nghiệm, hướng nghiệp', N'HN        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (14, N'Nội dung giáo dục của địa phương', N'ĐP        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (15, N'Ngoài giờ', N'NG        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (16, N'Chào cờ', N'CH        ', 1)
INSERT [dbo].[Subject] ([id], [name], [codeName], [isActive]) VALUES (17, N'Ăn trưa', N'LU        ', 1)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (1, N'Bùi Đức Tuấn', CAST(N'2001-08-17' AS Date), 0, N'img/imgTeaId/null.jpg', CAST(N'2013-08-18' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (2, N'Hoàng Văn Trị', CAST(N'2000-12-16' AS Date), 0, N'img/imgTeaId/(2).jpg', CAST(N'2016-01-20' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (3, N'Mạch Trung Ðức ', CAST(N'1998-08-31' AS Date), 0, N'img/imgTeaId/(3).jpg', CAST(N'2022-04-15' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (4, N'Biện Hải Dương ', CAST(N'1996-12-04' AS Date), 0, N'img/imgTeaId/(4).jpg', CAST(N'2019-10-26' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (5, N'Ngân Trọng Duy ', CAST(N'1999-05-11' AS Date), 0, N'img/imgTeaId/(5).jpg', CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (6, N'Thoa Quang Hải ', CAST(N'1996-09-19' AS Date), 0, N'img/imgTeaId/(6).jpg', CAST(N'2018-11-16' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (7, N'Mầu Chí Hiếu ', CAST(N'1996-07-01' AS Date), 0, N'img/imgTeaId/(7).jpg', CAST(N'2022-02-20' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (8, N'Âu Dương Gia Huấn ', CAST(N'1996-08-15' AS Date), 0, N'img/imgTeaId/(8).jpg', CAST(N'2019-11-29' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (9, N'Mạc Hữu Hùng ', CAST(N'2001-02-25' AS Date), 0, N'img/imgTeaId/(9).jpg', CAST(N'2020-09-09' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (10, N'Kha Khánh Huy ', CAST(N'1996-06-05' AS Date), 0, N'img/imgTeaId/(10).jpg', CAST(N'2018-12-25' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (11, N'Đoạn Bảo Huỳnh ', CAST(N'2000-06-22' AS Date), 1, N'img/imgTeaId/(11).jpg', CAST(N'2021-07-14' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (12, N'Ánh Ðình Lộc ', CAST(N'2001-04-06' AS Date), 0, N'img/imgTeaId/(12).jpg', CAST(N'2018-10-20' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (13, N'Hướng Hùng Phong ', CAST(N'2000-01-24' AS Date), 0, N'img/imgTeaId/(13).jpg', CAST(N'2021-01-21' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (14, N'Thi Tùng Quang ', CAST(N'1998-04-10' AS Date), 1, N'img/imgTeaId/(14).jpg', CAST(N'2021-03-17' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (15, N'Cảnh Minh Sơn ', CAST(N'1999-10-13' AS Date), 0, N'img/imgTeaId/(15).jpg', CAST(N'2021-03-15' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (16, N'Ngạc Phúc Thịnh ', CAST(N'1998-11-16' AS Date), 0, N'img/imgTeaId/(16).jpg', CAST(N'2021-08-27' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (17, N'Quàng Minh Vũ ', CAST(N'1997-12-05' AS Date), 1, N'img/imgTeaId/(17).jpg', CAST(N'2021-12-13' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (18, N'Mai Công Ân ', CAST(N'1996-12-28' AS Date), 0, N'img/imgTeaId/(18).jpg', CAST(N'2021-03-02' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (19, N'Đầu Việt Anh ', CAST(N'1998-10-02' AS Date), 1, N'img/imgTeaId/(19).jpg', CAST(N'2021-08-31' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (20, N'Trịnh Việt Anh ', CAST(N'2001-06-03' AS Date), 1, N'img/imgTeaId/(20).jpg', CAST(N'2019-01-06' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (21, N'Đoàn Ðức Bảo ', CAST(N'1997-06-18' AS Date), 0, N'img/imgTeaId/(21).jpg', CAST(N'2020-05-07' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (22, N'Trình Khánh Bình ', CAST(N'2000-12-05' AS Date), 1, N'img/imgTeaId/(22).jpg', CAST(N'2018-09-28' AS Date), 1)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (23, N'Kiểu Ngọc Đại ', CAST(N'1997-07-13' AS Date), 0, N'img/imgTeaId/(23).jpg', CAST(N'2019-11-06' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (24, N'Lều Kiến Ðức ', CAST(N'2001-03-03' AS Date), 1, N'img/imgTeaId/(24).jpg', CAST(N'2019-11-26' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (25, N'Doãn Thái Ðức ', CAST(N'1997-07-29' AS Date), 0, N'img/imgTeaId/(25).jpg', CAST(N'2018-03-12' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (26, N'Mang Lâm Dũng ', CAST(N'2001-06-24' AS Date), 0, N'img/imgTeaId/(26).jpg', CAST(N'2019-10-03' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (27, N'Lô Tiến Dũng ', CAST(N'2001-09-08' AS Date), 0, N'img/imgTeaId/(27).jpg', CAST(N'2018-01-06' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (28, N'Lường Ðức Duy ', CAST(N'1996-05-21' AS Date), 0, N'img/imgTeaId/(28).jpg', CAST(N'2019-05-03' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (29, N'Trần Thế Duyệt ', CAST(N'2001-01-09' AS Date), 0, N'img/imgTeaId/(29).jpg', CAST(N'2022-03-18' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (30, N'Chung Vương Gia ', CAST(N'1999-12-24' AS Date), 0, N'img/imgTeaId/(30).jpg', CAST(N'2020-01-21' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (31, N'Điền Hòa Giang ', CAST(N'2001-07-22' AS Date), 0, N'img/imgTeaId/(31).jpg', CAST(N'2020-07-03' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (32, N'Cấn Hồng Giang ', CAST(N'1999-11-13' AS Date), 1, N'img/imgTeaId/(32).jpg', CAST(N'2019-03-14' AS Date), 2)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (33, N'Thào Việt Khang ', CAST(N'2000-04-08' AS Date), 1, N'img/imgTeaId/(33).jpg', CAST(N'2020-01-23' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (34, N'Quảng Chí Khiêm ', CAST(N'2000-03-27' AS Date), 1, N'img/imgTeaId/(34).jpg', CAST(N'2021-06-24' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (35, N'Mang Ðăng Khoa ', CAST(N'2000-09-04' AS Date), 1, N'img/imgTeaId/(35).jpg', CAST(N'2019-07-06' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (36, N'Khâu Minh Kỳ ', CAST(N'2000-03-04' AS Date), 0, N'img/imgTeaId/(36).jpg', CAST(N'2021-04-29' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (37, N'Hứa Xuân Hãn ', CAST(N'1996-12-20' AS Date), 0, N'img/imgTeaId/(37).jpg', CAST(N'2021-03-07' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (38, N'H''nia Chí Hiếu ', CAST(N'2000-06-01' AS Date), 0, N'img/imgTeaId/(38).jpg', CAST(N'2020-08-28' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (39, N'Lã Hiệp Hòa ', CAST(N'2000-07-22' AS Date), 0, N'img/imgTeaId/(39).jpg', CAST(N'2019-12-22' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (40, N'Trần Mạnh Hùng ', CAST(N'1996-07-01' AS Date), 1, N'img/imgTeaId/(40).jpg', CAST(N'2022-01-07' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (41, N'Mai Quốc Huy ', CAST(N'2000-02-02' AS Date), 0, N'img/imgTeaId/(41).jpg', CAST(N'2018-06-01' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (42, N'Bế Hữu Lễ ', CAST(N'1998-03-17' AS Date), 0, N'img/imgTeaId/(42).jpg', CAST(N'2021-04-27' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (43, N'Cồ Công Lộc ', CAST(N'1999-04-21' AS Date), 0, N'img/imgTeaId/(43).jpg', CAST(N'2018-12-24' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (44, N'Giang Nhật Nam ', CAST(N'2001-10-23' AS Date), 0, N'img/imgTeaId/(44).jpg', CAST(N'2022-01-29' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (45, N'Ngân Xuân Nam ', CAST(N'2000-06-07' AS Date), 0, N'img/imgTeaId/(45).jpg', CAST(N'2018-11-27' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (46, N'La Ðại Ngọc ', CAST(N'1997-01-19' AS Date), 0, N'img/imgTeaId/(46).jpg', CAST(N'2018-12-17' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (47, N'Mục Hải Nguyên ', CAST(N'1996-12-05' AS Date), 1, N'img/imgTeaId/(47).jpg', CAST(N'2019-08-04' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (48, N'Liêu Quang Nhân ', CAST(N'1997-04-25' AS Date), 0, N'img/imgTeaId/(48).jpg', CAST(N'2019-12-01' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (49, N'Hà Trường Nhân ', CAST(N'2000-11-20' AS Date), 0, N'img/imgTeaId/(49).jpg', CAST(N'2018-12-05' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (50, N'Cà Lạc Phúc ', CAST(N'1997-06-17' AS Date), 1, N'img/imgTeaId/(50).jpg', CAST(N'2019-05-28' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (51, N'Đàm Hồng Quang ', CAST(N'1997-11-03' AS Date), 0, N'img/imgTeaId/(51).jpg', CAST(N'2018-08-03' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (52, N'Ưng Minh Quý ', CAST(N'2001-07-23' AS Date), 1, N'img/imgTeaId/(52).jpg', CAST(N'2021-07-20' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (53, N'Anh Xuân Quý ', CAST(N'1996-08-09' AS Date), 1, N'img/imgTeaId/(53).jpg', CAST(N'2021-09-18' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (54, N'Mang Thanh Sơn ', CAST(N'2001-10-19' AS Date), 0, N'img/imgTeaId/(54).jpg', CAST(N'2018-09-24' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (55, N'Doãn Mạnh Tấn ', CAST(N'2000-12-21' AS Date), 1, N'img/imgTeaId/(55).jpg', CAST(N'2020-12-11' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (56, N'Ong Quốc Tiến ', CAST(N'2000-12-14' AS Date), 0, N'img/imgTeaId/(56).jpg', CAST(N'2021-07-01' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (57, N'Bàn Hữu Trung ', CAST(N'2001-05-18' AS Date), 0, N'img/imgTeaId/(57).jpg', CAST(N'2020-06-08' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (58, N'Điều Huy Tuấn ', CAST(N'2001-09-22' AS Date), 1, N'img/imgTeaId/(58).jpg', CAST(N'2020-12-23' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (59, N'Chriêng Huy Tường ', CAST(N'1999-06-07' AS Date), 1, N'img/imgTeaId/(59).jpg', CAST(N'2022-02-24' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (60, N'Bàng Việt Thanh ', CAST(N'1999-04-22' AS Date), 0, N'img/imgTeaId/(60).jpg', CAST(N'2018-09-24' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (61, N'Lục Thuận Thành ', CAST(N'1997-05-08' AS Date), 1, N'img/imgTeaId/(61).jpg', CAST(N'2019-02-15' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (62, N'Tô Ngọc Thiện ', CAST(N'1997-11-23' AS Date), 1, N'img/imgTeaId/(62).jpg', CAST(N'2022-07-06' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (63, N'Trịnh Quốc Thiện ', CAST(N'2000-10-07' AS Date), 1, N'img/imgTeaId/(63).jpg', CAST(N'2021-06-15' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (64, N'Bàng Quốc Thịnh ', CAST(N'2001-03-31' AS Date), 0, N'img/imgTeaId/(64).jpg', CAST(N'2020-05-08' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (65, N'Mộc Xuân Thuyết ', CAST(N'1998-03-22' AS Date), 0, N'img/imgTeaId/(65).jpg', CAST(N'2021-05-02' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (66, N'Đặng Thanh Vinh ', CAST(N'1997-11-01' AS Date), 1, N'img/imgTeaId/(66).jpg', CAST(N'2020-10-12' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (67, N'Tấn Tiến Võ ', CAST(N'2001-05-21' AS Date), 0, N'img/imgTeaId/(67).jpg', CAST(N'2019-11-21' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (68, N'Đặng Gia Bảo ', CAST(N'1998-04-15' AS Date), 0, N'img/imgTeaId/(68).jpg', CAST(N'2018-05-15' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (69, N'Bồ Hoàng Dũng ', CAST(N'1999-08-23' AS Date), 1, N'img/imgTeaId/(69).jpg', CAST(N'2022-06-03' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (70, N'Khúc Khắc Duy ', CAST(N'2001-03-15' AS Date), 0, N'img/imgTeaId/(70).jpg', CAST(N'2019-02-23' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (71, N'Quách Ðại Hành ', CAST(N'2001-06-17' AS Date), 1, N'img/imgTeaId/(71).jpg', CAST(N'2021-05-29' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (72, N'Ngụy Nghĩa Hòa ', CAST(N'2000-01-29' AS Date), 1, N'img/imgTeaId/(72).jpg', CAST(N'2021-02-06' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (73, N'Khu Phi Hoàng ', CAST(N'1998-09-06' AS Date), 0, N'img/imgTeaId/(73).jpg', CAST(N'2019-08-08' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (74, N'Thi Quang Hưng ', CAST(N'1999-05-05' AS Date), 1, N'img/imgTeaId/(74).jpg', CAST(N'2018-01-04' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (75, N'Uông Chính Hữu ', CAST(N'1996-01-16' AS Date), 1, N'img/imgTeaId/(75).jpg', CAST(N'2019-05-19' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (76, N'Lộ Tân Long ', CAST(N'1996-02-21' AS Date), 0, N'img/imgTeaId/(76).jpg', CAST(N'2018-08-30' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (77, N'Quản Xuân Phúc ', CAST(N'1997-05-24' AS Date), 0, N'img/imgTeaId/(77).jpg', CAST(N'2020-07-21' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (78, N'H''nia Ðình Quảng ', CAST(N'1996-01-10' AS Date), 1, N'img/imgTeaId/(78).jpg', CAST(N'2022-04-28' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (79, N'Cảnh Hồng Quý ', CAST(N'2001-01-13' AS Date), 1, N'img/imgTeaId/(79).jpg', CAST(N'2019-08-28' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (80, N'Ứng Tuấn Sỹ ', CAST(N'1996-02-06' AS Date), 0, N'img/imgTeaId/(80).jpg', CAST(N'2022-01-11' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (81, N'Linh Vĩnh Toàn ', CAST(N'1997-10-19' AS Date), 1, N'img/imgTeaId/(81).jpg', CAST(N'2021-07-11' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (82, N'Phí Thuận Thành ', CAST(N'1997-08-13' AS Date), 1, N'img/imgTeaId/(82).jpg', CAST(N'2018-06-15' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (83, N'Lộ Tường Vinh ', CAST(N'1997-06-12' AS Date), 0, N'img/imgTeaId/(83).jpg', CAST(N'2022-05-14' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (84, N'Lương Hoàng Ân ', CAST(N'1998-03-25' AS Date), 0, N'img/imgTeaId/(84).jpg', CAST(N'2018-06-16' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (85, N'Lô Quang Anh ', CAST(N'1997-04-27' AS Date), 0, N'img/imgTeaId/(85).jpg', CAST(N'2019-03-24' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (86, N'Võ Trung Anh ', CAST(N'1999-10-03' AS Date), 0, N'img/imgTeaId/(86).jpg', CAST(N'2018-04-06' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (87, N'Đan Gia Bạch ', CAST(N'1998-09-15' AS Date), 1, N'img/imgTeaId/(87).jpg', CAST(N'2019-04-04' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (88, N'Mạc Mạnh Cương ', CAST(N'2001-11-09' AS Date), 0, N'img/imgTeaId/(88).jpg', CAST(N'2018-11-24' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (89, N'Chương Hữu Ðạt ', CAST(N'2001-05-30' AS Date), 0, N'img/imgTeaId/(89).jpg', CAST(N'2019-09-02' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (90, N'Lục Tiến Ðức ', CAST(N'2000-01-10' AS Date), 1, N'img/imgTeaId/(90).jpg', CAST(N'2019-02-25' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (91, N'Sơn Thế Dũng ', CAST(N'2000-10-02' AS Date), 1, N'img/imgTeaId/(91).jpg', CAST(N'2021-05-01' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (92, N'Cù Trí Dũng ', CAST(N'1996-09-23' AS Date), 0, N'img/imgTeaId/(92).jpg', CAST(N'2020-09-28' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (93, N'Khâu Hiếu Dụng ', CAST(N'2000-09-07' AS Date), 0, N'img/imgTeaId/(93).jpg', CAST(N'2020-03-02' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (94, N'Dương Ðại Dương ', CAST(N'1999-04-25' AS Date), 1, N'img/imgTeaId/(94).jpg', CAST(N'2021-10-20' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (95, N'Lưu Huy Khánh ', CAST(N'1996-01-09' AS Date), 0, N'img/imgTeaId/(95).jpg', CAST(N'2018-04-15' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (96, N'Kim Ngọc Khương ', CAST(N'1998-10-07' AS Date), 0, N'img/imgTeaId/(96).jpg', CAST(N'2018-03-13' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (97, N'Dư Ðạt Hòa ', CAST(N'1996-07-11' AS Date), 0, N'img/imgTeaId/(97).jpg', CAST(N'2021-06-21' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (98, N'Khuất Minh Hưng ', CAST(N'2001-11-18' AS Date), 1, N'img/imgTeaId/(98).jpg', CAST(N'2021-11-29' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (99, N'Ma Minh Hưng ', CAST(N'1996-04-18' AS Date), 0, N'img/imgTeaId/(99).jpg', CAST(N'2021-11-02' AS Date), 3)
GO
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (100, N'Đường Quốc Hưng ', CAST(N'1999-11-18' AS Date), 0, N'img/imgTeaId/(100).jpg', CAST(N'2019-03-02' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (101, N'Đậu Ngọc Huy ', CAST(N'2001-11-14' AS Date), 1, N'img/imgTeaId/(101).jpg', CAST(N'2018-10-06' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (102, N'Nhan Nhật Huy ', CAST(N'1997-03-28' AS Date), 1, N'img/imgTeaId/(102).jpg', CAST(N'2019-05-21' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (103, N'Viên Bảo Huỳnh ', CAST(N'1998-01-24' AS Date), 1, N'img/imgTeaId/(103).jpg', CAST(N'2018-06-17' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (104, N'Chương Thành Lợi ', CAST(N'1996-05-13' AS Date), 1, N'img/imgTeaId/(104).jpg', CAST(N'2021-09-27' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (105, N'Vưu Kim Long ', CAST(N'2000-06-27' AS Date), 1, N'img/imgTeaId/(105).jpg', CAST(N'2021-05-15' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (106, N'Chriêng Tân Long ', CAST(N'2001-10-07' AS Date), 0, N'img/imgTeaId/(106).jpg', CAST(N'2022-05-11' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (107, N'Bình Chiêu Minh ', CAST(N'2001-11-23' AS Date), 1, N'img/imgTeaId/(107).jpg', CAST(N'2019-02-01' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (108, N'Cảnh Duy Minh ', CAST(N'2001-12-29' AS Date), 0, N'img/imgTeaId/(108).jpg', CAST(N'2018-10-22' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (109, N'Lại Vũ Minh ', CAST(N'2000-09-18' AS Date), 1, N'img/imgTeaId/(109).jpg', CAST(N'2018-07-03' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (110, N'Quảng Hồng Nhật ', CAST(N'2000-09-10' AS Date), 1, N'img/imgTeaId/(110).jpg', CAST(N'2020-10-23' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (111, N'Lương Hạo Nhiên ', CAST(N'1997-10-19' AS Date), 0, N'img/imgTeaId/(111).jpg', CAST(N'2021-12-09' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (112, N'Trà Hạo Nhiên ', CAST(N'1998-10-24' AS Date), 0, N'img/imgTeaId/(112).jpg', CAST(N'2022-01-19' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (113, N'Ma Sỹ Phú ', CAST(N'2001-09-28' AS Date), 0, N'img/imgTeaId/(113).jpg', CAST(N'2019-02-27' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (114, N'Ngô Công Phụng ', CAST(N'2000-08-21' AS Date), 1, N'img/imgTeaId/(114).jpg', CAST(N'2019-12-31' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (115, N'Ngân Quốc Phương ', CAST(N'2000-05-14' AS Date), 1, N'img/imgTeaId/(115).jpg', CAST(N'2020-02-29' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (116, N'Đèo Ðông Quân ', CAST(N'1998-01-10' AS Date), 1, N'img/imgTeaId/(116).jpg', CAST(N'2020-04-03' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (117, N'Lư Ðông Quân ', CAST(N'1998-01-30' AS Date), 1, N'img/imgTeaId/(117).jpg', CAST(N'2019-03-11' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (118, N'Thế Hoàng Quân ', CAST(N'1996-05-25' AS Date), 0, N'img/imgTeaId/(118).jpg', CAST(N'2021-02-16' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (119, N'Thào Ngọc Quang ', CAST(N'1997-12-11' AS Date), 0, N'img/imgTeaId/(119).jpg', CAST(N'2022-06-04' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (120, N'Hi Minh Quốc ', CAST(N'1998-04-15' AS Date), 1, N'img/imgTeaId/(120).jpg', CAST(N'2018-10-06' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (121, N'Thục Minh Quốc ', CAST(N'2000-08-04' AS Date), 0, N'img/imgTeaId/(121).jpg', CAST(N'2019-12-01' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (122, N'Lại Bảo Sơn ', CAST(N'1998-03-30' AS Date), 1, N'img/imgTeaId/(122).jpg', CAST(N'2019-07-13' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (123, N'Thôi Hữu Tâm ', CAST(N'2000-01-26' AS Date), 0, N'img/imgTeaId/(123).jpg', CAST(N'2022-06-23' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (124, N'Kha Thanh Toàn ', CAST(N'1997-02-18' AS Date), 1, N'img/imgTeaId/(124).jpg', CAST(N'2021-11-21' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (125, N'Khúc Dũng Trí ', CAST(N'1996-01-03' AS Date), 1, N'img/imgTeaId/(125).jpg', CAST(N'2020-10-09' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (126, N'Ngũ Quốc Trường ', CAST(N'1999-07-03' AS Date), 0, N'img/imgTeaId/(126).jpg', CAST(N'2018-02-21' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (127, N'Tòng Trường Thành ', CAST(N'1996-02-16' AS Date), 1, N'img/imgTeaId/(127).jpg', CAST(N'2021-03-11' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (128, N'Ngụy Ðình Thiện ', CAST(N'1997-06-05' AS Date), 0, N'img/imgTeaId/(128).jpg', CAST(N'2022-01-26' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (129, N'Trà Phú Thịnh ', CAST(N'1996-11-01' AS Date), 0, N'img/imgTeaId/(129).jpg', CAST(N'2018-02-15' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (130, N'Triệu Cao Thọ ', CAST(N'2001-01-03' AS Date), 1, N'img/imgTeaId/(130).jpg', CAST(N'2020-10-22' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (131, N'Ngọ Vĩnh Thọ ', CAST(N'1999-11-17' AS Date), 1, N'img/imgTeaId/(131).jpg', CAST(N'2021-02-20' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (132, N'Quách Hồng Vinh ', CAST(N'1999-05-12' AS Date), 0, N'img/imgTeaId/(132).jpg', CAST(N'2020-03-28' AS Date), 3)
INSERT [dbo].[Teacher] ([id], [name], [birthday], [gender], [avatar], [joindate], [statusId]) VALUES (133, N'Ninh Huy Vũ ', CAST(N'1997-08-28' AS Date), 0, N'img/imgTeaId/(133).jpg', CAST(N'2019-10-10' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher Status] ON 

INSERT [dbo].[Teacher Status] ([id], [name], [description]) VALUES (1, N'Đang dạy', N'Giáo viên hiện đang dạy học tại trường                                                              ')
INSERT [dbo].[Teacher Status] ([id], [name], [description]) VALUES (2, N'Đang nghỉ', N'Giáo viên đang trong giai đoạn xin nghỉ phép dài hạn                                                ')
INSERT [dbo].[Teacher Status] ([id], [name], [description]) VALUES (3, N'Đã chuyển trường', N'Giáo viên hiện không còn làm việc tại trường                                                        ')
SET IDENTITY_INSERT [dbo].[Teacher Status] OFF
GO
/****** Object:  Index [IX_Account_TeacherId]    Script Date: 18/08/22 19:34:59 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [IX_Account_TeacherId] UNIQUE NONCLUSTERED 
(
	[teaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Account_Username]    Script Date: 18/08/22 19:34:59 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [IX_Account_Username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Question] FOREIGN KEY([qid])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Question]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Teacher] FOREIGN KEY([teaid])
REFERENCES [dbo].[Teacher] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Teacher]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Semester] FOREIGN KEY([semId])
REFERENCES [dbo].[Semester] ([id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Semester]
GO
ALTER TABLE [dbo].[Linking Subject Group]  WITH CHECK ADD  CONSTRAINT [FK_Linking Subject Group_Group Subject] FOREIGN KEY([groupSuId])
REFERENCES [dbo].[Group Subject] ([id])
GO
ALTER TABLE [dbo].[Linking Subject Group] CHECK CONSTRAINT [FK_Linking Subject Group_Group Subject]
GO
ALTER TABLE [dbo].[Linking Subject Group]  WITH CHECK ADD  CONSTRAINT [FK_Linking Subject Group_Subject] FOREIGN KEY([subjectId])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Linking Subject Group] CHECK CONSTRAINT [FK_Linking Subject Group_Subject]
GO
ALTER TABLE [dbo].[Linking Teacher Group]  WITH CHECK ADD  CONSTRAINT [FK_Linking Teacher Group_Group Teacher] FOREIGN KEY([groupTeId])
REFERENCES [dbo].[Group Teacher] ([id])
GO
ALTER TABLE [dbo].[Linking Teacher Group] CHECK CONSTRAINT [FK_Linking Teacher Group_Group Teacher]
GO
ALTER TABLE [dbo].[Linking Teacher Group]  WITH CHECK ADD  CONSTRAINT [FK_Linking Teacher Group_Teacher] FOREIGN KEY([teaId])
REFERENCES [dbo].[Teacher] ([id])
GO
ALTER TABLE [dbo].[Linking Teacher Group] CHECK CONSTRAINT [FK_Linking Teacher Group_Teacher]
GO
ALTER TABLE [dbo].[Linking Teacher Subject]  WITH CHECK ADD  CONSTRAINT [FK_Linking Teacher Subject_Group Subject] FOREIGN KEY([groupSuId])
REFERENCES [dbo].[Group Subject] ([id])
GO
ALTER TABLE [dbo].[Linking Teacher Subject] CHECK CONSTRAINT [FK_Linking Teacher Subject_Group Subject]
GO
ALTER TABLE [dbo].[Linking Teacher Subject]  WITH CHECK ADD  CONSTRAINT [FK_Linking Teacher Subject_Group Teacher] FOREIGN KEY([groupTeId])
REFERENCES [dbo].[Group Teacher] ([id])
GO
ALTER TABLE [dbo].[Linking Teacher Subject] CHECK CONSTRAINT [FK_Linking Teacher Subject_Group Teacher]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Account] FOREIGN KEY([alterAccId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Account]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Account1] FOREIGN KEY([approveAccId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Account1]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Request Status] FOREIGN KEY([statusId])
REFERENCES [dbo].[Request Status] ([id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Request Status]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Type Request] FOREIGN KEY([typeId])
REFERENCES [dbo].[Type Request] ([id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Type Request]
GO
ALTER TABLE [dbo].[Role Account]  WITH CHECK ADD  CONSTRAINT [FK_Role Account_Account] FOREIGN KEY([accId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Role Account] CHECK CONSTRAINT [FK_Role Account_Account]
GO
ALTER TABLE [dbo].[Role Account]  WITH CHECK ADD  CONSTRAINT [FK_Role Account_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role Account] CHECK CONSTRAINT [FK_Role Account_Role]
GO
ALTER TABLE [dbo].[Role Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role Feature_Feature] FOREIGN KEY([feaId])
REFERENCES [dbo].[Feature] ([id])
GO
ALTER TABLE [dbo].[Role Feature] CHECK CONSTRAINT [FK_Role Feature_Feature]
GO
ALTER TABLE [dbo].[Role Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role Feature_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role Feature] CHECK CONSTRAINT [FK_Role Feature_Role]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Class] FOREIGN KEY([classId])
REFERENCES [dbo].[Class] ([id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Class]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Room] FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Room]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Semester] FOREIGN KEY([semId])
REFERENCES [dbo].[Semester] ([id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Semester]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Teacher] FOREIGN KEY([teaId])
REFERENCES [dbo].[Teacher] ([id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Teacher]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Time Slot] FOREIGN KEY([timeId])
REFERENCES [dbo].[Time Slot] ([id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Time Slot]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Teacher Status] FOREIGN KEY([statusId])
REFERENCES [dbo].[Teacher Status] ([id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Teacher Status]
GO
ALTER TABLE [dbo].[Time Slot Detail]  WITH CHECK ADD  CONSTRAINT [FK_Time Slot Detail_Time Slot] FOREIGN KEY([timeSlotId])
REFERENCES [dbo].[Time Slot] ([id])
GO
ALTER TABLE [dbo].[Time Slot Detail] CHECK CONSTRAINT [FK_Time Slot Detail_Time Slot]
GO
ALTER TABLE [dbo].[Waiting Line Acp]  WITH CHECK ADD  CONSTRAINT [FK_Waiting Line Acp_Account] FOREIGN KEY([accId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Waiting Line Acp] CHECK CONSTRAINT [FK_Waiting Line Acp_Account]
GO
USE [master]
GO
ALTER DATABASE [SchoolTimeKeeper] SET  READ_WRITE 
GO
