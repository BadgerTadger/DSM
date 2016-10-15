USE [master]
GO
/****** Object:  Database [sussexsoftwaresolutions]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'sussexsoftwaresolutions')
BEGIN
CREATE DATABASE [sussexsoftwaresolutions] ON  PRIMARY 
( NAME = N'sussexsoftwaresolutions', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SSSDEVSQL\MSSQL\DATA\sussexsoftwaresolutions.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sussexsoftwaresolutions_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SSSDEVSQL\MSSQL\DATA\sussexsoftwaresolutions_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [sussexsoftwaresolutions] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sussexsoftwaresolutions].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sussexsoftwaresolutions] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET ANSI_NULLS OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET ANSI_PADDING OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET ARITHABORT OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [sussexsoftwaresolutions] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [sussexsoftwaresolutions] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [sussexsoftwaresolutions] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET  DISABLE_BROKER
GO
ALTER DATABASE [sussexsoftwaresolutions] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [sussexsoftwaresolutions] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [sussexsoftwaresolutions] SET  READ_WRITE
GO
ALTER DATABASE [sussexsoftwaresolutions] SET RECOVERY FULL
GO
ALTER DATABASE [sussexsoftwaresolutions] SET  MULTI_USER
GO
ALTER DATABASE [sussexsoftwaresolutions] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [sussexsoftwaresolutions] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'sussexsoftwaresolutions', N'ON'
GO
USE [sussexsoftwaresolutions]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 02/14/2013 17:35:00 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'
GO
/****** Object:  Table [dbo].[tblEntrants_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEntrants_Audit](
	[Entrant_Audit_ID] [uniqueidentifier] NOT NULL,
	[Entrant_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NULL,
	[Person_ID] [uniqueidentifier] NULL,
	[Catalogue] [bit] NULL,
	[Overnight_Camping] [bit] NULL,
	[Overpayment] [money] NULL,
	[Underpayment] [money] NULL,
	[Offer_Of_Help] [bit] NULL,
	[Help_Details] [varchar](max) NULL,
	[Withold_Address] [bit] NULL,
	[Send_Running_Order] [bit] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblEntrants_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Entrant_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDogs_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDogs_Audit](
	[Dog_Audit_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dog_KC_Name] [varchar](255) NULL,
	[Dog_Pet_Name] [varchar](128) NULL,
	[Dog_Breed_ID] [int] NULL,
	[Dog_Gender_ID] [int] NULL,
	[Owner_ID] [uniqueidentifier] NULL,
	[Breeder_ID] [uniqueidentifier] NULL,
	[Reg_No] [varchar](50) NULL,
	[Date_Of_Birth] [date] NULL,
	[Year_Of_Birth] [smallint] NULL,
	[Merit_Points] [smallint] NULL,
	[NLWU] [bit] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblDogs_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDog_Classes_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDog_Classes_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDog_Classes_Audit](
	[Dog_Class_Audit_ID] [uniqueidentifier] NOT NULL,
	[Dog_Class_ID] [uniqueidentifier] NOT NULL,
	[Entrant_ID] [uniqueidentifier] NULL,
	[Dog_ID] [uniqueidentifier] NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_ID] [uniqueidentifier] NULL,
	[Handler_ID] [uniqueidentifier] NULL,
	[Ring_No] [smallint] NULL,
	[Running_Order] [smallint] NULL,
	[Special_Request] [text] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblDog_Classes_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Class_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblGuarantors_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGuarantors_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGuarantors_Audit](
	[Guarantor_Audit_ID] [uniqueidentifier] NOT NULL,
	[Guarantor_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NULL,
	[Chairman_Person_ID] [uniqueidentifier] NULL,
	[Secretary_Person_ID] [uniqueidentifier] NULL,
	[Treasurer_Person_ID] [uniqueidentifier] NULL,
	[Committee1_Person_ID] [uniqueidentifier] NULL,
	[Committee2_Person_ID] [uniqueidentifier] NULL,
	[Committee3_Person_ID] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblGuarantors_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Guarantor_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblPeople_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPeople_Audit](
	[Person_Audit_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Person_Surname] [varchar](50) NULL,
	[Person_Forename] [varchar](50) NULL,
	[Address_ID] [uniqueidentifier] NULL,
	[Person_Mobile] [varchar](20) NULL,
	[Person_Landline] [varchar](20) NULL,
	[Person_Email] [varchar](255) NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblPeople_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Person_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblShows_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShows_Audit](
	[Show_Audit_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Show_Year_ID] [int] NOT NULL,
	[Show_Type_ID] [int] NULL,
	[Venue_ID] [uniqueidentifier] NULL,
	[Show_Opens] [datetime] NULL,
	[Judging_Commences] [datetime] NULL,
	[Show_Name] [varchar](255) NULL,
	[Closing_Date] [date] NULL,
	[Entries_Complete] [bit] NULL,
	[Judges_Allocated] [bit] NULL,
	[Split_Classes] [bit] NULL,
	[Running_Orders_Allocated] [bit] NULL,
	[Ring_Numbers_Allocated] [bit] NULL,
	[Linked_Show] [bit] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShows_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVenues_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblVenues_Audit](
	[Venue_Audit_ID] [uniqueidentifier] NOT NULL,
	[Venue_ID] [uniqueidentifier] NOT NULL,
	[Venue_Name] [varchar](255) NOT NULL,
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Venue_Contact] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblVenues_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Venue_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblShow_Final_Classes_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Final_Classes_Audit](
	[Show_Final_Class_Audit_ID] [uniqueidentifier] NOT NULL,
	[Show_Final_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_Description] [varchar](255) NOT NULL,
	[Judge_ID] [uniqueidentifier] NULL,
	[Stay_Time] [time](7) NULL,
	[Lunch_Time] [time](7) NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShow_Final_Classes_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Final_Class_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblShow_Entry_Classes_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Entry_Classes_Audit](
	[Show_Entry_Class_Audit_ID] [uniqueidentifier] NOT NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Class_Name_ID] [int] NOT NULL,
	[Class_No] [smallint] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShow_Entry_Classes_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Entry_Class_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblShow_Helpers_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Helpers_Audit](
	[Show_Helper_Audit_ID] [uniqueidentifier] NOT NULL,
	[Show_Helper_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Show_Role_ID] [int] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShow_Helpers_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Helper_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND name = N'aspnet_Applications_Index')
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClubs_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblClubs_Audit](
	[Club_Audit_ID] [uniqueidentifier] NOT NULL,
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Club_Long_Name] [varchar](255) NULL,
	[Club_Short_Name] [varchar](128) NULL,
	[Club_Contact] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblClubs_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Club_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAddresses_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAddresses_Audit](
	[Address_Audit_ID] [uniqueidentifier] NOT NULL,
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Address_1] [varchar](255) NULL,
	[Address_2] [varchar](255) NULL,
	[Address_Town] [varchar](128) NULL,
	[Address_City] [varchar](128) NULL,
	[Address_County] [varchar](128) NULL,
	[Address_Postcode] [varchar](10) NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblAddresses_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Address_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lnkDog_Dams_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkDog_Dams_Audit](
	[Dog_Dam_Audit_ID] [uniqueidentifier] NOT NULL,
	[Dog_Dam_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dam_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkDog_Dams_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Dam_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lnkDog_Sires_Audit]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkDog_Sires_Audit](
	[Dog_Sire_Audit_ID] [uniqueidentifier] NOT NULL,
	[Dog_Sire_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Sire_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkDog_Sires_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Sire_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lkpShow_Years]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpShow_Years](
	[Show_Year_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Year] [smallint] NOT NULL,
 CONSTRAINT [lkpShow_Years_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Year_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lkpShow_Types]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpShow_Types](
	[Show_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Type_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpShow_Types_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Type_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lkpShow_Roles]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpShow_Roles](
	[Show_Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Role_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpShow_Roles_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Role_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lkpDog_Gender]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpDog_Gender](
	[Dog_Gender_ID] [int] IDENTITY(1,1) NOT NULL,
	[Dog_Gender] [varchar](5) NOT NULL,
 CONSTRAINT [lkpDog_Gender_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Gender_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lkpDog_Breeds]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpDog_Breeds](
	[Dog_Breed_ID] [int] IDENTITY(1,1) NOT NULL,
	[Dog_Breed_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpDog_Breeds_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Breed_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lkpClass_Names]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpClass_Names](
	[Class_Name_ID] [int] IDENTITY(1,1) NOT NULL,
	[Class_Name_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpClass_Names_PK] PRIMARY KEY CLUSTERED 
(
	[Class_Name_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 02/14/2013 17:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT INTO dbo.aspnet_SchemaVersions 
VALUES
('common', 1, 1),
('health monitoring', 1, 1),
('membership', 1, 1),
('personalization', 1, 1),
('profile', 1, 1),
('role manager', 1, 1);
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index2')
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND name = N'aspnet_Paths_index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND name = N'aspnet_Roles_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 02/14/2013 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  '
GO
/****** Object:  Table [dbo].[tblShow_Entry_Classes]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Entry_Classes](
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Class_Name_ID] [int] NOT NULL,
	[Class_No] [smallint] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShow_Entry_Classes_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Entry_Class_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  '
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_ncindex2')
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND name = N'aspnet_Membership_index')
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  Table [dbo].[tblAddresses]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAddresses](
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Address_1] [varchar](255) NULL,
	[Address_2] [varchar](255) NULL,
	[Address_Town] [varchar](128) NULL,
	[Address_City] [varchar](128) NULL,
	[Address_County] [varchar](128) NULL,
	[Address_Postcode] [varchar](10) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblAddresses_PK] PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND name = N'aspnet_UsersInRoles_index')
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblAddresses]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblAddresses]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblAddresses] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Address_1 varchar(255) = null,
	@Address_2 varchar(255) = null,
	@Address_Town varchar(128) = null,
	@Address_City varchar(128) = null,
	@Address_County varchar(128) = null,
	@Address_Postcode varchar(10) = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblAddresses]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Address_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblAddresses]
			   SET [Address_1] = @Address_1
			  ,[Address_2] = @Address_2
			  ,[Address_Town] = @Address_Town
			  ,[Address_City] = @Address_City
			  ,[Address_County] = @Address_County
			  ,[Address_Postcode] = @Address_Postcode
			  ,[Modified_Date] = GETDATE()
			  ,[Modified_By] = @UserId
			 WHERE Address_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Entry_Classes]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Entry_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblShow_Entry_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Class_Name_ID int = null,
	@Class_No smallint = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Entry_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes]
			   SET [Show_ID] = @Show_ID
				  ,[Class_Name_ID] = @Class_Name_ID
				  ,[Class_No] = @Class_No
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Entry_Class_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Entry_Classes]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Entry_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblShow_Entry_Classes] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Class_Name_ID int = null,
	@Class_No smallint = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes]
           ([Show_ID]
           ,[Class_Name_ID]
           ,[Class_No]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Show_ID
           ,@Class_Name_ID
           ,@Class_No
           ,GETDATE()
           ,@UserId)

	
	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblAddresses]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblAddresses]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblAddresses] 
	-- Add the parameters for the stored procedure here
	@Address_1 varchar(255) = null,
	@Address_2 varchar(255) = null,
	@Address_Town varchar(128) = null,
	@Address_City varchar(128) = null,
	@Address_County varchar(128) = null,
	@Address_Postcode varchar(10) = null,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblAddresses]
           ([Address_1]
           ,[Address_2]
           ,[Address_Town]
           ,[Address_City]
           ,[Address_County]
           ,[Address_Postcode]
           ,[Created_Date]
           ,[Created_By]
           ,[Modified_Date]
           ,[Modified_By]
           ,[Deleted_Date]
           ,[Deleted_By])
     VALUES
           (@Address_1, @Address_2, @Address_Town, @Address_City,
           @Address_County, @Address_Postcode, GETDATE(), @UserId, null, null, null, null)
	
	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  Trigger [Show_Entry_Classes_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Show_Entry_Classes_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Show_Entry_Classes_After_Update]
   ON  [dbo].[tblShow_Entry_Classes] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes_Audit]
           ([Show_Entry_Class_ID]
           ,[Show_ID]
           ,[Class_Name_ID]
           ,[Class_No]
           ,[Modified_Date])
     SELECT [Show_Entry_Class_ID]
           ,[Show_ID]
           ,[Class_Name_ID]
           ,[Class_No]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Object:  Trigger [Addresses_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Addresses_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE TRIGGER [dbo].[Addresses_After_Update] 
   ON  [dbo].[tblAddresses] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO tblAddresses_Audit (Address_ID, Address_1, Address_2, Address_Town, 
		Address_City, Address_County, Address_Postcode, Modified_Date)
	SELECT [Address_ID], [Address_1], [Address_2], [Address_Town], [Address_City],
		[Address_County], [Address_Postcode], GETDATE()
		FROM deleted
END
'
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  '
GO
/****** Object:  Table [dbo].[tblPeople]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPeople](
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Person_Surname] [varchar](50) NULL,
	[Person_Forename] [varchar](50) NULL,
	[Address_ID] [uniqueidentifier] NULL,
	[Person_Mobile] [varchar](20) NULL,
	[Person_Landline] [varchar](20) NULL,
	[Person_Email] [varchar](255) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblPeople_PK] PRIMARY KEY CLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDogs]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDogs](
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dog_KC_Name] [varchar](255) NULL,
	[Dog_Pet_Name] [varchar](128) NULL,
	[Dog_Breed_ID] [int] NULL,
	[Dog_Gender_ID] [int] NULL,
	[Owner_ID] [uniqueidentifier] NULL,
	[Breeder_ID] [uniqueidentifier] NULL,
	[Reg_No] [varchar](50) NULL,
	[Date_Of_Birth] [date] NULL,
	[Year_Of_Birth] [smallint] NULL,
	[Merit_Points] [smallint] NULL,
	[NLWU] [bit] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblDogs_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVenues]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblVenues](
	[Venue_ID] [uniqueidentifier] NOT NULL,
	[Venue_Name] [varchar](255) NOT NULL,
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Venue_Contact] [uniqueidentifier] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblVenues_PK] PRIMARY KEY CLUSTERED 
(
	[Venue_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
/****** Object:  Trigger [People_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[People_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[People_After_Update] 
   ON  [dbo].[tblPeople] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblPeople_Audit]
           ([Person_ID]
           ,[Person_Surname]
           ,[Person_Forename]
           ,[Address_ID]
           ,[Person_Mobile]
           ,[Person_Landline]
           ,[Person_Email]
           ,[Modified_Date])
     SELECT [Person_ID]
           ,[Person_Surname]
           ,[Person_Forename]
           ,[Address_ID]
           ,[Person_Mobile]
           ,[Person_Landline]
           ,[Person_Email]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Table [dbo].[tblClubs]    Script Date: 02/14/2013 17:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblClubs](
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Club_Long_Name] [varchar](255) NULL,
	[Club_Short_Name] [varchar](128) NULL,
	[Club_Contact] [uniqueidentifier] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblClubs_PK] PRIMARY KEY CLUSTERED 
(
	[Club_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblPeople]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblPeople]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblPeople] 
	-- Add the parameters for the stored procedure here
	@Person_Surname varchar(50) = null,
	@Person_Forename varchar(50) = null,
	@Address_ID uniqueidentifier = null,
	@Person_Mobile varchar(20) = null,
	@Person_Landline varchar(20) = null,
	@Person_Email varchar(255) = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblPeople]
           ([Person_Surname]
           ,[Person_Forename]
           ,[Address_ID]
           ,[Person_Mobile]
           ,[Person_Landline]
           ,[Person_Email]
           ,[Created_Date]
           ,[Created_By]
           ,[Modified_Date]
           ,[Modified_By]
           ,[Deleted_Date]
           ,[Deleted_By])
     VALUES
           (@Person_Surname, @Person_Forename, @Address_ID, @Person_Mobile, @Person_Landline,
           @Person_Email, GETDATE(), @UserId, null, null, null, null)
	
	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblPeople]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblPeople]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblPeople] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Person_Surname varchar(50) = null,
	@Person_Forename varchar(50) = null,
	@Address_ID uniqueidentifier = null,
	@Person_Mobile varchar(20) = null,
	@Person_Landline varchar(20) = null,
	@Person_Email varchar(255) = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblPeople]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Person_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblPeople]
			   SET [Person_Surname] = @Person_Surname
				  ,[Person_Forename] = @Person_Forename
				  ,[Address_ID] = @Address_ID
				  ,[Person_Mobile] = @Person_Mobile
				  ,[Person_Landline] = @Person_Landline
				  ,[Person_Email] = @Person_Email
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Person_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblClubs]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblClubs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblClubs] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Club_Long_Name varchar(255) = null,
	@Club_Short_Name varchar(128) = null,
	@Club_Contact uniqueidentifier = null,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [sussexsoftwaresolutions].[dbo].[tblClubs]
	   SET [Club_Long_Name] = @Club_Long_Name
		  ,[Club_Short_Name] = @Club_Short_Name
		  ,[Club_Contact] = @Club_Contact
		  ,[Modified_Date] = GETDATE()
		  ,[Modified_By] = @UserId
	 WHERE Club_ID = @Original_ID

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblClubs]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblClubs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblClubs] 
	-- Add the parameters for the stored procedure here
	@Club_Long_Name varchar(255) = null,
	@Club_Short_Name varchar(128) = null,
	@Club_Contact uniqueidentifier = null,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblClubs]
           ([Club_Long_Name]
           ,[Club_Short_Name]
           ,[Club_Contact]
           ,[Created_Date]
           ,[Created_By]
           ,[Modified_Date]
           ,[Modified_By]
           ,[Deleted_Date]
           ,[Deleted_By])
     VALUES
           (@Club_Long_Name, @Club_Short_Name, @Club_Contact, GETDATE(), @UserId, null, null, null, null)
	
	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblVenues]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblVenues]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblVenues] 
	-- Add the parameters for the stored procedure here
	@Venue_Name varchar(255) = null,
	@Address_ID uniqueidentifier = null,
	@Venue_Contact uniqueidentifier = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblVenues]
           ([Venue_Name]
           ,[Address_ID]
           ,[Venue_Contact]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Venue_Name
           ,@Address_ID
           ,@Venue_Contact
           ,GETDATE()
           ,@UserId)

	
	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  Trigger [Clubs_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Clubs_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Clubs_After_Update] 
   ON  [dbo].[tblClubs] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblClubs_Audit]
           ([Club_ID]
           ,[Club_Long_Name]
           ,[Club_Short_Name]
           ,[Club_Contact]
           ,[Modified_Date])
     SELECT [Club_ID], [Club_Long_Name], [Club_Short_Name], [Club_Contact], GETDATE()
		FROM deleted

END
'
GO
/****** Object:  Trigger [Dogs_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Dogs_After_Update]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[Dogs_After_Update] 
   ON  [dbo].[tblDogs] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblDogs_Audit]
           ([Dog_ID]
           ,[Dog_KC_Name]
           ,[Dog_Pet_Name]
           ,[Dog_Breed_ID]
           ,[Dog_Gender_ID]
           ,[Owner_ID]
           ,[Breeder_ID]
           ,[Reg_No]
           ,[Date_Of_Birth]
           ,[Year_Of_Birth]
           ,[Merit_Points]
           ,[NLWU]
           ,[Modified_Date])
     SELECT [Dog_ID]
           ,[Dog_KC_Name]
           ,[Dog_Pet_Name]
           ,[Dog_Breed_ID]
           ,[Dog_Gender_ID]
           ,[Owner_ID]
           ,[Breeder_ID]
           ,[Reg_No]
           ,[Date_Of_Birth]
           ,[Year_Of_Birth]
           ,[Merit_Points]
           ,[NLWU]
           ,GETDATE()
      FROM deleted
      
END
'
GO
/****** Object:  Table [dbo].[lnkDog_Sires]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkDog_Sires](
	[Dog_Sire_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Sire_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkDog_Sires_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Sire_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lnkDog_Dams]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkDog_Dams](
	[Dog_Dam_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dam_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkDog_Dams_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Dam_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblDogs]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblDogs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblDogs] 
	-- Add the parameters for the stored procedure here
	@Dog_KC_Name varchar(255) = null,
	@Dog_Pet_Name varchar(128) = null,
	@Dog_Breed_ID int = null,
	@Dog_Gender_ID int = null,
	@Owner_ID uniqueidentifier = null,
	@Breeder_ID uniqueidentifier = null,
	@Reg_No varchar(50) = null,
	@Date_of_Birth date = null,
	@Year_of_Birth smallint = null,
	@Merit_Points smallint = null,
	@NLWU bit = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblDogs]
           ([Dog_KC_Name]
           ,[Dog_Pet_Name]
           ,[Dog_Breed_ID]
           ,[Dog_Gender_ID]
           ,[Owner_ID]
           ,[Breeder_ID]
           ,[Reg_No]
           ,[Date_Of_Birth]
           ,[Year_Of_Birth]
           ,[Merit_Points]
           ,[NLWU]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Dog_KC_Name
           ,@Dog_Pet_Name
           ,@Dog_Breed_ID
           ,@Dog_Gender_ID
           ,@Owner_ID
           ,@Breeder_ID
           ,@Reg_No
           ,@Date_of_Birth
           ,@Year_of_Birth
           ,@Merit_Points
           ,@NLWU
           ,GETDATE()
           ,@UserId)

	RETURN SCOPE_IDENTITY()

END
' 
END
GO
/****** Object:  Table [dbo].[tblShows]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShows]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShows](
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Show_Year_ID] [int] NOT NULL,
	[Show_Type_ID] [int] NULL,
	[Venue_ID] [uniqueidentifier] NULL,
	[Show_Opens] [datetime] NULL,
	[Judging_Commences] [datetime] NULL,
	[Show_Name] [varchar](255) NULL,
	[Closing_Date] [date] NULL,
	[Entries_Complete] [bit] NULL,
	[Judges_Allocated] [bit] NULL,
	[Split_Classes] [bit] NULL,
	[Running_Orders_Allocated] [bit] NULL,
	[Ring_Numbers_Allocated] [bit] NULL,
	[Linked_Show] [bit] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShows_PK] PRIMARY KEY CLUSTERED 
(
	[Show_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Trigger [Venues_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Venues_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Venues_After_Update]
   ON  [dbo].[tblVenues]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblVenues_Audit]
           ([Venue_ID]
           ,[Venue_Name]
           ,[Address_ID]
           ,[Venue_Contact]
           ,[Modified_Date])
     SELECT [Venue_ID]
           ,[Venue_Name]
           ,[Address_ID]
           ,[Venue_Contact]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblDogs]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblDogs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblDogs] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Dog_KC_Name varchar(255) = null,
	@Dog_Pet_Name varchar(128) = null,
	@Dog_Breed_ID int = null,
	@Dog_Gender_ID int = null,
	@Owner_ID uniqueidentifier = null,
	@Breeder_ID uniqueidentifier = null,
	@Reg_No varchar(50) = null,
	@Date_Of_Birth date = null,
	@Year_Of_Birth smallint = null,
	@Merit_Points smallint = null,
	@NLWU bit = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblDogs]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblDogs]
			   SET [Dog_KC_Name] = @Dog_KC_Name
				  ,[Dog_Pet_Name] = @Dog_Pet_Name
				  ,[Dog_Breed_ID] = @Dog_Breed_ID
				  ,[Dog_Gender_ID] = @Dog_Gender_ID
				  ,[Owner_ID] = @Owner_ID
				  ,[Breeder_ID] = @Breeder_ID
				  ,[Reg_No] = @Reg_No
				  ,[Date_Of_Birth] = @Date_Of_Birth
				  ,[Year_Of_Birth] = @Year_Of_Birth
				  ,[Merit_Points] = @Merit_Points
				  ,[NLWU] = @NLWU
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  Table [dbo].[tblShow_Helpers]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Helpers](
	[Show_Helper_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Show_Role_ID] [int] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShow_Helpers_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Helper_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblShow_Final_Classes]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Final_Classes](
	[Show_Final_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_Description] [varchar](255) NOT NULL,
	[Judge_ID] [uniqueidentifier] NULL,
	[Stay_Time] [time](7) NULL,
	[Lunch_Time] [time](7) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShow_Final_Classes_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Final_Class_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEntrants]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEntrants](
	[Entrant_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NULL,
	[Person_ID] [uniqueidentifier] NULL,
	[Catalogue] [bit] NULL,
	[Overnight_Camping] [bit] NULL,
	[Overpayment] [money] NULL,
	[Underpayment] [money] NULL,
	[Offer_Of_Help] [bit] NULL,
	[Help_Details] [varchar](max) NULL,
	[Withold_Address] [bit] NULL,
	[Send_Running_Order] [bit] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblEntrants_PK] PRIMARY KEY CLUSTERED 
(
	[Entrant_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGuarantors]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGuarantors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGuarantors](
	[Guarantor_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NULL,
	[Chairman_Person_ID] [uniqueidentifier] NULL,
	[Secretary_Person_ID] [uniqueidentifier] NULL,
	[Treasurer_Person_ID] [uniqueidentifier] NULL,
	[Committee1_Person_ID] [uniqueidentifier] NULL,
	[Committee2_Person_ID] [uniqueidentifier] NULL,
	[Committee3_Person_ID] [uniqueidentifier] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblGuarantors_PK] PRIMARY KEY CLUSTERED 
(
	[Guarantor_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkDog_Sires]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkDog_Sires]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_lnkDog_Sires] 
	-- Add the parameters for the stored procedure here
	@Dog_ID uniqueidentifier = null,
	@Sire_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkDog_Sires]
           ([Dog_ID]
           ,[Sire_ID]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Dog_ID, @Sire_ID, GETDATE(), @UserId)


	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkDog_Dams]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkDog_Dams]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_lnkDog_Dams] 
	-- Add the parameters for the stored procedure here
	@Dog_ID uniqueidentifier = null,
	@Dam_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkDog_Dams]
           ([Dog_ID]
           ,[Dam_ID]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Dog_ID, @Dam_ID, GETDATE(), @UserId)


	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  Trigger [Shows_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Shows_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Shows_After_Update] 
   ON  [dbo].[tblShows]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShows_Audit]
           ([Show_ID]
           ,[Club_ID]
           ,[Show_Year_ID]
           ,[Show_Type_ID]
           ,[Venue_ID]
           ,[Show_Opens]
           ,[Judging_Commences]
           ,[Show_Name]
           ,[Closing_Date]
           ,[Entries_Complete]
           ,[Judges_Allocated]
           ,[Split_Classes]
           ,[Running_Orders_Allocated]
           ,[Ring_Numbers_Allocated]
           ,[Modified_Date])
     SELECT [Show_ID]
           ,[Club_ID]
           ,[Show_Year_ID]
           ,[Show_Type_ID]
           ,[Venue_ID]
           ,[Show_Opens]
           ,[Judging_Commences]
           ,[Show_Name]
           ,[Closing_Date]
           ,[Entries_Complete]
           ,[Judges_Allocated]
           ,[Split_Classes]
           ,[Running_Orders_Allocated]
           ,[Ring_Numbers_Allocated]
           ,GETDATE()
      FROM deleted

END
'
GO
/****** Object:  Trigger [Dog_Sires_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Dog_Sires_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Dog_Sires_After_Update] 
   ON  [dbo].[lnkDog_Sires] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkDog_Sires_Audit]
           ([Dog_Sire_ID]
           ,[Dog_ID]
           ,[Sire_ID]
           ,[Modified_Date])
     SELECT [Dog_Sire_ID]
           ,[Dog_ID]
           ,[Sire_ID]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Trigger [Dog_Dams_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Dog_Dams_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Dog_Dams_After_Update] 
   ON  [dbo].[lnkDog_Dams] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkDog_Dams_Audit]
           ([Dog_Dam_ID]
           ,[Dog_ID]
           ,[Dam_ID]
           ,[Modified_Date])
     SELECT [Dog_Dam_ID]
           ,[Dog_ID]
           ,[Dam_ID]
           ,GETDATE()
     FROM deleted


END
'
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShows]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShows]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblShows] 
	-- Add the parameters for the stored procedure here
	@Club_ID uniqueidentifier = null,
	@Show_Year_ID int = null,
	@Show_Type_ID int = null,
	@Venue_ID uniqueidentifier = null,
	@Show_Opens datetime = null,
	@Judging_Commences datetime = null,
	@Show_Name varchar(255) = null,
	@Closing_Date date = null,
	@Entries_Complete bit = null,
	@Judges_Allocated bit = null,
	@Split_Classes bit = null,
	@Running_Orders_Allocated bit = null,
	@Ring_Numbers_Allocated bit = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShows]
           ([Club_ID]
           ,[Show_Year_ID]
           ,[Show_Type_ID]
           ,[Venue_ID]
           ,[Show_Opens]
           ,[Judging_Commences]
           ,[Show_Name]
           ,[Closing_Date]
           ,[Entries_Complete]
           ,[Judges_Allocated]
           ,[Split_Classes]
           ,[Running_Orders_Allocated]
           ,[Ring_Numbers_Allocated]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Club_ID
           ,@Show_Year_ID
           ,@Show_Type_ID
           ,@Venue_ID
           ,@Show_Opens
           ,@Judging_Commences
           ,@Show_Name
           ,@Closing_Date
           ,@Entries_Complete
           ,@Judges_Allocated
           ,@Split_Classes
           ,@Running_Orders_Allocated
           ,@Ring_Numbers_Allocated
           ,GETDATE()
           ,@UserId)

	
	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkDog_Sires]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkDog_Sires]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_lnkDog_Sires] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Dog_ID uniqueidentifier = null,
	@Sire_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkDog_Sires]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_Sire_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkDog_Sires]
			   SET [Dog_ID] = @Dog_ID
				  ,[Sire_ID] = @Sire_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_Sire_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkDog_Dams]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkDog_Dams]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_lnkDog_Dams] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Dog_ID uniqueidentifier = null,
	@Dam_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkDog_Dams]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_Dam_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkDog_Dams]
			   SET [Dog_ID] = @Dog_ID
				  ,[Dam_ID] = @Dam_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_Dam_ID = @Original_ID
		END	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblVenues]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblVenues]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblVenues] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Venue_Name varchar(255) = null,
	@Address_ID uniqueidentifier = null,
	@Venue_Contact uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Venue_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblVenues]
			   SET [Venue_Name] = @Venue_Name
				  ,[Address_ID] = @Address_ID
				  ,[Venue_Contact] = @Venue_Contact
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Venue_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShows]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShows]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblShows] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Club_ID uniqueidentifier = null,
	@Show_Year_ID int = null,
	@Show_Type_ID int = null,
	@Venue_ID uniqueidentifier = null,
	@Show_Opens datetime = null,
	@Judging_Commences datetime = null,
	@Show_Name varchar(255) = null,
	@Closing_Date date = null,
	@Entries_Complete bit = null,
	@Judges_Allocated bit = null,
	@Split_Classes bit = null,
	@Running_Orders_Allocated bit = null,
	@Ring_Numbers_Allocated bit = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShows]
			   SET [Club_ID] = @Club_ID
				  ,[Show_Year_ID] = @Show_Year_ID
				  ,[Show_Type_ID] = @Show_Type_ID
				  ,[Venue_ID] = @Venue_ID
				  ,[Show_Opens] = @Show_Opens
				  ,[Judging_Commences] = @Judging_Commences
				  ,[Show_Name] = @Show_Name
				  ,[Closing_Date] = @Closing_Date
				  ,[Entries_Complete] = @Entries_Complete
				  ,[Judges_Allocated] = @Judges_Allocated
				  ,[Split_Classes] = @Split_Classes
				  ,[Running_Orders_Allocated] = @Running_Orders_Allocated
				  ,[Ring_Numbers_Allocated] = @Ring_Numbers_Allocated
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Helpers]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Helpers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblShow_Helpers] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Show_Role_ID int = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Helpers]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Helper_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Helpers]
			   SET [Show_ID] = @Show_ID
				  ,[Person_ID] = @Person_ID
				  ,[Show_Role_ID] = @Show_Role_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Helper_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Final_Classes]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Final_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblShow_Final_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Show_Final_Class_Description varchar(255) = null,
	@Judge_ID uniqueidentifier = null,
	@Stay_Time time = null,
	@Lunch_Time time = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Final_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes]
			   SET [Show_ID] = @Show_ID
				  ,[Show_Entry_Class_ID] = @Show_Entry_Class_ID
				  ,[Show_Final_Class_Description] = @Show_Final_Class_Description
				  ,[Judge_ID] = @Judge_ID
				  ,[Stay_Time] = @Stay_Time
				  ,[Lunch_Time] = @Lunch_Time
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Final_Class_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblGuarantors]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblGuarantors]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblGuarantors] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Guarantor_ID uniqueidentifier = null,
	@Chairman_Person_ID uniqueidentifier = null,
	@Secretary_Person_ID uniqueidentifier = null,
	@Treasurer_Person_ID uniqueidentifier = null,
	@Committee1_Person_ID uniqueidentifier = null,
	@Committee2_Person_ID uniqueidentifier = null,
	@Committee3_Person_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblGuarantors]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Guarantor_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblGuarantors]
			   SET [Show_ID] = @Show_ID
				  ,[Chairman_Person_ID] = @Chairman_Person_ID
				  ,[Secretary_Person_ID] = @Secretary_Person_ID
				  ,[Treasurer_Person_ID] = @Treasurer_Person_ID
				  ,[Committee1_Person_ID] = @Committee1_Person_ID
				  ,[Committee2_Person_ID] = @Committee2_Person_ID
				  ,[Committee3_Person_ID] = @Committee3_Person_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Guarantor_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblEntrants]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblEntrants]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblEntrants] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Catalogue bit = null,
	@Overnight_Camping bit = null,
	@Overpayment money = null,
	@Underpayment money = null,
	@Offer_Of_Help bit = null,
	@Help_Details varchar(max) = null,
	@Withold_Address bit = null,
	@Send_Running_Order bit = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblEntrants]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Entrant_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblEntrants]
			   SET [Show_ID] = @Show_ID
				  ,[Person_ID] = @Person_ID
				  ,[Catalogue] = @Catalogue
				  ,[Overnight_Camping] = @Overnight_Camping
				  ,[Overpayment] = @Overpayment
				  ,[Underpayment] = @Underpayment
				  ,[Offer_Of_Help] = @Offer_Of_Help
				  ,[Help_Details] = @Help_Details
				  ,[Withold_Address] = @Withold_Address
				  ,[Send_Running_Order] = @Send_Running_Order
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Entrant_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Helpers]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Helpers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblShow_Helpers] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Show_Role_ID int = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Helpers]
           ([Show_ID]
           ,[Person_ID]
           ,[Show_Role_ID]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Show_ID
           ,@Person_ID
           ,@Show_Role_ID
           ,GETDATE()
           ,@UserId)




	
	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Final_Classes]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Final_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblShow_Final_Classes] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Show_Final_Class_Description varchar(255) = null,
	@Judge_ID uniqueidentifier = null,
	@Stay_Time time = null,
	@Lunch_Time time = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes]
           ([Show_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_Description]
           ,[Judge_ID]
           ,[Stay_Time]
           ,[Lunch_Time]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Show_ID
           ,@Show_Entry_Class_ID
           ,@Show_Final_Class_Description
           ,@Judge_ID
           ,@Stay_Time
           ,@Lunch_Time
           ,GETDATE()
           ,@UserId)

	
	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblGuarantors]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblGuarantors]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblGuarantors]
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Chairman_Person_ID uniqueidentifier = null,
	@Secretary_Person_ID uniqueidentifier = null,
	@Treasurer_Person_ID uniqueidentifier = null,
	@Committee1_Person_ID uniqueidentifier = null,
	@Committee2_Person_ID uniqueidentifier = null,
	@Committee3_Person_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblGuarantors]
           ([Show_ID]
           ,[Chairman_Person_ID]
           ,[Secretary_Person_ID]
           ,[Treasurer_Person_ID]
           ,[Committee1_Person_ID]
           ,[Committee2_Person_ID]
           ,[Committee3_Person_ID]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Show_ID
           ,@Chairman_Person_ID
           ,@Secretary_Person_ID
           ,@Treasurer_Person_ID
           ,@Committee1_Person_ID
           ,@Committee2_Person_ID
           ,@Committee3_Person_ID
           ,GETDATE()
           ,@UserId)

	RETURN SCOPE_IDENTITY()


END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblEntrants]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblEntrants]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblEntrants] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Catalogue bit = null,
	@Overnight_Camping bit = null,
	@Overpayment money = null,
	@Underpayment money = null,
	@Offer_Of_Help bit = null,
	@Help_Details varchar(max) = null,
	@Withold_Address bit = null,
	@Send_Running_Order bit = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblEntrants]
           ([Show_ID]
           ,[Person_ID]
           ,[Catalogue]
           ,[Overnight_Camping]
           ,[Overpayment]
           ,[Underpayment]
           ,[Offer_Of_Help]
           ,[Help_Details]
           ,[Withold_Address]
           ,[Send_Running_Order]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Show_ID
           ,@Person_ID
           ,@Catalogue
           ,@Overnight_Camping
           ,@Overpayment
           ,@Underpayment
           ,@Offer_Of_Help
           ,@Help_Details
           ,@Withold_Address
           ,@Send_Running_Order
           ,GETDATE()
           ,@UserId)


	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  Trigger [Guarantors_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Guarantors_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Guarantors_After_Update] 
   ON [dbo].[tblGuarantors]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblGuarantors_Audit]
           ([Guarantor_ID]
           ,[Show_ID]
           ,[Chairman_Person_ID]
           ,[Secretary_Person_ID]
           ,[Treasurer_Person_ID]
           ,[Committee1_Person_ID]
           ,[Committee2_Person_ID]
           ,[Committee3_Person_ID]
           ,[Modified_Date])
     SELECT [Guarantor_ID]
           ,[Show_ID]
           ,[Chairman_Person_ID]
           ,[Secretary_Person_ID]
           ,[Treasurer_Person_ID]
           ,[Committee1_Person_ID]
           ,[Committee2_Person_ID]
           ,[Committee3_Person_ID]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Trigger [Entrants_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Entrants_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Entrants_After_Update] 
   ON  [dbo].[tblEntrants] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblEntrants_Audit]
           ([Entrant_ID]
           ,[Show_ID]
           ,[Person_ID]
           ,[Catalogue]
           ,[Overnight_Camping]
           ,[Overpayment]
           ,[Underpayment]
           ,[Offer_Of_Help]
           ,[Help_Details]
           ,[Withold_Address]
           ,[Send_Running_Order]
           ,[Modified_Date])
     SELECT [Entrant_ID]
           ,[Show_ID]
           ,[Person_ID]
           ,[Catalogue]
           ,[Overnight_Camping]
           ,[Overpayment]
           ,[Underpayment]
           ,[Offer_Of_Help]
           ,[Help_Details]
           ,[Withold_Address]
           ,[Send_Running_Order]
           ,GETDATE()
      FROM deleted

END
'
GO
/****** Object:  Trigger [Show_Helpers_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Show_Helpers_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Show_Helpers_After_Update] 
   ON  [dbo].[tblShow_Helpers]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Helpers_Audit]
           ([Show_Helper_ID]
           ,[Show_ID]
           ,[Person_ID]
           ,[Show_Role_ID]
           ,[Modified_Date])
     SELECT [Show_Helper_ID]
           ,[Show_ID]
           ,[Person_ID]
           ,[Show_Role_ID]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Trigger [Show_Final_Classes_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Show_Final_Classes_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER  [dbo].[Show_Final_Classes_After_Update]
   ON  [dbo].[tblShow_Final_Classes]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes_Audit]
           ([Show_Final_Class_ID]
           ,[Show_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_Description]
           ,[Judge_ID]
           ,[Stay_Time]
           ,[Lunch_Time]
           ,[Modified_Date])
     SELECT [Show_Final_Class_ID]
           ,[Show_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_Description]
           ,[Judge_ID]
           ,[Stay_Time]
           ,[Lunch_Time]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Table [dbo].[tblDog_Classes]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDog_Classes](
	[Dog_Class_ID] [uniqueidentifier] NOT NULL,
	[Entrant_ID] [uniqueidentifier] NULL,
	[Dog_ID] [uniqueidentifier] NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_ID] [uniqueidentifier] NULL,
	[Handler_ID] [uniqueidentifier] NULL,
	[Ring_No] [smallint] NULL,
	[Running_Order] [smallint] NULL,
	[Special_Request] [varchar](max) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblDog_Classes_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Class_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblDog_Classes]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblDog_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblDog_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Entrant_ID uniqueidentifier = null,
	@Dog_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Show_Final_Class_ID uniqueidentifier = null,
	@Handler_ID uniqueidentifier = null,
	@Ring_No smallint = null,
	@Running_Order smallint = null,
	@Special_Request varchar(max) = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblDog_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblDog_Classes]
			   SET [Entrant_ID] = @Entrant_ID
				  ,[Show_Entry_Class_ID] = @Show_Entry_Class_ID
				  ,[Show_Final_Class_ID] = @Show_Final_Class_ID
				  ,[Handler_ID] = @Handler_ID
				  ,[Ring_No] = @Ring_No
				  ,[Running_Order] = @Running_Order
				  ,[Special_Request] = @Special_Request
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_Class_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblDog_Classes]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblDog_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblDog_Classes] 
	-- Add the parameters for the stored procedure here
	@Entrant_ID uniqueidentifier = null,
	@Dog_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Handler_ID uniqueidentifier = null,
	@Special_Request varchar(max) = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblDog_Classes]
           ([Entrant_ID]
           ,[Dog_ID]
           ,[Show_Entry_Class_ID]
           ,[Handler_ID]
           ,[Special_Request]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Entrant_ID
           ,@Dog_ID
           ,@Show_Entry_Class_ID
           ,@Handler_ID
           ,@Special_Request
           ,GETDATE()
           ,@UserId)

	RETURN SCOPE_IDENTITY()
END
' 
END
GO
/****** Object:  Trigger [Dog_Classes_After_Update]    Script Date: 02/14/2013 17:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Dog_Classes_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Dog_Classes_After_Update] 
   ON  [dbo].[tblDog_Classes] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblDog_Classes_Audit]
           ([Dog_Class_ID]
           ,[Entrant_ID]
           ,[Dog_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_ID]
           ,[Handler_ID]
           ,[Ring_No]
           ,[Running_Order]
           ,[Special_Request]
           ,[Modified_Date])
     SELECT [Dog_Class_ID]
		   ,[Entrant_ID]
           ,[Dog_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_ID]
           ,[Handler_ID]
           ,[Ring_No]
           ,[Running_Order]
           ,[Special_Request]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Default [DF__tblEntran__Entra__725BF7F6]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblEntran__Entra__725BF7F6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblEntran__Entra__725BF7F6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblEntrants_Audit] ADD  DEFAULT (newid()) FOR [Entrant_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblGuaran__Guara__74444068]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblGuaran__Guara__74444068]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblGuaran__Guara__74444068]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblGuarantors_Audit] ADD  DEFAULT (newid()) FOR [Guarantor_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblPeople__Perso__762C88DA]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblPeople__Perso__762C88DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblPeople__Perso__762C88DA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblPeople_Audit] ADD  DEFAULT (newid()) FOR [Person_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblShows___Show___7DCDAAA2]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblShows___Show___7DCDAAA2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShows___Show___7DCDAAA2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShows_Audit] ADD  DEFAULT (newid()) FOR [Show_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblShow_F__Show___79FD19BE]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblShow_F__Show___79FD19BE]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_F__Show___79FD19BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Final_Classes_Audit] ADD  DEFAULT (newid()) FOR [Show_Final_Class_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblShow_E__Show___7814D14C]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblShow_E__Show___7814D14C]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_E__Show___7814D14C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Entry_Classes_Audit] ADD  DEFAULT (newid()) FOR [Show_Entry_Class_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblShow_H__Show___7BE56230]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblShow_H__Show___7BE56230]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_H__Show___7BE56230]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Helpers_Audit] ADD  DEFAULT (newid()) FOR [Show_Helper_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblVenues__Venue__7FB5F314]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblVenues__Venue__7FB5F314]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblVenues__Venue__7FB5F314]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblVenues_Audit] ADD  DEFAULT (newid()) FOR [Venue_Audit_ID]
END


End
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__07C12930]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__07C12930]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ap__Appli__07C12930]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
END


End
GO
/****** Object:  Default [DF__tblDog_Cl__Dog_C__6E8B6712]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDog_Cl__Dog_C__6E8B6712]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDog_Cl__Dog_C__6E8B6712]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDog_Classes_Audit] ADD  DEFAULT (newid()) FOR [Dog_Class_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblClubs___Club___6CA31EA0]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblClubs___Club___6CA31EA0]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblClubs___Club___6CA31EA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblClubs_Audit] ADD  DEFAULT (newid()) FOR [Club_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblDogs_A__Dog_A__7073AF84]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDogs_A__Dog_A__7073AF84]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDogs_A__Dog_A__7073AF84]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDogs_Audit] ADD  DEFAULT (newid()) FOR [Dog_Audit_ID]
END


End
GO
/****** Object:  Default [DF__tblAddres__Addre__6ABAD62E]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblAddres__Addre__6ABAD62E]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblAddres__Addre__6ABAD62E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblAddresses_Audit] ADD  DEFAULT (newid()) FOR [Address_Audit_ID]
END


End
GO
/****** Object:  Default [DF__lnkDog_Da__Dog_D__66EA454A]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lnkDog_Da__Dog_D__66EA454A]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkDog_Da__Dog_D__66EA454A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkDog_Dams_Audit] ADD  DEFAULT (newid()) FOR [Dog_Dam_Audit_ID]
END


End
GO
/****** Object:  Default [DF__lnkDog_Si__Dog_S__68D28DBC]    Script Date: 02/14/2013 17:35:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lnkDog_Si__Dog_S__68D28DBC]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires_Audit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkDog_Si__Dog_S__68D28DBC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkDog_Sires_Audit] ADD  DEFAULT (newid()) FOR [Dog_Sire_Audit_ID]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0D7A0286]    Script Date: 02/14/2013 17:35:03 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0D7A0286]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__UserI__0D7A0286]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__0E6E26BF]    Script Date: 02/14/2013 17:35:03 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__0E6E26BF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__Mobil__0E6E26BF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__0F624AF8]    Script Date: 02/14/2013 17:35:03 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__0F624AF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__IsAno__0F624AF8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
END


End
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__5AB9788F]    Script Date: 02/14/2013 17:35:03 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__5AB9788F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Pa__PathI__5AB9788F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
END


End
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__43D61337]    Script Date: 02/14/2013 17:35:03 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__43D61337]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ro__RoleI__43D61337]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
END


End
GO
/****** Object:  Default [DF__tblShow_E__Show___7720AD13]    Script Date: 02/14/2013 17:35:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblShow_E__Show___7720AD13]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_E__Show___7720AD13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Entry_Classes] ADD  DEFAULT (newid()) FOR [Show_Entry_Class_ID]
END


End
GO
/****** Object:  Default [DF__aspnet_Perso__Id__662B2B3B]    Script Date: 02/14/2013 17:35:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__662B2B3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Perso__Id__662B2B3B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
END


End
GO
/****** Object:  Default [DF__aspnet_Me__Passw__22751F6C]    Script Date: 02/14/2013 17:35:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__22751F6C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Me__Passw__22751F6C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
END


End
GO
/****** Object:  Default [DF__tblAddres__Addre__69C6B1F5]    Script Date: 02/14/2013 17:35:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblAddres__Addre__69C6B1F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblAddres__Addre__69C6B1F5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblAddresses] ADD  DEFAULT (newid()) FOR [Address_ID]
END


End
GO
/****** Object:  Default [DF__tblPeople__Perso__753864A1]    Script Date: 02/14/2013 17:35:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblPeople__Perso__753864A1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblPeople__Perso__753864A1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblPeople] ADD  DEFAULT (newid()) FOR [Person_ID]
END


End
GO
/****** Object:  Default [DF__tblVenues__Venue__7EC1CEDB]    Script Date: 02/14/2013 17:35:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblVenues__Venue__7EC1CEDB]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblVenues__Venue__7EC1CEDB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblVenues] ADD  DEFAULT (newid()) FOR [Venue_ID]
END


End
GO
/****** Object:  Default [DF__tblDogs__Dog_ID__6F7F8B4B]    Script Date: 02/14/2013 17:35:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDogs__Dog_ID__6F7F8B4B]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDogs__Dog_ID__6F7F8B4B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDogs] ADD  DEFAULT (newid()) FOR [Dog_ID]
END


End
GO
/****** Object:  Default [DF__tblClubs__Club_I__6BAEFA67]    Script Date: 02/14/2013 17:35:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblClubs__Club_I__6BAEFA67]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblClubs__Club_I__6BAEFA67]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblClubs] ADD  DEFAULT (newid()) FOR [Club_ID]
END


End
GO
/****** Object:  Default [DF__lnkDog_Si__Dog_S__67DE6983]    Script Date: 02/14/2013 17:35:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lnkDog_Si__Dog_S__67DE6983]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkDog_Si__Dog_S__67DE6983]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkDog_Sires] ADD  DEFAULT (newid()) FOR [Dog_Sire_ID]
END


End
GO
/****** Object:  Default [DF__lnkDog_Da__Dog_D__65F62111]    Script Date: 02/14/2013 17:35:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lnkDog_Da__Dog_D__65F62111]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkDog_Da__Dog_D__65F62111]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkDog_Dams] ADD  DEFAULT (newid()) FOR [Dog_Dam_ID]
END


End
GO
/****** Object:  Default [DF__tblShows__Show_I__7CD98669]    Script Date: 02/14/2013 17:35:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblShows__Show_I__7CD98669]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShows__Show_I__7CD98669]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShows] ADD  DEFAULT (newid()) FOR [Show_ID]
END


End
GO
/****** Object:  Default [DF__tblShow_H__Show___7AF13DF7]    Script Date: 02/14/2013 17:35:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblShow_H__Show___7AF13DF7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_H__Show___7AF13DF7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Helpers] ADD  DEFAULT (newid()) FOR [Show_Helper_ID]
END


End
GO
/****** Object:  Default [DF__tblShow_F__Show___7908F585]    Script Date: 02/14/2013 17:35:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblShow_F__Show___7908F585]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_F__Show___7908F585]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Final_Classes] ADD  DEFAULT (newid()) FOR [Show_Final_Class_ID]
END


End
GO
/****** Object:  Default [DF__tblGuaran__Guara__73501C2F]    Script Date: 02/14/2013 17:35:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblGuaran__Guara__73501C2F]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblGuaran__Guara__73501C2F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblGuarantors] ADD  DEFAULT (newid()) FOR [Guarantor_ID]
END


End
GO
/****** Object:  Default [DF__tblEntran__Entra__7167D3BD]    Script Date: 02/14/2013 17:35:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblEntran__Entra__7167D3BD]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblEntran__Entra__7167D3BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblEntrants] ADD  DEFAULT (newid()) FOR [Entrant_ID]
END


End
GO
/****** Object:  Default [DF__tblDog_Cl__Dog_C__6D9742D9]    Script Date: 02/14/2013 17:35:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDog_Cl__Dog_C__6D9742D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDog_Cl__Dog_C__6D9742D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDog_Classes] ADD  DEFAULT (newid()) FOR [Dog_Class_ID]
END


End
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0C85DE4D]    Script Date: 02/14/2013 17:35:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0C85DE4D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__59C55456]    Script Date: 02/14/2013 17:35:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__59C55456]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__42E1EEFE]    Script Date: 02/14/2013 17:35:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__42E1EEFE]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK1] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK2]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK3]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK3] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK3]
GO
/****** Object:  ForeignKey [lkpClass_Names_tblShow_Entry_Classes_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [lkpClass_Names_tblShow_Entry_Classes_FK1] FOREIGN KEY([Class_Name_ID])
REFERENCES [dbo].[lkpClass_Names] ([Class_Name_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] CHECK CONSTRAINT [lkpClass_Names_tblShow_Entry_Classes_FK1]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__671F4F74]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__671F4F74]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__681373AD]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__681373AD]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__37703C52]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__37703C52]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__208CD6FA]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__208CD6FA]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__2180FB33]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__2180FB33]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__6166761E]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__6166761E]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK2]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK3]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK3]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__498EEC8D]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__498EEC8D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__489AC854]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__489AC854]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK2]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK3]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK3]
GO
/****** Object:  ForeignKey [tblAddresses_tblPeople_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople]  WITH CHECK ADD  CONSTRAINT [tblAddresses_tblPeople_FK1] FOREIGN KEY([Address_ID])
REFERENCES [dbo].[tblAddresses] ([Address_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] CHECK CONSTRAINT [tblAddresses_tblPeople_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK2]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK3]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK3]
GO
/****** Object:  ForeignKey [tblAddresses_tblVenues_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [tblAddresses_tblVenues_FK1] FOREIGN KEY([Address_ID])
REFERENCES [dbo].[tblAddresses] ([Address_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [tblAddresses_tblVenues_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblVenues_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblVenues_FK1] FOREIGN KEY([Venue_Contact])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [tblPeople_tblVenues_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK2]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK3]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK3]
GO
/****** Object:  ForeignKey [lkpDog_Breeds_tblDogs_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [lkpDog_Breeds_tblDogs_FK1] FOREIGN KEY([Dog_Breed_ID])
REFERENCES [dbo].[lkpDog_Breeds] ([Dog_Breed_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [lkpDog_Breeds_tblDogs_FK1]
GO
/****** Object:  ForeignKey [lkpDog_Gender_tblDogs_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [lkpDog_Gender_tblDogs_FK1] FOREIGN KEY([Dog_Gender_ID])
REFERENCES [dbo].[lkpDog_Gender] ([Dog_Gender_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [lkpDog_Gender_tblDogs_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDogs_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblDogs_FK1] FOREIGN KEY([Breeder_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [tblPeople_tblDogs_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDogs_FK2]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblDogs_FK2] FOREIGN KEY([Owner_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [tblPeople_tblDogs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK2]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK3]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblClubs_FK1]    Script Date: 02/14/2013 17:35:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblClubs_FK1] FOREIGN KEY([Club_Contact])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] CHECK CONSTRAINT [tblPeople_tblClubs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Sires_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [aspnet_Users_lnkDog_Sires_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Sires_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [aspnet_Users_lnkDog_Sires_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Sires_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [aspnet_Users_lnkDog_Sires_FK3]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Sires_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Sires_FK1] FOREIGN KEY([Dog_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [tblDogs_lnkDog_Sires_FK1]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Sires_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Sires_FK2] FOREIGN KEY([Sire_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [tblDogs_lnkDog_Sires_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Dams_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [aspnet_Users_lnkDog_Dams_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Dams_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [aspnet_Users_lnkDog_Dams_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Dams_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [aspnet_Users_lnkDog_Dams_FK3]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Dams_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Dams_FK1] FOREIGN KEY([Dog_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [tblDogs_lnkDog_Dams_FK1]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Dams_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Dams_FK2] FOREIGN KEY([Dam_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [tblDogs_lnkDog_Dams_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK3]
GO
/****** Object:  ForeignKey [lkpShow_Types_tblShows_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [lkpShow_Types_tblShows_FK1] FOREIGN KEY([Show_Type_ID])
REFERENCES [dbo].[lkpShow_Types] ([Show_Type_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [lkpShow_Types_tblShows_FK1]
GO
/****** Object:  ForeignKey [lkpShow_Years_tblShows_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [lkpShow_Years_tblShows_FK1] FOREIGN KEY([Show_Year_ID])
REFERENCES [dbo].[lkpShow_Years] ([Show_Year_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [lkpShow_Years_tblShows_FK1]
GO
/****** Object:  ForeignKey [tblClubs_tblShows_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [tblClubs_tblShows_FK1] FOREIGN KEY([Club_ID])
REFERENCES [dbo].[tblClubs] ([Club_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [tblClubs_tblShows_FK1]
GO
/****** Object:  ForeignKey [tblVenues_tblShows_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [tblVenues_tblShows_FK1] FOREIGN KEY([Venue_ID])
REFERENCES [dbo].[tblVenues] ([Venue_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [tblVenues_tblShows_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK3] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK3]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK7]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK7] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK7]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK8]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK8] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK8]
GO
/****** Object:  ForeignKey [lkpShow_Roles_tblShow_Helpers_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [lkpShow_Roles_tblShow_Helpers_FK1] FOREIGN KEY([Show_Role_ID])
REFERENCES [dbo].[lkpShow_Roles] ([Show_Role_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [lkpShow_Roles_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblShow_Helpers_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblShow_Helpers_FK1] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [tblPeople_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblShow_Helpers_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [tblShows_tblShow_Helpers_FK1] FOREIGN KEY([Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [tblShows_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblShow_Final_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblShow_Final_Classes_FK1] FOREIGN KEY([Judge_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [tblPeople_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Entry_Classes_tblShow_Final_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Entry_Classes_tblShow_Final_Classes_FK1] FOREIGN KEY([Show_Entry_Class_ID])
REFERENCES [dbo].[tblShow_Entry_Classes] ([Show_Entry_Class_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [tblShow_Entry_Classes_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblShow_Final_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblShows_tblShow_Final_Classes_FK1] FOREIGN KEY([Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [tblShows_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK1] FOREIGN KEY([Chairman_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK2] FOREIGN KEY([Secretary_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK2]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK3] FOREIGN KEY([Treasurer_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK4]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK4] FOREIGN KEY([Committee1_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK4]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK5]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK5] FOREIGN KEY([Committee2_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK5]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK6]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK6] FOREIGN KEY([Committee3_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK6]
GO
/****** Object:  ForeignKey [tblShows_tblGuarantors_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblShows_tblGuarantors_FK1] FOREIGN KEY([Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblShows_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblEntrants_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblEntrants_FK1] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [tblPeople_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblEntrants_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [tblShows_tblEntrants_FK1] FOREIGN KEY([Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [tblShows_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK2]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK3]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK3]
GO
/****** Object:  ForeignKey [tblDogs_tblDog_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblDogs_tblDog_Classes_FK1] FOREIGN KEY([Dog_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblDogs_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblEntrants_tblDog_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblEntrants_tblDog_Classes_FK1] FOREIGN KEY([Entrant_ID])
REFERENCES [dbo].[tblEntrants] ([Entrant_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblEntrants_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDog_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblDog_Classes_FK1] FOREIGN KEY([Handler_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblPeople_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Entry_Classes_tblDog_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Entry_Classes_tblDog_Classes_FK1] FOREIGN KEY([Show_Entry_Class_ID])
REFERENCES [dbo].[tblShow_Entry_Classes] ([Show_Entry_Class_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblShow_Entry_Classes_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Final_Classes_tblDog_Classes_FK1]    Script Date: 02/14/2013 17:35:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Final_Classes_tblDog_Classes_FK1] FOREIGN KEY([Show_Final_Class_ID])
REFERENCES [dbo].[tblShow_Final_Classes] ([Show_Final_Class_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblShow_Final_Classes_tblDog_Classes_FK1]
GO

USE [sussexsoftwaresolutions]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [tblShows_lnkLinked_Shows_FK1]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [tblShows_lnkLinked_Shows_FK2]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkLinked__Linke__4CF5691D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [DF__lnkLinked__Linke__4CF5691D]
END

GO

USE [sussexsoftwaresolutions]
GO

/****** Object:  Table [dbo].[lnkLinked_Shows]    Script Date: 02/22/2013 13:39:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]') AND type in (N'U'))
DROP TABLE [dbo].[lnkLinked_Shows]
GO

USE [sussexsoftwaresolutions]
GO

/****** Object:  Table [dbo].[lnkLinked_Shows]    Script Date: 02/22/2013 13:39:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lnkLinked_Shows](
	[Linked_Show_ID] [uniqueidentifier] NOT NULL,
	[Parent_Show_ID] [uniqueidentifier] NOT NULL,
	[Child_Show_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkLinked_Shows_PK] PRIMARY KEY CLUSTERED 
(
	[Linked_Show_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO

ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1]
GO

ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO

ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2]
GO

ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO

ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3]
GO

ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [tblShows_lnkLinked_Shows_FK1] FOREIGN KEY([Parent_Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO

ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [tblShows_lnkLinked_Shows_FK1]
GO

ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [tblShows_lnkLinked_Shows_FK2] FOREIGN KEY([Child_Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO

ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [tblShows_lnkLinked_Shows_FK2]
GO

ALTER TABLE [dbo].[lnkLinked_Shows] ADD  DEFAULT (newid()) FOR [Linked_Show_ID]
GO


USE [sussexsoftwaresolutions]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkLinked__Linke__4FD1D5C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkLinked_Shows_Audit] DROP CONSTRAINT [DF__lnkLinked__Linke__4FD1D5C8]
END

GO

USE [sussexsoftwaresolutions]
GO

/****** Object:  Table [dbo].[lnkDog_Dams_Audit]    Script Date: 02/22/2013 13:50:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[lnkLinked_Shows_Audit]
GO

USE [sussexsoftwaresolutions]
GO

/****** Object:  Table [dbo].[lnkDog_Dams_Audit]    Script Date: 02/22/2013 13:50:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lnkLinked_Shows_Audit](
	[Linked_Show_Audit_ID] [uniqueidentifier] NOT NULL,
	[Linked_Show_ID] [uniqueidentifier] NOT NULL,
	[Parent_Show_ID] [uniqueidentifier] NOT NULL,
	[Child_Show_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkLinked_Shows_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Linked_Show_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[lnkLinked_Shows_Audit] ADD  DEFAULT (newid()) FOR [Linked_Show_Audit_ID]
GO


USE [sussexsoftwaresolutions]
GO

/****** Object:  Trigger [Dog_Dams_After_Update]    Script Date: 02/22/2013 13:51:26 ******/
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Linked_Shows_After_Update]'))
DROP TRIGGER [dbo].[Linked_Shows_After_Update]
GO

