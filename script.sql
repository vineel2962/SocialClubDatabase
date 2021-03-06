USE [master]
GO
/****** Object:  Database [SocialClub]    Script Date: 4/7/2019 7:04:41 PM ******/
CREATE DATABASE [SocialClub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SocialClub', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SocialClub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SocialClub_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SocialClub_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SocialClub] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SocialClub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SocialClub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SocialClub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SocialClub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SocialClub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SocialClub] SET ARITHABORT OFF 
GO
ALTER DATABASE [SocialClub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SocialClub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SocialClub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SocialClub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SocialClub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SocialClub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SocialClub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SocialClub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SocialClub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SocialClub] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SocialClub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SocialClub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SocialClub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SocialClub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SocialClub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SocialClub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SocialClub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SocialClub] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SocialClub] SET  MULTI_USER 
GO
ALTER DATABASE [SocialClub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SocialClub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SocialClub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SocialClub] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SocialClub] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SocialClub] SET QUERY_STORE = OFF
GO
USE [SocialClub]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SocialClub]
GO
/****** Object:  Table [dbo].[ClubMember]    Script Date: 4/7/2019 7:04:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClubMember](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Occupation] [int] NULL,
	[Salary] [money] NULL,
	[MaritalStatus] [int] NULL,
	[HealthStatus] [int] NULL,
	[NumberOfChildren] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (16, N'Gregory', CAST(N'1987-09-20T00:00:00.000' AS DateTime), 1, 12000.0000, 1, 1, 1)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (18, N'Leonardo', CAST(N'1988-09-20T00:00:00.000' AS DateTime), 3, 20000.0000, 1, 2, 2)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (20, N'Jarsqard', CAST(N'1994-06-07T00:00:00.000' AS DateTime), 3, 23000.0000, 1, 1, 1)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (22, N'Hemsworth', CAST(N'1979-09-21T00:00:00.000' AS DateTime), 3, 12000.0000, 2, 2, 0)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (24, N'Toress', CAST(N'1980-09-21T00:00:00.000' AS DateTime), 2, 50000.0000, 1, 1, 1)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (25, N'Tatum', CAST(N'1982-09-22T00:00:00.000' AS DateTime), 1, 200000.0000, 1, 1, 2)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (26, N'Jackal', CAST(N'2012-09-22T00:00:00.000' AS DateTime), 1, 10000.0000, 2, 1, 2)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (27, N'Farell', CAST(N'1995-07-05T00:00:00.000' AS DateTime), 2, 23000.0000, 2, 1, 3)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (28, N'Woodhouse', CAST(N'1995-07-05T00:00:00.000' AS DateTime), 2, 18000.0000, 1, 2, 1)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (30, N'Jim Alan', CAST(N'1990-02-13T00:00:00.000' AS DateTime), 1, 5600.0000, 1, 1, 2)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (32, N'John', CAST(N'1979-12-25T00:00:00.000' AS DateTime), 2, 1200.0000, 1, 1, 2)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (33, N'Jack Dawson', CAST(N'1979-12-25T00:00:00.000' AS DateTime), 2, 6500.0000, 1, 1, 1)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (34, N'Jennifer', CAST(N'1982-12-25T00:00:00.000' AS DateTime), 3, 2500.0000, 1, 2, 0)
INSERT [dbo].[ClubMember] ([ID], [Name], [DateOfBirth], [Occupation], [Salary], [MaritalStatus], [HealthStatus], [NumberOfChildren]) VALUES (35, N'Pete', CAST(N'1978-12-25T00:00:00.000' AS DateTime), 2, 8500.0000, 1, 1, 2)
USE [master]
GO
ALTER DATABASE [SocialClub] SET  READ_WRITE 
GO
