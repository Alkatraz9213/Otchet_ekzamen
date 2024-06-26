USE [master]
GO
/****** Object:  Database [PM01_520_Vasilchikov]    Script Date: 15.04.2024 15:23:57 ******/
CREATE DATABASE [PM01_520_Vasilchikov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PM01_520_Vasilchikov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PM01_520_Vasilchikov.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PM01_520_Vasilchikov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PM01_520_Vasilchikov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PM01_520_Vasilchikov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET ARITHABORT OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET  MULTI_USER 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET QUERY_STORE = OFF
GO
USE [PM01_520_Vasilchikov]
GO
/****** Object:  Table [dbo].[City]    Script Date: 15.04.2024 15:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 15.04.2024 15:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Eng_Name] [nvarchar](100) NOT NULL,
	[Code] [nchar](2) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 15.04.2024 15:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](512) NOT NULL,
	[Date] [date] NOT NULL,
	[Days] [int] NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 15.04.2024 15:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jures]    Script Date: 15.04.2024 15:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jures](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronomic] [nvarchar](50) NOT NULL,
	[GenderId] [int] NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[Birthday] [date] NULL,
	[CountryId] [int] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Jures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moderators]    Script Date: 15.04.2024 15:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderators](
	[Id] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronomic] [nvarchar](50) NOT NULL,
	[GenderId] [int] NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[Birthday] [date] NOT NULL,
	[CountryId] [int] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Event] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [varchar](max) NULL,
 CONSTRAINT [PK_Moderators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizators]    Script Date: 15.04.2024 15:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizators](
	[Id] [int] NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Patronomic] [nvarchar](100) NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[Birthday] [date] NULL,
	[CountryId] [int] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [varchar](max) NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_Organizators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parcipiants]    Script Date: 15.04.2024 15:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parcipiants](
	[Id] [int] NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Patronomic] [nvarchar](100) NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[Birthday] [date] NULL,
	[CountryId] [int] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [varchar](max) NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_Parcipiants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_City]
GO
ALTER TABLE [dbo].[Jures]  WITH CHECK ADD  CONSTRAINT [FK_Jures_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Jures] CHECK CONSTRAINT [FK_Jures_Country]
GO
ALTER TABLE [dbo].[Jures]  WITH CHECK ADD  CONSTRAINT [FK_Jures_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Jures] CHECK CONSTRAINT [FK_Jures_Gender]
GO
ALTER TABLE [dbo].[Moderators]  WITH CHECK ADD  CONSTRAINT [FK_Moderators_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Moderators] CHECK CONSTRAINT [FK_Moderators_Country]
GO
ALTER TABLE [dbo].[Moderators]  WITH CHECK ADD  CONSTRAINT [FK_Moderators_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Moderators] CHECK CONSTRAINT [FK_Moderators_Gender]
GO
ALTER TABLE [dbo].[Organizators]  WITH CHECK ADD  CONSTRAINT [FK_Organizators_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Organizators] CHECK CONSTRAINT [FK_Organizators_Country]
GO
ALTER TABLE [dbo].[Organizators]  WITH CHECK ADD  CONSTRAINT [FK_Organizators_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Organizators] CHECK CONSTRAINT [FK_Organizators_Gender]
GO
ALTER TABLE [dbo].[Parcipiants]  WITH CHECK ADD  CONSTRAINT [FK_Parcipiants_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Parcipiants] CHECK CONSTRAINT [FK_Parcipiants_Country]
GO
ALTER TABLE [dbo].[Parcipiants]  WITH CHECK ADD  CONSTRAINT [FK_Parcipiants_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Parcipiants] CHECK CONSTRAINT [FK_Parcipiants_Gender]
GO
USE [master]
GO
ALTER DATABASE [PM01_520_Vasilchikov] SET  READ_WRITE 
GO