USE [sussexsoftwaresolutions]
GO

/****** Object:  Trigger [dbo].[Dog_Dams_After_Update]    Script Date: 02/22/2013 13:51:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Linked_Shows_After_Update] 
   ON  [dbo].[lnkLinked_Shows] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows_Audit]
           ([Linked_Show_ID]
           ,[Parent_Show_ID]
           ,[Child_Show_ID]
           ,[Modified_Date])
     SELECT [Linked_Show_ID]
           ,[Parent_Show_ID]
           ,[Child_Show_ID]
           ,GETDATE()
     FROM deleted


END

GO

USE [sussexsoftwaresolutions]
GO

/****** Object:  StoredProcedure [dbo].[spInsert_lnkLinked_Shows]    Script Date: 03/05/2013 13:34:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_lnkLinked_Shows] 
	-- Add the parameters for the stored procedure here
	@Parent_Show_ID uniqueidentifier = null,
	@Child_Show_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows]
           ([Parent_Show_ID]
           ,[Child_Show_ID]
           ,[Created_Date]
           ,[Created_By])
     VALUES
           (@Parent_Show_ID, @Child_Show_ID, GETDATE(), @UserId)


	RETURN SCOPE_IDENTITY()
END

GO


USE [sussexsoftwaresolutions]
GO

/****** Object:  StoredProcedure [dbo].[spUpdate_lnkLinked_Shows]    Script Date: 03/05/2013 13:40:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_lnkLinked_Shows] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Parent_Show_ID uniqueidentifier = null,
	@Child_Show_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Linked_Show_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows]
			   SET [Parent_Show_ID] = @Parent_Show_ID
				  ,[Child_Show_ID] = @Child_Show_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Linked_Show_ID = @Original_ID
		END
END

GO


