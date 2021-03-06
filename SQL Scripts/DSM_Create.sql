USE [master]
GO
/****** Object:  Database [dsm_2018]    Script Date: 10/05/2017 00:51:36 ******/
CREATE DATABASE [dsm_2018]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dsm_2018', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.EXP_2014\MSSQL\DATA\dsm_2018.mdf' , SIZE = 41984KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dsm_2018_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.EXP_2014\MSSQL\DATA\dsm_2018.ldf' , SIZE = 1219712KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dsm_2018] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dsm_2018].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dsm_2018] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dsm_2018] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dsm_2018] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dsm_2018] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dsm_2018] SET ARITHABORT OFF 
GO
ALTER DATABASE [dsm_2018] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dsm_2018] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dsm_2018] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dsm_2018] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dsm_2018] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dsm_2018] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dsm_2018] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dsm_2018] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dsm_2018] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dsm_2018] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dsm_2018] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dsm_2018] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dsm_2018] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dsm_2018] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dsm_2018] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dsm_2018] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dsm_2018] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dsm_2018] SET RECOVERY FULL 
GO
ALTER DATABASE [dsm_2018] SET  MULTI_USER 
GO
ALTER DATABASE [dsm_2018] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dsm_2018] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dsm_2018] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dsm_2018] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dsm_2018] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dsm_2018]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 10/05/2017 00:51:36 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  UserDefinedFunction [fnSplitter]    Script Date: 10/05/2017 00:51:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [fnSplitter] (@IDs Varchar(1000) )  
Returns @Tbl_IDs Table  (ID Int)  As  

Begin 
 -- Append comma
 Set @IDs =  @IDs + ',' 
 -- Indexes to keep the position of searching
 Declare @Pos1 Int
 Declare @pos2 Int
 
 -- Start from first character 
 Set @Pos1=1
 Set @Pos2=1

 While @Pos1<Len(@IDs)
 Begin
  Set @Pos1 = CharIndex(',',@IDs,@Pos1)
  Insert @Tbl_IDs Select  Cast(Substring(@IDs,@Pos2,@Pos1-@Pos2) As Int)
  -- Go to next non comma character
  Set @Pos2=@Pos1+1
  -- Search from the next charcater
  Set @Pos1 = @Pos1+1
 End 
 Return
End


GO
/****** Object:  Table [aspnet_Applications]    Script Date: 10/05/2017 00:51:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [aspnet_Membership]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL DEFAULT ((0)),
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [aspnet_Paths]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [aspnet_PersonalizationAllUsers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [aspnet_PersonalizationPerUser]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [aspnet_Profile]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [aspnet_Roles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [aspnet_SchemaVersions]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [aspnet_Users]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [aspnet_UsersInRoles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [aspnet_WebEvent_Events]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [aspnet_WebEvent_Events](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Combined]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Combined](
	[Show name] [nvarchar](255) NULL,
	[Owner Id] [float] NULL,
	[Owner title] [nvarchar](255) NULL,
	[Owner first name] [nvarchar](255) NULL,
	[Owner last name] [nvarchar](255) NULL,
	[Owner address 1] [nvarchar](255) NULL,
	[Owner address 2] [nvarchar](255) NULL,
	[Owner town] [nvarchar](255) NULL,
	[Owner county] [nvarchar](255) NULL,
	[Owner postcode] [nvarchar](255) NULL,
	[Owner country] [nvarchar](255) NULL,
	[Owner phone] [nvarchar](255) NULL,
	[Owner email address] [nvarchar](255) NULL,
	[Owner registered name] [nvarchar](255) NULL,
	[Registered name] [nvarchar](255) NULL,
	[Registered number] [nvarchar](255) NULL,
	[Breed] [nvarchar](255) NULL,
	[Sex] [nvarchar](255) NULL,
	[Date of birth] [datetime] NULL,
	[Merit points] [float] NULL,
	[Entered classes] [float] NULL,
	[Preferred judge] [nvarchar](255) NULL,
	[Extras] [nvarchar](255) NULL,
	[Confirmed acceptance of declaration] [nvarchar](255) NULL,
	[Withdraw all entries if balloted out of Championship C] [nvarchar](255) NULL,
	[Show address in catalogue] [nvarchar](255) NULL,
	[Notes to organiser] [nvarchar](255) NULL,
	[Date of Entry] [nvarchar](255) NULL,
	[Import] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [lkpClass_Names]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lkpClass_Names](
	[Class_Name_ID] [int] IDENTITY(1,1) NOT NULL,
	[Class_Name_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpClass_Names_PK] PRIMARY KEY CLUSTERED 
(
	[Class_Name_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [lkpDog_Breeds]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lkpDog_Breeds](
	[Dog_Breed_ID] [int] IDENTITY(1,1) NOT NULL,
	[Dog_Breed_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpDog_Breeds_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Breed_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [lkpDog_Gender]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lkpDog_Gender](
	[Dog_Gender_ID] [int] IDENTITY(1,1) NOT NULL,
	[Dog_Gender] [varchar](200) NOT NULL,
 CONSTRAINT [lkpDog_Gender_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Gender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [lkpShow_Roles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lkpShow_Roles](
	[Show_Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Role_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpShow_Roles_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [lkpShow_Types]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lkpShow_Types](
	[Show_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Type_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpShow_Types_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [lkpShow_Years]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lkpShow_Years](
	[Show_Year_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Year] [smallint] NOT NULL,
 CONSTRAINT [lkpShow_Years_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Year_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lnkDog_Owners]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lnkDog_Owners](
	[Dog_Owner_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Owner_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkDog_Owners_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Owner_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lnkDog_Owners_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lnkDog_Owners_Audit](
	[Dog_Owner_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_Owner_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Owner_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkDog_Owners_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Owner_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lnkLinked_Shows]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lnkLinked_Shows](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lnkLinked_Shows_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lnkLinked_Shows_Audit](
	[Linked_Show_Audit_ID] [uniqueidentifier] NOT NULL,
	[Linked_Show_ID] [uniqueidentifier] NOT NULL,
	[Parent_Show_ID] [uniqueidentifier] NOT NULL,
	[Child_Show_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkLinked_Shows_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Linked_Show_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lnkUser_Person]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lnkUser_Person](
	[User_Person_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[User_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkUser_Person_PK] PRIMARY KEY CLUSTERED 
(
	[User_Person_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lnkUser_Person_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lnkUser_Person_Audit](
	[User_Person_Audit_ID] [uniqueidentifier] NOT NULL,
	[User_Person_ID] [uniqueidentifier] NOT NULL,
	[User_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkUser_Person_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[User_Person_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tblAddresses]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblAddresses](
	[Address_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblAddresses_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblAddresses_Audit](
	[Address_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblCatalogueListByRingNumber]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblCatalogueListByRingNumber](
	[Ring_No] [smallint] NOT NULL,
	[Owner] [varchar](max) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Dog_KC_Name] [varchar](max) NOT NULL,
	[Dog_Breed_Description] [varchar](max) NOT NULL,
	[Dog_Gender] [varchar](max) NOT NULL,
	[Date_Of_Birth] [varchar](50) NOT NULL,
	[Class_Name] [varchar](max) NOT NULL,
	[Catalogue] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblClubs]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblClubs](
	[Club_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblClubs_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblClubs_Audit](
	[Club_Audit_ID] [uniqueidentifier] NOT NULL,
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Club_Long_Name] [varchar](255) NULL,
	[Club_Short_Name] [varchar](128) NULL,
	[Club_Contact] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [PK_tblClubs_Audit] PRIMARY KEY CLUSTERED 
(
	[Club_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblDog_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblDog_Classes](
	[Dog_Class_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Entrant_ID] [uniqueidentifier] NULL,
	[Dog_ID] [uniqueidentifier] NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Preferred_Part] [int] NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblDog_Classes_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblDog_Classes_Audit](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [tblDogs]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblDogs](
	[Dog_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_KC_Name] [varchar](255) NULL,
	[Dog_Pet_Name] [varchar](128) NULL,
	[Dog_Breed_ID] [int] NULL,
	[Dog_Gender_ID] [int] NULL,
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
	[Breeder] [varchar](255) NULL,
	[Sire] [varchar](255) NULL,
	[Dam] [varchar](255) NULL,
 CONSTRAINT [tblDogs_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblDogs_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [tblDogs_Audit](
	[Dog_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dog_KC_Name] [varchar](255) NULL,
	[Dog_Pet_Name] [varchar](128) NULL,
	[Dog_Breed_ID] [int] NULL,
	[Dog_Gender_ID] [int] NULL,
	[Reg_No] [varchar](50) NULL,
	[Date_Of_Birth] [date] NULL,
	[Year_Of_Birth] [smallint] NULL,
	[Merit_Points] [smallint] NULL,
	[NLWU] [bit] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblDogs_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblEntrants]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblEntrants](
	[Entrant_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__tblEntran__Entra__326C5B6A]  DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NULL,
	[Catalogue] [bit] NULL,
	[Overnight_Camping] [bit] NULL,
	[Overpayment] [money] NULL,
	[Underpayment] [money] NULL,
	[Offer_Of_Help] [bit] NULL,
	[Help_Details] [varchar](max) NULL,
	[Withold_Address] [bit] NULL,
	[Send_Running_Order] [bit] NULL,
	[Entry_Date] [datetime] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblEntrants_PK] PRIMARY KEY CLUSTERED 
(
	[Entrant_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblEntrants_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblEntrants_Audit](
	[Entrant_Audit_ID] [uniqueidentifier] NOT NULL,
	[Entrant_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NULL,
	[Catalogue] [bit] NULL,
	[Overnight_Camping] [bit] NULL,
	[Overpayment] [money] NULL,
	[Underpayment] [money] NULL,
	[Offer_Of_Help] [bit] NULL,
	[Help_Details] [varchar](max) NULL,
	[Withold_Address] [bit] NULL,
	[Send_Running_Order] [bit] NULL,
	[Modified_Date] [datetime] NULL,
	[Entry_Date] [datetime] NULL,
 CONSTRAINT [tblEntrants_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Entrant_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblEntryClassCount]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblEntryClassCount](
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL,
	[Class_Name_Description] [varchar](255) NOT NULL,
	[Class_No] [smallint] NOT NULL,
	[Entries] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblFinalClassNames]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblFinalClassNames](
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL,
	[Class_Name_Description] [varchar](255) NOT NULL,
	[Class_No] [smallint] NOT NULL,
	[Show_Final_Class_Description] [varchar](255) NOT NULL,
	[Entries] [smallint] NOT NULL,
	[OrderBy] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblGuarantors]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblGuarantors](
	[Guarantor_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tblGuarantors_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblGuarantors_Audit](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tblJudges]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblJudges](
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL,
	[Primary_Judge] [nvarchar](150) NULL,
	[Reserve_Judge] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [tblOwnersDogsClassesDrawnList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblOwnersDogsClassesDrawnList](
	[Ring_No] [smallint] NOT NULL,
	[Owner] [varchar](max) NOT NULL,
	[Dog_KC_Name] [varchar](max) NOT NULL,
	[Running_Order] [smallint] NULL,
	[Offer_Of_Help] [bit] NULL,
	[Show_Final_Class_Description] [varchar](255) NOT NULL,
	[Entrant_ID] [uniqueidentifier] NOT NULL,
	[Owner_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dog_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_Final_Class_ID] [uniqueidentifier] NOT NULL,
	[Entry_Date] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblOwnersDogsClassesHandlers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblOwnersDogsClassesHandlers](
	[Dog_Class_ID] [uniqueidentifier] NOT NULL,
	[Owner_ID] [uniqueidentifier] NOT NULL,
	[Handler_ID] [uniqueidentifier] NOT NULL,
	[Owner] [varchar](max) NOT NULL,
	[Dog_KC_Name] [varchar](max) NOT NULL,
	[Class] [varchar](255) NOT NULL,
	[Handler] [varchar](255) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblPeople]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblPeople](
	[Person_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Person_Title] [varchar](50) NULL,
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
	[Person_OE_Owner_ID] [bigint] NULL,
 CONSTRAINT [tblPeople_PK] PRIMARY KEY CLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblPeople_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblPeople_Audit](
	[Person_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Person_Surname] [varchar](50) NULL,
	[Person_Forename] [varchar](50) NULL,
	[Address_ID] [uniqueidentifier] NULL,
	[Person_Mobile] [varchar](20) NULL,
	[Person_Landline] [varchar](20) NULL,
	[Person_Email] [varchar](255) NULL,
	[Modified_Date] [datetime] NULL,
	[Person_OE_Owner_ID] [bigint] NULL,
 CONSTRAINT [tblPeople_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Person_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblRing_Numbers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblRing_Numbers](
	[Ring_No] [smallint] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dog_KC_Name] [varchar](255) NOT NULL,
	[Person_Forename] [varchar](50) NULL,
	[Person_Surname] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblShow_Entry_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblShow_Entry_Classes](
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__tblShow_E__Show___0E64051E]  DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Class_Name_ID] [int] NOT NULL,
	[Class_No] [smallint] NULL,
	[Gender] [smallint] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShow_Entry_Classes_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Entry_Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tblShow_Entry_Classes_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblShow_Entry_Classes_Audit](
	[Show_Entry_Class_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Class_Name_ID] [int] NOT NULL,
	[Class_No] [smallint] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShow_Entry_Classes_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Entry_Class_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tblShow_Final_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblShow_Final_Classes](
	[Show_Final_Class_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__tblShow_F__Show___73852659]  DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_Description] [varchar](255) NOT NULL,
	[Show_Final_Class_No] [smallint] NULL,
	[Judge_ID] [uniqueidentifier] NULL,
	[Stay_Time] [datetime] NULL,
	[Lunch_Time] [datetime] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShow_Final_Classes_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Final_Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblShow_Final_Classes_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblShow_Final_Classes_Audit](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblShow_Helpers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblShow_Helpers](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tblShow_Helpers_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblShow_Helpers_Audit](
	[Show_Helper_Audit_ID] [uniqueidentifier] NOT NULL,
	[Show_Helper_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Show_Role_ID] [int] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShow_Helpers_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Helper_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tblShows]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblShows](
	[Show_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__tblShows__Show_I__719CDDE7]  DEFAULT (newid()),
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Show_Year_ID] [int] NOT NULL,
	[Show_Type_ID] [int] NULL,
	[Venue_ID] [uniqueidentifier] NULL,
	[Show_Opens] [datetime] NULL,
	[Judging_Commences] [datetime] NULL,
	[Show_Name] [varchar](255) NULL,
	[Closing_Date] [datetime] NULL,
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
	[MaxClassesPerDog] [smallint] NULL,
 CONSTRAINT [tblShows_PK] PRIMARY KEY CLUSTERED 
(
	[Show_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblShows_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblShows_Audit](
	[Show_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblSpecialRequestList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblSpecialRequestList](
	[Ring_No] [smallint] NOT NULL,
	[Owner] [varchar](max) NOT NULL,
	[Dog_KC_Name] [varchar](max) NOT NULL,
	[Special_Request] [varchar](max) NULL,
	[Class_Name] [varchar](max) NOT NULL,
	[Dog_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_Final_Class_ID] [uniqueidentifier] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblVenues]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblVenues](
	[Venue_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [tblVenues_Audit]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblVenues_Audit](
	[Venue_Audit_ID] [uniqueidentifier] NOT NULL,
	[Venue_ID] [uniqueidentifier] NOT NULL,
	[Venue_Name] [varchar](255) NOT NULL,
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Venue_Contact] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblVenues_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Venue_Audit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [vw_aspnet_Applications]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  View [vw_aspnet_MembershipUsers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_MembershipUsers]
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
  
GO
/****** Object:  View [vw_aspnet_Profiles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  View [vw_aspnet_Roles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  View [vw_aspnet_Users]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  View [vw_aspnet_UsersInRoles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  View [vw_aspnet_WebPartState_Paths]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  View [vw_aspnet_WebPartState_Shared]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  View [vw_aspnet_WebPartState_User]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
/****** Object:  View [vwCatalogueList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





  CREATE VIEW [vwCatalogueList]
  AS select e.Show_ID as Show_ID
	,dc.Ring_No as Ring_No
	,ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Surname,'') + ' ', '') as PostalName
	,ISNULL(NULLIF(owners.Person_Surname,'') + ', ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,e.Withold_Address
	,ISNULL(NULLIF(a.Address_1,'') + ', ', '')
	+ ISNULL(NULLIF(a.Address_2,'') + ', ', '')
	+ ISNULL(NULLIF(a.Address_Town,'') + ', ', '')
	+ ISNULL(NULLIF(a.Address_City,'') + ', ', '')
	+ ISNULL(NULLIF(a.Address_County,'') + '. ', '')
	+ ISNULL(NULLIF(a.Address_Postcode,'') + ' ', '')
	as Address
	,owners.Person_Email
	,d.Dog_KC_Name
	,b.Dog_Breed_Description
	,g.Dog_Gender
	,COALESCE(NULLIF(LEFT(CONVERT(VARCHAR, d.Date_Of_Birth, 103), 10),''),
	NULLIF(RIGHT(CONVERT(VARCHAR, d.Year_Of_Birth, 103),4),''),'Unknown') as Date_Of_Birth
	,ISNULL(NULLIF(d.Breeder,''),'Unknown') as Breeder
	,ISNULL(NULLIF(d.Sire,''),'Unknown') as Sire	
	,ISNULL(NULLIF(d.Dam,''),'Unknown') as Dam
	,sfc.Show_Final_Class_No as Class_No
	,CONVERT(VARCHAR, sec.Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,e.Catalogue
	,e.Send_Running_Order
FROM [dbo].[tblDog_Classes] dc
inner join [dbo].[tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
inner join [dbo].[lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [dbo].[tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [dbo].[tblAddresses] a
on owners.Address_ID = a.Address_ID
and a.Deleted_By is null
inner join [dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [dbo].[tblShow_Entry_Classes] sec
on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join [dbo].[tblShows] s
on sec.Show_ID = s.Show_ID
inner join [dbo].[tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
inner join [dbo].[lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join [dbo].[lkpDog_Breeds] b
on d.Dog_Breed_ID = b.Dog_Breed_ID
inner join [dbo].[lkpDog_Gender] g
on d.Dog_Gender_ID = g.Dog_Gender_ID

where dc.Deleted_By is null





GO
ALTER TABLE [aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [lnkLinked_Shows] ADD  DEFAULT (newid()) FOR [Linked_Show_ID]
GO
ALTER TABLE [lnkLinked_Shows_Audit] ADD  DEFAULT (newid()) FOR [Linked_Show_Audit_ID]
GO
ALTER TABLE [lnkUser_Person_Audit] ADD  DEFAULT (newid()) FOR [User_Person_Audit_ID]
GO
ALTER TABLE [tblClubs_Audit] ADD  DEFAULT (newid()) FOR [Club_Audit_ID]
GO
ALTER TABLE [tblDog_Classes_Audit] ADD  DEFAULT (newid()) FOR [Dog_Class_Audit_ID]
GO
ALTER TABLE [tblEntrants_Audit] ADD  DEFAULT (newid()) FOR [Entrant_Audit_ID]
GO
ALTER TABLE [tblGuarantors_Audit] ADD  DEFAULT (newid()) FOR [Guarantor_Audit_ID]
GO
ALTER TABLE [tblShow_Final_Classes_Audit] ADD  DEFAULT (newid()) FOR [Show_Final_Class_Audit_ID]
GO
ALTER TABLE [tblShow_Helpers] ADD  DEFAULT (newid()) FOR [Show_Helper_ID]
GO
ALTER TABLE [tblShow_Helpers_Audit] ADD  DEFAULT (newid()) FOR [Show_Helper_Audit_ID]
GO
ALTER TABLE [tblVenues_Audit] ADD  DEFAULT (newid()) FOR [Venue_Audit_ID]
GO
ALTER TABLE [aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [aspnet_Paths] ([PathId])
GO
ALTER TABLE [aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [aspnet_Paths] ([PathId])
GO
ALTER TABLE [aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [aspnet_Roles] ([RoleId])
GO
ALTER TABLE [aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkDog_Owners]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Owners_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkDog_Owners] CHECK CONSTRAINT [aspnet_Users_lnkDog_Owners_FK1]
GO
ALTER TABLE [lnkDog_Owners]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Owners_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkDog_Owners] CHECK CONSTRAINT [aspnet_Users_lnkDog_Owners_FK2]
GO
ALTER TABLE [lnkDog_Owners]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Owners_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkDog_Owners] CHECK CONSTRAINT [aspnet_Users_lnkDog_Owners_FK3]
GO
ALTER TABLE [lnkDog_Owners]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Owners_FK1] FOREIGN KEY([Dog_ID])
REFERENCES [tblDogs] ([Dog_ID])
GO
ALTER TABLE [lnkDog_Owners] CHECK CONSTRAINT [tblDogs_lnkDog_Owners_FK1]
GO
ALTER TABLE [lnkDog_Owners]  WITH CHECK ADD  CONSTRAINT [tblPeople_lnkDog_Owners_FK1] FOREIGN KEY([Owner_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [lnkDog_Owners] CHECK CONSTRAINT [tblPeople_lnkDog_Owners_FK1]
GO
ALTER TABLE [lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1]
GO
ALTER TABLE [lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2]
GO
ALTER TABLE [lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3]
GO
ALTER TABLE [lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [tblShows_lnkLinked_Shows_FK1] FOREIGN KEY([Parent_Show_ID])
REFERENCES [tblShows] ([Show_ID])
GO
ALTER TABLE [lnkLinked_Shows] CHECK CONSTRAINT [tblShows_lnkLinked_Shows_FK1]
GO
ALTER TABLE [lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [tblShows_lnkLinked_Shows_FK2] FOREIGN KEY([Child_Show_ID])
REFERENCES [tblShows] ([Show_ID])
GO
ALTER TABLE [lnkLinked_Shows] CHECK CONSTRAINT [tblShows_lnkLinked_Shows_FK2]
GO
ALTER TABLE [lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkUser_Person_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkUser_Person] CHECK CONSTRAINT [aspnet_Users_lnkUser_Person_FK1]
GO
ALTER TABLE [lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkUser_Person_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkUser_Person] CHECK CONSTRAINT [aspnet_Users_lnkUser_Person_FK2]
GO
ALTER TABLE [lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkUser_Person_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkUser_Person] CHECK CONSTRAINT [aspnet_Users_lnkUser_Person_FK3]
GO
ALTER TABLE [lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [tblPeople_lnkUser_Person_FK2] FOREIGN KEY([Person_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [lnkUser_Person] CHECK CONSTRAINT [tblPeople_lnkUser_Person_FK2]
GO
ALTER TABLE [lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [tblUsers_lnkUser_Person_FK1] FOREIGN KEY([User_ID])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [lnkUser_Person] CHECK CONSTRAINT [tblUsers_lnkUser_Person_FK1]
GO
ALTER TABLE [tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK1]
GO
ALTER TABLE [tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK2]
GO
ALTER TABLE [tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK3]
GO
ALTER TABLE [tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK1]
GO
ALTER TABLE [tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK2]
GO
ALTER TABLE [tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK3]
GO
ALTER TABLE [tblClubs]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblClubs_FK1] FOREIGN KEY([Club_Contact])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblClubs] CHECK CONSTRAINT [tblPeople_tblClubs_FK1]
GO
ALTER TABLE [tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK1]
GO
ALTER TABLE [tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK2]
GO
ALTER TABLE [tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK3]
GO
ALTER TABLE [tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblDogs_tblDog_Classes_FK1] FOREIGN KEY([Dog_ID])
REFERENCES [tblDogs] ([Dog_ID])
GO
ALTER TABLE [tblDog_Classes] CHECK CONSTRAINT [tblDogs_tblDog_Classes_FK1]
GO
ALTER TABLE [tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblEntrants_tblDog_Classes_FK1] FOREIGN KEY([Entrant_ID])
REFERENCES [tblEntrants] ([Entrant_ID])
GO
ALTER TABLE [tblDog_Classes] CHECK CONSTRAINT [tblEntrants_tblDog_Classes_FK1]
GO
ALTER TABLE [tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblDog_Classes_FK1] FOREIGN KEY([Handler_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblDog_Classes] CHECK CONSTRAINT [tblPeople_tblDog_Classes_FK1]
GO
ALTER TABLE [tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Entry_Classes_tblDog_Classes_FK1] FOREIGN KEY([Show_Entry_Class_ID])
REFERENCES [tblShow_Entry_Classes] ([Show_Entry_Class_ID])
GO
ALTER TABLE [tblDog_Classes] CHECK CONSTRAINT [tblShow_Entry_Classes_tblDog_Classes_FK1]
GO
ALTER TABLE [tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Final_Classes_tblDog_Classes_FK1] FOREIGN KEY([Show_Final_Class_ID])
REFERENCES [tblShow_Final_Classes] ([Show_Final_Class_ID])
GO
ALTER TABLE [tblDog_Classes] CHECK CONSTRAINT [tblShow_Final_Classes_tblDog_Classes_FK1]
GO
ALTER TABLE [tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK1]
GO
ALTER TABLE [tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK2]
GO
ALTER TABLE [tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK3]
GO
ALTER TABLE [tblDogs]  WITH CHECK ADD  CONSTRAINT [lkpDog_Breeds_tblDogs_FK1] FOREIGN KEY([Dog_Breed_ID])
REFERENCES [lkpDog_Breeds] ([Dog_Breed_ID])
GO
ALTER TABLE [tblDogs] CHECK CONSTRAINT [lkpDog_Breeds_tblDogs_FK1]
GO
ALTER TABLE [tblDogs]  WITH CHECK ADD  CONSTRAINT [lkpDog_Gender_tblDogs_FK1] FOREIGN KEY([Dog_Gender_ID])
REFERENCES [lkpDog_Gender] ([Dog_Gender_ID])
GO
ALTER TABLE [tblDogs] CHECK CONSTRAINT [lkpDog_Gender_tblDogs_FK1]
GO
ALTER TABLE [tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK1]
GO
ALTER TABLE [tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK2]
GO
ALTER TABLE [tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK3]
GO
ALTER TABLE [tblEntrants]  WITH CHECK ADD  CONSTRAINT [tblShows_tblEntrants_FK1] FOREIGN KEY([Show_ID])
REFERENCES [tblShows] ([Show_ID])
GO
ALTER TABLE [tblEntrants] CHECK CONSTRAINT [tblShows_tblEntrants_FK1]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK1]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK2]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK3]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK1] FOREIGN KEY([Chairman_Person_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK1]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK2] FOREIGN KEY([Secretary_Person_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK2]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK3] FOREIGN KEY([Treasurer_Person_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK3]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK4] FOREIGN KEY([Committee1_Person_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK4]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK5] FOREIGN KEY([Committee2_Person_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK5]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK6] FOREIGN KEY([Committee3_Person_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK6]
GO
ALTER TABLE [tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblShows_tblGuarantors_FK1] FOREIGN KEY([Show_ID])
REFERENCES [tblShows] ([Show_ID])
GO
ALTER TABLE [tblGuarantors] CHECK CONSTRAINT [tblShows_tblGuarantors_FK1]
GO
ALTER TABLE [tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK1]
GO
ALTER TABLE [tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK2]
GO
ALTER TABLE [tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK3]
GO
ALTER TABLE [tblPeople]  WITH CHECK ADD  CONSTRAINT [tblAddresses_tblPeople_FK1] FOREIGN KEY([Address_ID])
REFERENCES [tblAddresses] ([Address_ID])
GO
ALTER TABLE [tblPeople] CHECK CONSTRAINT [tblAddresses_tblPeople_FK1]
GO
ALTER TABLE [tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK1] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK1]
GO
ALTER TABLE [tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK2]
GO
ALTER TABLE [tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK3] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK3]
GO
ALTER TABLE [tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [lkpClass_Names_tblShow_Entry_Classes_FK1] FOREIGN KEY([Class_Name_ID])
REFERENCES [lkpClass_Names] ([Class_Name_ID])
GO
ALTER TABLE [tblShow_Entry_Classes] CHECK CONSTRAINT [lkpClass_Names_tblShow_Entry_Classes_FK1]
GO
ALTER TABLE [tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK1]
GO
ALTER TABLE [tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK2]
GO
ALTER TABLE [tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK3]
GO
ALTER TABLE [tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblShow_Final_Classes_FK1] FOREIGN KEY([Judge_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblShow_Final_Classes] CHECK CONSTRAINT [tblPeople_tblShow_Final_Classes_FK1]
GO
ALTER TABLE [tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Entry_Classes_tblShow_Final_Classes_FK1] FOREIGN KEY([Show_Entry_Class_ID])
REFERENCES [tblShow_Entry_Classes] ([Show_Entry_Class_ID])
GO
ALTER TABLE [tblShow_Final_Classes] CHECK CONSTRAINT [tblShow_Entry_Classes_tblShow_Final_Classes_FK1]
GO
ALTER TABLE [tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblShows_tblShow_Final_Classes_FK1] FOREIGN KEY([Show_ID])
REFERENCES [tblShows] ([Show_ID])
GO
ALTER TABLE [tblShow_Final_Classes] CHECK CONSTRAINT [tblShows_tblShow_Final_Classes_FK1]
GO
ALTER TABLE [tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK3] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK3]
GO
ALTER TABLE [tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK7] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK7]
GO
ALTER TABLE [tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK8] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK8]
GO
ALTER TABLE [tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [lkpShow_Roles_tblShow_Helpers_FK1] FOREIGN KEY([Show_Role_ID])
REFERENCES [lkpShow_Roles] ([Show_Role_ID])
GO
ALTER TABLE [tblShow_Helpers] CHECK CONSTRAINT [lkpShow_Roles_tblShow_Helpers_FK1]
GO
ALTER TABLE [tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblShow_Helpers_FK1] FOREIGN KEY([Person_ID])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblShow_Helpers] CHECK CONSTRAINT [tblPeople_tblShow_Helpers_FK1]
GO
ALTER TABLE [tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [tblShows_tblShow_Helpers_FK1] FOREIGN KEY([Show_ID])
REFERENCES [tblShows] ([Show_ID])
GO
ALTER TABLE [tblShow_Helpers] CHECK CONSTRAINT [tblShows_tblShow_Helpers_FK1]
GO
ALTER TABLE [tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK1]
GO
ALTER TABLE [tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK2]
GO
ALTER TABLE [tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK3]
GO
ALTER TABLE [tblShows]  WITH CHECK ADD  CONSTRAINT [lkpShow_Types_tblShows_FK1] FOREIGN KEY([Show_Type_ID])
REFERENCES [lkpShow_Types] ([Show_Type_ID])
GO
ALTER TABLE [tblShows] CHECK CONSTRAINT [lkpShow_Types_tblShows_FK1]
GO
ALTER TABLE [tblShows]  WITH CHECK ADD  CONSTRAINT [lkpShow_Years_tblShows_FK1] FOREIGN KEY([Show_Year_ID])
REFERENCES [lkpShow_Years] ([Show_Year_ID])
GO
ALTER TABLE [tblShows] CHECK CONSTRAINT [lkpShow_Years_tblShows_FK1]
GO
ALTER TABLE [tblShows]  WITH CHECK ADD  CONSTRAINT [tblClubs_tblShows_FK1] FOREIGN KEY([Club_ID])
REFERENCES [tblClubs] ([Club_ID])
GO
ALTER TABLE [tblShows] CHECK CONSTRAINT [tblClubs_tblShows_FK1]
GO
ALTER TABLE [tblShows]  WITH CHECK ADD  CONSTRAINT [tblVenues_tblShows_FK1] FOREIGN KEY([Venue_ID])
REFERENCES [tblVenues] ([Venue_ID])
GO
ALTER TABLE [tblShows] CHECK CONSTRAINT [tblVenues_tblShows_FK1]
GO
ALTER TABLE [tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK1] FOREIGN KEY([Created_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK1]
GO
ALTER TABLE [tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK2] FOREIGN KEY([Modified_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK2]
GO
ALTER TABLE [tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [aspnet_Users] ([UserId])
GO
ALTER TABLE [tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK3]
GO
ALTER TABLE [tblVenues]  WITH CHECK ADD  CONSTRAINT [tblAddresses_tblVenues_FK1] FOREIGN KEY([Address_ID])
REFERENCES [tblAddresses] ([Address_ID])
GO
ALTER TABLE [tblVenues] CHECK CONSTRAINT [tblAddresses_tblVenues_FK1]
GO
ALTER TABLE [tblVenues]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblVenues_FK1] FOREIGN KEY([Venue_Contact])
REFERENCES [tblPeople] ([Person_ID])
GO
ALTER TABLE [tblVenues] CHECK CONSTRAINT [tblPeople_tblVenues_FK1]
GO
/****** Object:  StoredProcedure [aspnet_AnyDataInTables]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
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
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [aspnet_Applications_CreateApplication]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Applications_CreateApplication]
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
END
GO
/****** Object:  StoredProcedure [aspnet_CheckSchemaVersion]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_CheckSchemaVersion]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_ChangePasswordQuestionAndAnswer]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_CreateUser]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_CreateUser]
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
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

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

END
GO
/****** Object:  StoredProcedure [aspnet_Membership_FindUsersByEmail]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_FindUsersByEmail]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_FindUsersByName]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_FindUsersByName]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_GetAllUsers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_GetAllUsers]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_GetNumberOfUsersOnline]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_GetPassword]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_GetPassword]
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
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
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

END
GO
/****** Object:  StoredProcedure [aspnet_Membership_GetPasswordWithFormat]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_GetPasswordWithFormat]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_GetUserByEmail]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_GetUserByEmail]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_GetUserByName]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_GetUserByName]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_GetUserByUserId]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_GetUserByUserId]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_ResetPassword]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_ResetPassword]
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
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
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

END
GO
/****** Object:  StoredProcedure [aspnet_Membership_SetPassword]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_SetPassword]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_UnlockUser]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_UnlockUser]
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
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_UpdateUser]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_UpdateUser]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Membership_UpdateUserInfo]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Membership_UpdateUserInfo]
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
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
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

END
GO
/****** Object:  StoredProcedure [aspnet_Paths_CreatePath]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Paths_CreatePath]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Personalization_GetApplicationId]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationAdministration_DeleteAllState] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationAdministration_FindState]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationAdministration_FindState] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationAdministration_GetCountOfState] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationAdministration_ResetSharedState] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationAdministration_ResetUserState] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationAllUsers_GetPageSettings] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationAllUsers_ResetPageSettings] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationAllUsers_SetPageSettings] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationPerUser_GetPageSettings] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationPerUser_ResetPageSettings] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_PersonalizationPerUser_SetPageSettings] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_Profile_DeleteInactiveProfiles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Profile_DeleteInactiveProfiles]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Profile_DeleteProfiles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Profile_DeleteProfiles]
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
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
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
END
GO
/****** Object:  StoredProcedure [aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Profile_GetNumberOfInactiveProfiles]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Profile_GetProfiles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Profile_GetProfiles]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Profile_GetProperties]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Profile_GetProperties]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Profile_SetProperties]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Profile_SetProperties]
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

END
GO
/****** Object:  StoredProcedure [aspnet_RegisterSchemaVersion]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_RegisterSchemaVersion]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Roles_CreateRole]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Roles_CreateRole]
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

END
GO
/****** Object:  StoredProcedure [aspnet_Roles_DeleteRole]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Roles_DeleteRole]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Roles_GetAllRoles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Roles_GetAllRoles] (
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
END
GO
/****** Object:  StoredProcedure [aspnet_Roles_RoleExists]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Roles_RoleExists]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Setup_RemoveAllRoleMembers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Setup_RemoveAllRoleMembers]
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
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [aspnet_Setup_RestorePermissions]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Setup_RestorePermissions]
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
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [aspnet_UnRegisterSchemaVersion]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [aspnet_Users_CreateUser]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_Users_CreateUser]
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
END
GO
/****** Object:  StoredProcedure [aspnet_Users_DeleteUser]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_Users_DeleteUser]
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
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
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
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
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
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
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
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
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

END
GO
/****** Object:  StoredProcedure [aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_UsersInRoles_AddUsersToRoles]
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
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
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
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
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
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [aspnet_UsersInRoles_FindUsersInRole]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_UsersInRoles_FindUsersInRole]
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
END
GO
/****** Object:  StoredProcedure [aspnet_UsersInRoles_GetRolesForUser]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_UsersInRoles_GetRolesForUser]
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
END
GO
/****** Object:  StoredProcedure [aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_UsersInRoles_GetUsersInRoles]
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
END
GO
/****** Object:  StoredProcedure [aspnet_UsersInRoles_IsUserInRole]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_UsersInRoles_IsUserInRole]
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
END
GO
/****** Object:  StoredProcedure [aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [aspnet_UsersInRoles_RemoveUsersFromRoles]
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
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
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
		SELECT TOP 1 N'', Name
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
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
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
		SELECT TOP 1 Name, N''
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [aspnet_WebEvent_LogEvent]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [aspnet_WebEvent_LogEvent]
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
END
GO
/****** Object:  StoredProcedure [spClearFinalClassNames]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [spClearFinalClassNames]

AS
	SET NOCOUNT ON;
DELETE [dbo].[tblFinalClassNames]

GO
/****** Object:  StoredProcedure [spDeleteOwnersDogsClassesList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spDeleteOwnersDogsClassesList]

AS
	SET NOCOUNT ON;
	
	DELETE [dbo].[tblOwnersDogsClassesDrawnList]
	

GO
/****** Object:  StoredProcedure [spDeleteShowFinalClassesByShowEntryClass]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spDeleteShowFinalClassesByShowEntryClass]
	(
		@Show_Entry_Class_ID uniqueidentifier = null,
		@NumRowsChanged int output
	)
AS
	SET NOCOUNT ON;
DELETE FROM [dbo].[tblShow_Final_Classes]
      WHERE Show_Entry_Class_ID = @Show_Entry_Class_ID
SELECT @NumRowsChanged = @@ROWCOUNT
GO
/****** Object:  StoredProcedure [spGetAddressByAddress_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetAddressByAddress_ID]
(
	@Address_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, Address_Postcode, 
Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_ID = @Address_ID
GO
/****** Object:  StoredProcedure [spGetAddresses]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetAddresses]
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, 
Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblAddresses
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetAddressesLikeAddress_1]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetAddressesLikeAddress_1]
(
	@Address_1 varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, 
Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_1 LIKE @Address_1 + '%'
GO
/****** Object:  StoredProcedure [spGetAddressesLikeAddress_2]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetAddressesLikeAddress_2]
(
	@Address_2 varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, 
Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_2 LIKE @Address_2 + '%'
GO
/****** Object:  StoredProcedure [spGetAddressesLikeAddress_City]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetAddressesLikeAddress_City]
(
	@Address_City varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, 
Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_City LIKE @Address_City + '%'
GO
/****** Object:  StoredProcedure [spGetAddressesLikeAddress_County]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetAddressesLikeAddress_County]
(
	@Address_County varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, 
Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_County LIKE @Address_County + '%'
GO
/****** Object:  StoredProcedure [spGetAddressesLikeAddress_Postcode]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetAddressesLikeAddress_Postcode]
(
	@Address_Postcode varchar(10)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, 
Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_Postcode LIKE @Address_Postcode + '%'
GO
/****** Object:  StoredProcedure [spGetAddressesLikeAddress_Town]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetAddressesLikeAddress_Town]
(
	@Address_Town varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, 
Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_Town LIKE @Address_Town + '%'
GO
/****** Object:  StoredProcedure [spGetCatalogueListByRingNumber]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetCatalogueListByRingNumber]
AS
	SET NOCOUNT ON;
SELECT [Ring_No]
      ,[Owner]
      ,[Address]
      ,[Dog_KC_Name]
      ,[Dog_Breed_Description]
      ,[Dog_Gender]
      ,[Date_Of_Birth]
      ,[Class_Name]
      ,[Catalogue]
  FROM [dbo].[tblCatalogueListByRingNumber]
  order by ring_no
GO
/****** Object:  StoredProcedure [spGetClass_NameByClass_Name_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetClass_NameByClass_Name_ID]
(
	@Class_Name_ID int
)
AS
	SET NOCOUNT ON;
SELECT Class_Name_ID, Class_Name_Description FROM dbo.lkpClass_Names
WHERE Class_Name_ID = @Class_Name_ID
GO
/****** Object:  StoredProcedure [spGetClass_Names]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetClass_Names]
AS
	SET NOCOUNT ON;
SELECT Class_Name_ID, Class_Name_Description FROM dbo.lkpClass_Names
GO
/****** Object:  StoredProcedure [spGetClass_NamesLikeClass_Name_Description]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetClass_NamesLikeClass_Name_Description]
(
	@Class_Name_Description varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Class_Name_ID, Class_Name_Description FROM dbo.lkpClass_Names
WHERE Class_Name_Description LIKE @Class_Name_Description + '%'
GO
/****** Object:  StoredProcedure [spGetClubByClub_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetClubByClub_ID]
(
	@Club_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, 
Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblClubs
WHERE Deleted_By IS NULL 
AND Club_ID = @Club_ID
GO
/****** Object:  StoredProcedure [spGetClubs]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetClubs]
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, 
Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblClubs
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetClubsByClub_Contact]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetClubsByClub_Contact]
(
	@Club_Contact uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, 
Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblClubs
WHERE Deleted_By IS NULL 
AND Club_Contact = @Club_Contact
GO
/****** Object:  StoredProcedure [spGetClubsByClub_Short_Name]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetClubsByClub_Short_Name]
(
	@Club_Short_Name varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, 
Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblClubs
WHERE Deleted_By IS NULL
AND Club_Short_Name LIKE @Club_Short_Name + '%'
GO
/****** Object:  StoredProcedure [spGetClubsLikeClub_Long_Name]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetClubsLikeClub_Long_Name]
(
	@Club_Long_Name varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, 
Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblClubs
WHERE Deleted_By IS NULL
AND Club_Long_Name LIKE @Club_Long_Name + '%'
GO
/****** Object:  StoredProcedure [spGetDog_BreedByDog_Breed_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_BreedByDog_Breed_ID]
(
	@Dog_Breed_ID int
)
AS
	SET NOCOUNT ON;
SELECT Dog_Breed_ID, Dog_Breed_Description FROM dbo.lkpDog_Breeds
WHERE Dog_Breed_ID = @Dog_Breed_ID
GO
/****** Object:  StoredProcedure [spGetDog_Breeds]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_Breeds]

AS
	SET NOCOUNT ON;
	
	SELECT Dog_Breed_ID, Dog_Breed_Description FROM dbo.lkpDog_Breeds
	WHERE Dog_Breed_ID > 1
	ORDER BY Dog_Breed_Description
	

GO
/****** Object:  StoredProcedure [spGetDog_BreedsLikeDog_Breed_Description]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_BreedsLikeDog_Breed_Description]
(
	@Dog_Breed_Description varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Dog_Breed_ID, Dog_Breed_Description FROM dbo.lkpDog_Breeds
WHERE Dog_Breed_Description = @Dog_Breed_Description
GO
/****** Object:  StoredProcedure [spGetDog_ClassByDog_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_ClassByDog_Class_ID]
(
	@Dog_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Preferred_Part, Show_Final_Class_ID, Handler_ID, 
Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By FROM dbo.tblDog_Classes
WHERE Deleted_By IS NULL
AND Dog_Class_ID = @Dog_Class_ID
GO
/****** Object:  StoredProcedure [spGetDog_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_Classes]
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Preferred_Part, Show_Final_Class_ID, 
Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblDog_Classes
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetDog_ClassesByDog_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_ClassesByDog_ID]
(
	@Show_ID uniqueidentifier,
	@Dog_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, dc.Entrant_ID, Dog_ID, Show_Entry_Class_ID, Preferred_Part, Show_Final_Class_ID, 
Handler_ID, Ring_No, Running_Order, Special_Request, dc.Created_Date, dc.Created_By, 
dc.Modified_Date, dc.Modified_By, dc.Deleted_Date, dc.Deleted_By 
FROM dbo.tblDog_Classes dc
INNER JOIN dbo.tblEntrants e
ON dc.Entrant_ID = e.Entrant_ID
AND e.Show_ID = @Show_ID
AND e.Deleted_By IS NULL
WHERE dc.Deleted_By IS NULL 
AND Dog_ID = @Dog_ID
GO
/****** Object:  StoredProcedure [spGetDog_ClassesByDog_IDAndShow_Entry_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_ClassesByDog_IDAndShow_Entry_Class_ID]
(
	@Dog_ID uniqueidentifier,
	@Show_Entry_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Preferred_Part, Show_Final_Class_ID, 
Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblDog_Classes
WHERE Deleted_By IS NULL 
AND Dog_ID = @Dog_ID
AND Show_Entry_Class_ID = @Show_Entry_Class_ID
GO
/****** Object:  StoredProcedure [spGetDog_ClassesByEntrant_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_ClassesByEntrant_ID]
(
	@Entrant_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, dc.Show_Entry_Class_ID, Preferred_Part, Show_Final_Class_ID, Handler_ID, Ring_No, 
Running_Order, Special_Request, sec.Class_No,
dc.Created_Date, dc.Created_By, dc.Modified_Date, dc.Modified_By, dc.Deleted_Date, dc.Deleted_By 
FROM dbo.tblDog_Classes dc
left JOIN tblShow_Entry_Classes sec
ON dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
AND sec.Deleted_By IS NULL
WHERE dc.Deleted_By is null
AND Entrant_ID = @Entrant_ID
ORDER BY Dog_ID, sec.Class_No
GO
/****** Object:  StoredProcedure [spGetDog_ClassesByEntrant_ID_Dog_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_ClassesByEntrant_ID_Dog_ID]
(
	@Entrant_ID uniqueidentifier,
	@Dog_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, dc.Show_Entry_Class_ID, Preferred_Part, Show_Final_Class_ID, Handler_ID, Ring_No, 
Running_Order, Special_Request, sec.Class_No,
dc.Created_Date, dc.Created_By, dc.Modified_Date, dc.Modified_By, dc.Deleted_Date, dc.Deleted_By 
FROM dbo.tblDog_Classes dc
INNER JOIN tblShow_Entry_Classes sec
ON dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
AND sec.Deleted_By IS NULL
WHERE dc.Deleted_By is null
AND Entrant_ID = @Entrant_ID
AND Dog_ID = @Dog_ID
ORDER BY sec.Class_No

GO
/****** Object:  StoredProcedure [spGetDog_ClassesByHandler_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_ClassesByHandler_ID]
(
	@Handler_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Preferred_Part, Show_Final_Class_ID, Handler_ID, 
Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By 
FROM dbo.tblDog_Classes
WHERE Deleted_By IS NULL
AND Handler_ID = @Handler_ID
GO
/****** Object:  StoredProcedure [spGetDog_ClassesByShow_Entry_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_ClassesByShow_Entry_Class_ID]
(
	@Show_Entry_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Preferred_Part, Show_Final_Class_ID, Handler_ID, Ring_No, 
Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, 
Deleted_By FROM dbo.tblDog_Classes
WHERE Deleted_By is null
AND Show_Entry_Class_ID = @Show_Entry_Class_ID
ORDER BY Ring_No

GO
/****** Object:  StoredProcedure [spGetDog_ClassesByShow_Final_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_ClassesByShow_Final_Class_ID]
(
	@Show_Final_Class_ID uniqueidentifier = null
)
AS
	SET NOCOUNT ON;
SELECT dc.Dog_Class_ID, dc.Entrant_ID, dc.Dog_ID, dc.Show_Entry_Class_ID, Preferred_Part, dc.Show_Final_Class_ID, dc.Handler_ID, 
dc.Ring_No, dc.Running_Order, dc.Special_Request, dc.Created_Date, dc.Created_By, dc.Modified_Date, dc.Modified_By, 
dc.Deleted_Date, dc.Deleted_By FROM dbo.tblDog_Classes dc
inner join [dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and dc.Deleted_By is null
and e.Deleted_By is null
where (Show_Final_Class_ID = @Show_Final_Class_ID or @Show_Final_Class_ID is null)
order by e.Entry_Date desc
GO
/****** Object:  StoredProcedure [spGetDog_Gender]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_Gender]

AS
	SET NOCOUNT ON;
SELECT Dog_Gender_ID, Dog_Gender FROM dbo.lkpDog_Gender
GO
/****** Object:  StoredProcedure [spGetDog_GenderByDog_Gender_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_GenderByDog_Gender_ID]
(
	@Dog_Gender_ID int
)
AS
	SET NOCOUNT ON;
SELECT Dog_Gender_ID, Dog_Gender FROM dbo.lkpDog_Gender
WHERE Dog_Gender_ID = @Dog_Gender_ID
GO
/****** Object:  StoredProcedure [spGetDog_GenderLikeDog_Gender]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_GenderLikeDog_Gender]
(
	@Dog_Gender varchar(5)
)
AS
	SET NOCOUNT ON;
SELECT Dog_Gender_ID, Dog_Gender FROM dbo.lkpDog_Gender
WHERE Dog_Gender LIKE @Dog_Gender + '%'
GO
/****** Object:  StoredProcedure [spGetDog_Owners]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_Owners]
AS
	SET NOCOUNT ON;
SELECT Dog_Owner_ID, Dog_ID, Owner_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, 
Deleted_By FROM dbo.lnkDog_Owners
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetDog_OwnersByDog_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_OwnersByDog_ID]
(
	@Dog_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT [Dog_Owner_ID]
      ,[Dog_ID]
      ,[Owner_ID]
      ,[Created_Date]
      ,[Created_By]
      ,[Modified_Date]
      ,[Modified_By]
      ,[Deleted_Date]
      ,[Deleted_By]
  FROM [dbo].[lnkDog_Owners]
WHERE Deleted_By IS NULL
AND Dog_ID = @Dog_ID
GO
/****** Object:  StoredProcedure [spGetDog_OwnersByDog_Owner_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_OwnersByDog_Owner_ID]
(
	@Dog_Owner_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT [Dog_Owner_ID]
      ,[Dog_ID]
      ,[Owner_ID]
      ,[Created_Date]
      ,[Created_By]
      ,[Modified_Date]
      ,[Modified_By]
      ,[Deleted_Date]
      ,[Deleted_By]
  FROM [dbo].[lnkDog_Owners]
WHERE Deleted_By IS NULL
AND Dog_Owner_ID = @Dog_Owner_ID


GO
/****** Object:  StoredProcedure [spGetDog_OwnersByOwner_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_OwnersByOwner_ID]
(
	@Owner_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT [Dog_Owner_ID]
      ,[Dog_ID]
      ,[Owner_ID]
      ,[Created_Date]
      ,[Created_By]
      ,[Modified_Date]
      ,[Modified_By]
      ,[Deleted_Date]
      ,[Deleted_By]
  FROM [dbo].[lnkDog_Owners]
WHERE Deleted_By IS NULL
AND Owner_ID = @Owner_ID
GO
/****** Object:  StoredProcedure [spGetDog_OwnersByShow_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDog_OwnersByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT distinct [Dog_Owner_ID]
      ,do.[Dog_ID]
      ,[Owner_ID]
      ,do.[Created_Date]
      ,do.[Created_By]
      ,do.[Modified_Date]
      ,do.[Modified_By]
      ,do.[Deleted_Date]
      ,do.[Deleted_By]
  FROM [dbo].[lnkDog_Owners] do
inner join [dbo].[tblDog_Classes] dc
on dc.Dog_ID = do.Dog_ID
and do.Deleted_By is null
and dc.Deleted_By IS null
inner JOIN [dbo].[tblShow_Final_Classes] sfc
ON dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
AND sfc.Deleted_By IS NULL
and dc.Deleted_By is null
INNER JOIN
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [dbo].[lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON sfc.Show_ID = sl.Show_ID
ORDER BY Dog_ID
GO
/****** Object:  StoredProcedure [spGetDogByDog_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDogByDog_ID]
(
	@Dog_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Reg_No, Date_Of_Birth, 
Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By, Breeder, Sire, Dam FROM dbo.tblDogs
WHERE Deleted_By IS NULL
AND Dog_ID = @Dog_ID
GO
/****** Object:  StoredProcedure [spGetDogByRegNo]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDogByRegNo]
(
	@Reg_No varchar(50)
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Reg_No, Date_Of_Birth, 
Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By FROM dbo.tblDogs
WHERE Deleted_By IS NULL
AND Reg_No = @Reg_No
GO
/****** Object:  StoredProcedure [spGetDogs]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDogs]
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Reg_No, Date_Of_Birth, 
Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By, Breeder, Sire, Dam 
FROM dbo.tblDogs
WHERE Deleted_By IS NULL
Order By Dog_KC_Name
GO
/****** Object:  StoredProcedure [spGetDogsLikeDog_KC_Name]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDogsLikeDog_KC_Name]
(
	@Dog_KC_Name varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Reg_No, Date_Of_Birth, Year_Of_Birth, 
Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By, Breeder, Sire, Dam 
FROM dbo.tblDogs
WHERE Deleted_By IS NULL
AND Dog_KC_Name LIKE @Dog_KC_Name + '%'
GO
/****** Object:  StoredProcedure [spGetDogsLikeDog_Pet_Name]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDogsLikeDog_Pet_Name]
(
	@Dog_Pet_Name varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Reg_No, Date_Of_Birth, 
Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By, Breeder, Sire, Dam FROM dbo.tblDogs
WHERE Deleted_By IS NULL
AND Dog_Pet_Name LIKE @Dog_Pet_Name + '%'
GO
/****** Object:  StoredProcedure [spGetDogsWhereDog_Breed_IDInList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetDogsWhereDog_Breed_IDInList]
(
	@Dog_Breed_IDs Varchar(1000)
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Reg_No, Date_Of_Birth, Year_Of_Birth, 
Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By, Breeder, Sire, Dam 
FROM dbo.tblDogs
WHERE Deleted_By IS NULL
AND Dog_Breed_ID IN (Select ID From fnSplitter(@Dog_Breed_IDs))
GO
/****** Object:  StoredProcedure [spGetEntrantByEntrant_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetEntrantByEntrant_ID]
(
	@Entrant_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Entrant_ID, Show_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, Offer_Of_Help, 
Help_Details, Withold_Address, Send_Running_Order, Entry_Date, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblEntrants
WHERE Deleted_By IS NULL
AND Entrant_ID = @Entrant_ID
GO
/****** Object:  StoredProcedure [spGetEntrants]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetEntrants]
AS
	SET NOCOUNT ON;
SELECT Entrant_ID, Show_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, 
Offer_Of_Help, Help_Details, Withold_Address, Send_Running_Order, Entry_Date, Created_Date, 
Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblEntrants
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetEntrantsByShow_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetEntrantsByShow_ID]
(
	@Show_ID uniqueidentifier,
	@IncludeLinked bit = 0
)
AS
	SET NOCOUNT ON;
if @IncludeLinked = 0
BEGIN
	SELECT Entrant_ID, Show_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, Offer_Of_Help, Help_Details, 
	Withold_Address, Send_Running_Order, Entry_Date, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
	FROM dbo.tblEntrants
	WHERE Deleted_By IS NULL
	AND Show_ID = @Show_ID
	Order By Created_Date
END
if @IncludeLinked = 1
BEGIN
	SELECT Entrant_ID, e.Show_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, Offer_Of_Help, Help_Details, 
	Withold_Address, Send_Running_Order, Entry_Date, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
	FROM dbo.tblEntrants e
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [dbo].[lnkLinked_Shows] ls
	where Parent_Show_ID = @Show_ID) sl
	on e.Show_ID = sl.Show_ID
	WHERE Deleted_By IS NULL
	Order By Created_Date
END
GO
/****** Object:  StoredProcedure [spGetEntrantsByShow_IDAndDog_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [spGetEntrantsByShow_IDAndDog_ID]
(
	@Show_ID uniqueidentifier,
	@Dog_ID uniqueidentifier,
	@IncludeLinked bit = 0
)
AS
	SET NOCOUNT ON;
if @IncludeLinked = 0
BEGIN
	SELECT DISTINCT e.Entrant_ID, Show_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, Offer_Of_Help, Help_Details, Withold_Address, Send_Running_Order, 
	e.Entry_Date, e.Created_Date, e.Created_By, e.Modified_Date, e.Modified_By, e.Deleted_Date, e.Deleted_By FROM dbo.tblEntrants e
	INNER JOIN dbo.tblDog_Classes dg
	ON e.Entrant_ID = dg.Entrant_ID
	AND e.Show_ID = @Show_ID
	WHERE e.Deleted_By IS NULL
	AND dg.Deleted_By IS NULL
	AND dg.Dog_ID = @Dog_ID
END
if @IncludeLinked = 1
BEGIN
	SELECT DISTINCT e.Entrant_ID, e.Show_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, Offer_Of_Help, Help_Details, Withold_Address, Send_Running_Order, 
	e.Entry_Date, e.Created_Date, e.Created_By, e.Modified_Date, e.Modified_By, e.Deleted_Date, e.Deleted_By FROM dbo.tblEntrants e
	INNER JOIN dbo.tblDog_Classes dg
	ON e.Entrant_ID = dg.Entrant_ID
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [dbo].[lnkLinked_Shows] ls
	where Parent_Show_ID = @Show_ID) sl
	on e.Show_ID = sl.Show_ID
	WHERE e.Deleted_By IS NULL
	AND dg.Deleted_By IS NULL
	AND dg.Dog_ID = @Dog_ID
END
GO
/****** Object:  StoredProcedure [spGetEntryClassCount]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [spGetEntryClassCount]

AS
	SET NOCOUNT ON;
SELECT [Show_Entry_Class_ID]
	  ,[Class_Name_Description]
      ,[Class_No]
      ,[Entries]
  FROM [dbo].[tblEntryClassCount]
  order by Class_No

GO
/****** Object:  StoredProcedure [spGetEntryClassCountByShow_Entry_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [spGetEntryClassCountByShow_Entry_Class_ID]
(
	@Show_Entry_Class_ID uniqueidentifier = null
)
AS
	SET NOCOUNT ON;
SELECT [Show_Entry_Class_ID]
	  ,[Class_Name_Description]
      ,[Class_No]
      ,[Entries]
  FROM [dbo].[tblEntryClassCount]
  Where Show_Entry_Class_ID = @Show_Entry_Class_ID
  order by Class_No

GO
/****** Object:  StoredProcedure [spGetEntryCountByShow_Final_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetEntryCountByShow_Final_Class_ID]
(
	@Show_Final_Class_ID uniqueidentifier
)
AS
SELECT Count(Dog_Class_ID) as EntryCount
  FROM [dbo].[tblDog_Classes]
  where Deleted_By is null
  and Show_Final_Class_ID = @Show_Final_Class_ID
GO
/****** Object:  StoredProcedure [spGetFinalClassNames]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [spGetFinalClassNames]

AS
	SET NOCOUNT ON;
SELECT [Show_Entry_Class_ID]
      ,[Class_Name_Description]
      ,[Class_No]
      ,[Show_Final_Class_Description]
      ,[Entries]
      ,[OrderBy]
  FROM [dbo].[tblFinalClassNames]
  order by OrderBy

GO
/****** Object:  StoredProcedure [spGetFinalClassNamesByOrderBy]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [spGetFinalClassNamesByOrderBy]
	(
		@OrderBy smallint = null
	)
AS
	SET NOCOUNT ON;
SELECT [Show_Entry_Class_ID]
      ,[Class_Name_Description]
      ,[Class_No]
      ,[Show_Final_Class_Description]
      ,[Entries]
      ,[OrderBy]
  FROM [dbo].[tblFinalClassNames]
  WHERE OrderBy = @OrderBy

GO
/****** Object:  StoredProcedure [spGetGuarantorByGuarantor_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetGuarantorByGuarantor_ID]
(
	@Guarantor_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Guarantor_ID, Show_ID, Chairman_Person_ID, Secretary_Person_ID, Treasurer_Person_ID, Committee1_Person_ID, 
Committee2_Person_ID, Committee3_Person_ID, Created_Date, Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By FROM dbo.tblGuarantors
WHERE Deleted_By IS NULL
AND Guarantor_ID = @Guarantor_ID
GO
/****** Object:  StoredProcedure [spGetGuarantors]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetGuarantors]
AS
	SET NOCOUNT ON;
SELECT Guarantor_ID, Show_ID, Chairman_Person_ID, Secretary_Person_ID, Treasurer_Person_ID, 
Committee1_Person_ID, Committee2_Person_ID, Committee3_Person_ID, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblGuarantors
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetGuarantorsByShow_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetGuarantorsByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Guarantor_ID, Show_ID, Chairman_Person_ID, Secretary_Person_ID, Treasurer_Person_ID, 
Committee1_Person_ID, Committee2_Person_ID, Committee3_Person_ID, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblGuarantors
WHERE Deleted_By IS NULL
AND Show_ID = @Show_ID
GO
/****** Object:  StoredProcedure [spGetJudgesByShow_Entry_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetJudgesByShow_Entry_Class_ID]
(
	@Show_Entry_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Primary_Judge, Reserve_Judge
FROM dbo.tblJudges 
WHERE Show_Entry_Class_ID = @Show_Entry_Class_ID

GO
/****** Object:  StoredProcedure [spGetLinked_ShowByChild_Show_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetLinked_ShowByChild_Show_ID]
(
	@Child_Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Linked_Show_ID, Parent_Show_ID, Child_Show_ID, Created_Date, 
Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By 
FROM dbo.lnkLinked_Shows
WHERE Deleted_By IS NULL
AND Child_Show_ID = @Child_Show_ID
GO
/****** Object:  StoredProcedure [spGetLinked_ShowByLinked_Show_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetLinked_ShowByLinked_Show_ID]
(
	@Linked_Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Linked_Show_ID, Parent_Show_ID, Child_Show_ID, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.lnkLinked_Shows
WHERE Deleted_By IS NULL
AND Linked_Show_ID = @Linked_Show_ID
GO
/****** Object:  StoredProcedure [spGetLinked_Shows]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetLinked_Shows]
AS
	SET NOCOUNT ON;
SELECT Linked_Show_ID, Parent_Show_ID, Child_Show_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.lnkLinked_Shows
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetLinked_ShowsByParent_Show_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetLinked_ShowsByParent_Show_ID]
(
	@Parent_Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Linked_Show_ID, Parent_Show_ID, Child_Show_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.lnkLinked_Shows
WHERE Deleted_By IS NULL
AND Parent_Show_ID = @Parent_Show_ID
GO
/****** Object:  StoredProcedure [spGetMaxNAFNo]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetMaxNAFNo]
AS
	SET NOCOUNT ON;
select MAX(CONVERT(int, SUBSTRING(Reg_No, 5, LEN(Reg_No)))) AS MaxNAF
from tblDogs
WHERE Reg_No LIKE 'NAF_%'
GO
/****** Object:  StoredProcedure [spGetMaxRunningOrderForClass]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetMaxRunningOrderForClass]
(
	@Show_Final_Class_ID uniqueidentifier
)
AS
SELECT ISNULL(Max(Running_Order),0) as MaxRunningOrder
  FROM [dbo].[tblDog_Classes]
  where Deleted_By is null
  and Running_Order < 90
  and Show_Final_Class_ID = @Show_Final_Class_ID

GO
/****** Object:  StoredProcedure [spGetOwnersDogsClassesDrawnList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetOwnersDogsClassesDrawnList]
AS
	SET NOCOUNT ON;
SELECT [Ring_No]
      ,[Owner]
      ,[Dog_KC_Name]
      ,[Running_Order]
      ,[Offer_Of_Help]
      ,[Show_Final_Class_Description]
      ,[Entrant_ID]
      ,[Owner_ID]
      ,[Dog_ID]
      ,[Dog_Class_ID]
      ,[Show_Final_Class_ID]
      ,[Entry_Date]
  FROM [dbo].[tblOwnersDogsClassesDrawnList]
  order by ring_no, Dog_KC_Name, Show_Final_Class_Description

GO
/****** Object:  StoredProcedure [spGetOwnersDogsClassesDrawnListOrderByEntry_Date]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetOwnersDogsClassesDrawnListOrderByEntry_Date]
AS
	SET NOCOUNT ON;
SELECT [Ring_No]
      ,[Owner]
      ,[Dog_KC_Name]
      ,[Running_Order]
      ,[Offer_Of_Help]
      ,[Show_Final_Class_Description]
      ,[Entrant_ID]
      ,[Owner_ID]
      ,[Dog_ID]
      ,[Dog_Class_ID]
      ,[Show_Final_Class_ID]
      ,[Entry_Date]
  FROM [dbo].[tblOwnersDogsClassesDrawnList]
  order by Entry_Date desc, ring_no, Dog_KC_Name, Show_Final_Class_Description, [Owner] 

GO
/****** Object:  StoredProcedure [spGetOwnersDogsClassesHandlers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetOwnersDogsClassesHandlers]
AS
	SET NOCOUNT ON;
SELECT [Dog_Class_ID]
      ,[Owner_ID]
      ,[Handler_ID]
      ,[Owner]
      ,[Dog_KC_Name]
      ,[Class]
      ,[Handler]
  FROM [dbo].[tblOwnersDogsClassesHandlers]
  order by dog_kc_name

GO
/****** Object:  StoredProcedure [spGetPeople]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetPeople]
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Title, Person_Surname, Person_Forename, Address_ID, Person_Mobile, Person_Landline, Person_Email, Person_OE_Owner_ID,
Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblPeople
WHERE Deleted_By IS NULL
Order By Person_Surname, Person_Forename
GO
/****** Object:  StoredProcedure [spGetPeopleByAddress_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetPeopleByAddress_ID]
(
	@Address_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Title, Person_Surname, Person_Forename, Address_ID, Person_Mobile, Person_Landline, Person_Email, Person_OE_Owner_ID, 
Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblPeople
WHERE Deleted_By IS NULL
AND Address_ID = @Address_ID
GO
/****** Object:  StoredProcedure [spGetPeopleBySurnameForenameEmail]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetPeopleBySurnameForenameEmail]
(
	@Person_Surname varchar(50),
	@Person_Forename varchar(50),
	@Person_Email varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Title, Person_Surname, Person_Forename, Address_ID, Person_Mobile, 
Person_Landline, Person_Email, Person_OE_Owner_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblPeople
WHERE Deleted_By IS NULL
AND Person_Surname = @Person_Surname
AND Person_Forename = @Person_Forename
AND Person_Email = @Person_Email
GO
/****** Object:  StoredProcedure [spGetPeopleLikePerson_Forename]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetPeopleLikePerson_Forename]
(
	@Person_Forename varchar(50)
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Title, Person_Surname, Person_Forename, Address_ID, Person_Mobile, 
Person_Landline, Person_Email, Person_OE_Owner_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblPeople
WHERE Deleted_By IS NULL
AND Person_Forename LIKE @Person_Forename + '%'
GO
/****** Object:  StoredProcedure [spGetPeopleLikePerson_Surname]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetPeopleLikePerson_Surname]
(
	@Person_Surname varchar(50)
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Title, Person_Surname, Person_Forename, Address_ID, Person_Mobile, 
Person_Landline, Person_Email, Person_OE_Owner_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblPeople
WHERE Deleted_By IS NULL
AND Person_Surname LIKE @Person_Surname + '%'
GO
/****** Object:  StoredProcedure [spGetPersonByPerson_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetPersonByPerson_ID]
(
	@Person_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Title, Person_Surname, Person_Forename, Address_ID, Person_Mobile, 
Person_Landline, Person_Email, Person_OE_Owner_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblPeople
WHERE Deleted_By IS NULL
AND Person_ID = @Person_ID
GO
/****** Object:  StoredProcedure [spGetRing_Numbers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetRing_Numbers]
AS
	SET NOCOUNT ON;
SELECT TOP 1000 [Ring_No]
      ,[Dog_ID]
      ,[Dog_KC_Name]
      ,[Person_Forename]
      ,[Person_Surname]
  FROM [dbo].[tblRing_Numbers]
  order by Ring_No
GO
/****** Object:  StoredProcedure [spGetRunningOrderForClass]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetRunningOrderForClass]
(
	@Show_Final_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Show_Final_Class_ID, Handler_ID, 
Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblDog_Classes
WHERE Deleted_By IS NULL
AND Show_Final_Class_ID = @Show_Final_Class_ID
AND Running_Order IS NOT NULL
ORDER BY Running_Order
GO
/****** Object:  StoredProcedure [spGetShow_Entry_ClassByShow_Entry_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Entry_ClassByShow_Entry_Class_ID]
(
	@Show_Entry_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Entry_Class_ID, Show_ID, sec.Class_Name_ID, cn.Class_Name_Description, Class_No, 
Gender, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShow_Entry_Classes sec
INNER JOIN
	dbo.lkpClass_Names cn
ON sec.Class_Name_ID = cn.Class_Name_ID
WHERE Deleted_By IS NULL 
AND Show_Entry_Class_ID = @Show_Entry_Class_ID
ORDER BY Class_No
GO
/****** Object:  StoredProcedure [spGetShow_Entry_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Entry_Classes]
AS
	SET NOCOUNT ON;
SELECT Show_Entry_Class_ID, Show_ID, sec.Class_Name_ID, cn.Class_Name_Description, 
Class_No, Gender, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShow_Entry_Classes sec
INNER JOIN
	dbo.lkpClass_Names cn
ON sec.Class_Name_ID = cn.Class_Name_ID
WHERE Deleted_By IS NULL 

GO
/****** Object:  StoredProcedure [spGetShow_Entry_ClassesByShow_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Entry_ClassesByShow_ID]
(
	@Show_ID uniqueidentifier = null
)
AS
begin
	SET NOCOUNT ON;
		
SELECT 
	Show_Entry_Class_ID, 
	sec.Show_ID, 
	sec.Class_Name_ID, 
	Class_Name_Description,
	Class_No,
	Gender, 
	Created_Date, 
	Created_By, 
	Modified_Date, 
	Modified_By, 
	Deleted_Date, 
	Deleted_By 
FROM 
	dbo.tblShow_Entry_Classes sec
INNER JOIN
	dbo.lkpClass_Names cn
ON sec.Class_Name_ID = cn.Class_Name_ID
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [dbo].[lnkLinked_Shows] ls
	where Parent_Show_ID = @Show_ID) sl
	on sec.Show_ID = sl.Show_ID
WHERE Deleted_By IS NULL 
ORDER BY Class_No
end
GO
/****** Object:  StoredProcedure [spGetShow_Final_ClassByShow_Final_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Final_ClassByShow_Final_Class_ID]
(
	@Show_Final_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Final_Class_ID, Show_ID, Show_Entry_Class_ID, Show_Final_Class_Description, 
Show_Final_Class_No, Judge_ID, Stay_Time, Lunch_Time, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShow_Final_Classes
WHERE Deleted_By is null
AND Show_Final_Class_ID = @Show_Final_Class_ID
GO
/****** Object:  StoredProcedure [spGetShow_Final_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Final_Classes]
AS
	SET NOCOUNT ON;
SELECT [Show_Final_Class_ID]
      ,sfc.[Show_ID]
      ,sfc.[Show_Entry_Class_ID]
      ,[Show_Final_Class_Description]
      ,[Show_Final_Class_No]
      ,[Judge_ID]
      ,[Stay_Time]
      ,[Lunch_Time]
      ,sfc.[Created_Date]
      ,sfc.[Created_By]
      ,sfc.[Modified_Date]
      ,sfc.[Modified_By]
      ,sfc.[Deleted_Date]
      ,sfc.[Deleted_By]
  FROM [dbo].[tblShow_Final_Classes] sfc
  inner join [dbo].[tblShow_Entry_Classes] sec
  on sfc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
  and sfc.Deleted_By IS NULL
  and sec.Deleted_By IS NULL
  order by Show_Final_Class_No
  
GO
/****** Object:  StoredProcedure [spGetShow_Final_ClassesByShow_Entry_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Final_ClassesByShow_Entry_Class_ID]
(
	@Show_Entry_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Final_Class_ID, Show_ID, Show_Entry_Class_ID, Show_Final_Class_Description, Show_Final_Class_No, 
Judge_ID, Stay_Time, Lunch_Time, Created_Date, Created_By, Modified_Date, Modified_By, 
Deleted_Date, Deleted_By 
FROM dbo.tblShow_Final_Classes
WHERE Deleted_By is null
AND Show_Entry_Class_ID = @Show_Entry_Class_ID
ORDER BY Show_Final_Class_No
GO
/****** Object:  StoredProcedure [spGetShow_Final_ClassesByShow_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Final_ClassesByShow_ID]
(
	@Show_ID uniqueidentifier = null
)
AS
	SET NOCOUNT ON;
	
	SELECT [Show_Final_Class_ID]
	,sfc.[Show_ID]
	,sfc.[Show_Entry_Class_ID]
	,[Show_Final_Class_Description]
	,Show_Final_Class_No
	,[Judge_ID]
	,[Stay_Time]
	,[Lunch_Time]
	,sfc.[Created_Date]
	,sfc.[Created_By]
	,sfc.[Modified_Date]
	,sfc.[Modified_By]
	,sfc.[Deleted_Date]
	,sfc.[Deleted_By]
	FROM [dbo].[tblShow_Final_Classes] sfc
	inner join [dbo].[tblShow_Entry_Classes] sec
	on sfc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
	and sec.Deleted_By is null
	and sfc.Deleted_By is null
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [dbo].[lnkLinked_Shows] ls
	where Deleted_By is null and Parent_Show_ID = @Show_ID) sl
	on sec.Show_ID = sl.Show_ID
	order by Show_Final_Class_No

GO
/****** Object:  StoredProcedure [spGetShow_HelperByShow_Helper_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_HelperByShow_Helper_ID]
(
	@Show_Helper_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Helper_ID, Show_ID, Person_ID, Show_Role_ID, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShow_Helpers
WHERE Deleted_By IS NULL
AND Show_Helper_ID = @Show_Helper_ID
GO
/****** Object:  StoredProcedure [spGetShow_Helpers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Helpers]
AS
	SET NOCOUNT ON;
SELECT Show_Helper_ID, Show_ID, Person_ID, Show_Role_ID, Created_Date, 
Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShow_Helpers
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetShow_HelpersByShow_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_HelpersByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Helper_ID, Show_ID, Person_ID, Show_Role_ID, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShow_Helpers
WHERE Deleted_By IS NULL
AND Show_ID = @Show_ID
GO
/****** Object:  StoredProcedure [spGetShow_RoleByShow_Role_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_RoleByShow_Role_ID]
(
	@Show_Role_ID int
)
AS
	SET NOCOUNT ON;
SELECT Show_Role_ID, Show_Role_Description FROM dbo.lkpShow_Roles
WHERE Show_Role_ID = @Show_Role_ID
GO
/****** Object:  StoredProcedure [spGetShow_Roles]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Roles]
AS
	SET NOCOUNT ON;
SELECT Show_Role_ID, Show_Role_Description FROM dbo.lkpShow_Roles
GO
/****** Object:  StoredProcedure [spGetShow_RolesLikeShow_Role_Description]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_RolesLikeShow_Role_Description]
(
	@Show_Role_Description varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Show_Role_ID, Show_Role_Description FROM dbo.lkpShow_Roles
WHERE Show_Role_Description LIKE @Show_Role_Description + '%'
GO
/****** Object:  StoredProcedure [spGetShow_Types]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Types]
AS
	SET NOCOUNT ON;
SELECT Show_Type_ID, Show_Type_Description FROM dbo.lkpShow_Types
GO
/****** Object:  StoredProcedure [spGetShow_TypesByShow_Type_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_TypesByShow_Type_ID]
(
	@Show_Type_ID int
)
AS
	SET NOCOUNT ON;
SELECT Show_Type_ID, Show_Type_Description FROM dbo.lkpShow_Types
WHERE Show_Type_ID = @Show_Type_ID
GO
/****** Object:  StoredProcedure [spGetShow_TypesLikeShow_Type_Description]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_TypesLikeShow_Type_Description]
(
	@Show_Type_Description varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Show_Type_ID, Show_Type_Description FROM dbo.lkpShow_Types
WHERE Show_Type_Description LIKE @Show_Type_Description + '%'
GO
/****** Object:  StoredProcedure [spGetShow_YearByShow_Year]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_YearByShow_Year]
(
	@Show_Year smallint
)
AS
	SET NOCOUNT ON;
SELECT Show_Year_ID, Show_Year FROM dbo.lkpShow_Years
WHERE Show_Year = @Show_Year
GO
/****** Object:  StoredProcedure [spGetShow_Years]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_Years]
AS
	SET NOCOUNT ON;
SELECT Show_Year_ID, Show_Year FROM dbo.lkpShow_Years
GO
/****** Object:  StoredProcedure [spGetShow_YearsByShow_Year_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShow_YearsByShow_Year_ID]
(
	@Show_Year_ID int
)
AS
	SET NOCOUNT ON;
SELECT Show_Year_ID, Show_Year FROM dbo.lkpShow_Years
WHERE Show_Year_ID = @Show_Year_ID
GO
/****** Object:  StoredProcedure [spGetShowByShow_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShowByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, 
Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, 
Ring_Numbers_Allocated, Linked_Show, MaxClassesPerDog, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShows
WHERE Deleted_By IS NULL
AND Show_ID = @Show_ID
GO
/****** Object:  StoredProcedure [spGetShowEntryClassByShowAndClassNo]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShowEntryClassByShowAndClassNo]
(
	@Show_ID uniqueidentifier = null,
	@ClassNo int = 0
)
AS
begin
	SET NOCOUNT ON;
		
SELECT 
	Show_Entry_Class_ID, 
	sec.Show_ID, 
	sec.Class_Name_ID, 
	Class_Name_Description,
	Class_No,
	Gender, 
	Created_Date, 
	Created_By, 
	Modified_Date, 
	Modified_By, 
	Deleted_Date, 
	Deleted_By 
FROM 
	dbo.tblShow_Entry_Classes sec
INNER JOIN
	dbo.lkpClass_Names cn
ON sec.Class_Name_ID = cn.Class_Name_ID
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [dbo].[lnkLinked_Shows] ls
	where Parent_Show_ID = @Show_ID) sl
	on sec.Show_ID = sl.Show_ID
WHERE Deleted_By IS NULL
AND sec.Class_No = @ClassNo
ORDER BY Class_No
end
GO
/****** Object:  StoredProcedure [spGetShows]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShows]
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, 
Judging_Commences, Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, 
Split_Classes, Running_Orders_Allocated, Ring_Numbers_Allocated, Linked_Show, 
MaxClassesPerDog, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShows
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetShowsByClub_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShowsByClub_ID]
(
	@Club_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, 
Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, 
Ring_Numbers_Allocated, Linked_Show, MaxClassesPerDog, s.Created_Date, s.Created_By, s.Modified_Date, 
s.Modified_By, s.Deleted_Date, s.Deleted_By 
FROM dbo.tblShows s
WHERE s.Deleted_By IS NULL 
AND s.Show_ID NOT IN 
(SELECT ls.Child_Show_ID FROM dbo.lnkLinked_Shows ls
WHERE ls.Deleted_By IS NULL)
AND Club_ID = @Club_ID
GO
/****** Object:  StoredProcedure [spGetShowsByClub_ID_And_Show_Year_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShowsByClub_ID_And_Show_Year_ID]
(
	@Club_ID uniqueidentifier,
	@Show_Year_ID int
)
AS
	SET NOCOUNT ON;
/****** Script for SelectTopNRows command from SSMS  ******/
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
      ,[Linked_Show]
      ,[Created_Date]
      ,[Created_By]
      ,[Modified_Date]
      ,[Modified_By]
      ,[Deleted_Date]
      ,[Deleted_By]
      ,[MaxClassesPerDog]
  FROM [dbo].[tblShows]
  WHERE Deleted_By IS NULL
  AND Club_ID = @Club_ID
  AND Show_Year_ID = @Show_Year_ID
GO
/****** Object:  StoredProcedure [spGetShowsByShow_Type_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShowsByShow_Type_ID]
(
	@Show_Type_ID int
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, 
Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, 
Ring_Numbers_Allocated, Linked_Show, MaxClassesPerDog, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShows
WHERE Deleted_By IS NULL
AND Show_Type_ID = @Show_Type_ID
GO
/****** Object:  StoredProcedure [spGetShowsByShow_Year_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShowsByShow_Year_ID]
(
	@Show_Year_ID smallint
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, Show_Name, 
Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, 
Ring_Numbers_Allocated, Linked_Show, MaxClassesPerDog, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShows
WHERE Deleted_By IS NULL
AND Show_Year_ID = @Show_Year_ID
GO
/****** Object:  StoredProcedure [spGetShowsByVenue_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShowsByVenue_ID]
(
	@Venue_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, 
Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, 
Ring_Numbers_Allocated, Linked_Show, MaxClassesPerDog, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblShows
WHERE Deleted_By IS NULL
AND Venue_ID = @Venue_ID
GO
/****** Object:  StoredProcedure [spGetShowsLikeShow_Name]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetShowsLikeShow_Name]
(
	@Show_Name varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, 
Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, 
Ring_Numbers_Allocated, Linked_Show, MaxClassesPerDog, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShows
WHERE Deleted_By IS NULL
AND Show_Name LIKE @Show_Name + '%'
GO
/****** Object:  StoredProcedure [spGetSpecialRequestList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetSpecialRequestList]
AS
	SET NOCOUNT ON;
SELECT [Ring_No]
      ,[Owner]
      ,[Dog_KC_Name]
      ,[Special_Request]
      ,[Class_Name]
      ,[Dog_Class_ID]
      ,[Show_Entry_Class_ID]
      ,[Show_Final_Class_ID]
  FROM [dbo].[tblSpecialRequestList]
  order by ring_no
GO
/****** Object:  StoredProcedure [spGetSplitClassParts]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [spGetSplitClassParts]
(
	@Show_ID uniqueidentifier = null
)

AS
	SET NOCOUNT ON;
SELECT [Show_Final_Class_ID]
      ,[Show_ID]
      ,[Show_Entry_Class_ID]
      ,[Show_Final_Class_Description]
      ,[Show_Final_Class_No]
      ,[Judge_ID]
      ,[Stay_Time]
      ,[Lunch_Time]
      ,[Created_Date]
      ,[Created_By]
      ,[Modified_Date]
      ,[Modified_By]
      ,[Deleted_Date]
      ,[Deleted_By]
  FROM [dsm_2018].[dbo].[tblShow_Final_Classes]
  WHERE Show_ID = @Show_ID AND Show_Entry_Class_ID IN 
  (
  SELECT Show_Entry_Class_ID
  FROM tblShow_Final_Classes
  GROUP BY Show_Entry_Class_ID
  HAVING COUNT(Show_Entry_Class_ID) > 1
  )
  ORDER BY Show_Final_Class_No

GO
/****** Object:  StoredProcedure [spGetUser_Person]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetUser_Person]
AS
	SET NOCOUNT ON;
SELECT User_Person_ID, User_ID, Person_ID, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.lnkUser_Person
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetUser_PersonByPerson_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetUser_PersonByPerson_ID]
(
	@Person_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT User_Person_ID, User_ID, Person_ID, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.lnkUser_Person
WHERE Deleted_By is null
AND Person_ID = @Person_ID
GO
/****** Object:  StoredProcedure [spGetUser_PersonByUser_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetUser_PersonByUser_ID]
(
	@User_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT User_Person_ID, User_ID, Person_ID, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.lnkUser_Person
WHERE Deleted_By is null
AND User_ID = @User_ID
GO
/****** Object:  StoredProcedure [spGetUser_PersonByUser_Person_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetUser_PersonByUser_Person_ID]
(
	@User_Person_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT User_Person_ID, User_ID, Person_ID, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.lnkUser_Person
WHERE Deleted_By is null
AND User_Person_ID = @User_Person_ID
GO
/****** Object:  StoredProcedure [spGetVenueByAddress_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetVenueByAddress_ID]
(
	@Address_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Venue_ID, Venue_Name, Address_ID, Venue_Contact, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblVenues
WHERE Deleted_By IS NULL
AND Address_ID = @Address_ID
GO
/****** Object:  StoredProcedure [spGetVenueByVenue_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetVenueByVenue_ID]
(
	@Venue_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Venue_ID, Venue_Name, Address_ID, Venue_Contact, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblVenues
WHERE Deleted_By IS NULL
AND Venue_ID = @Venue_ID
GO
/****** Object:  StoredProcedure [spGetVenues]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetVenues]
AS
	SET NOCOUNT ON;
SELECT Venue_ID, Venue_Name, Address_ID, Venue_Contact, Created_Date, Created_By, 
Modified_Date, Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblVenues
WHERE Deleted_By IS NULL
GO
/****** Object:  StoredProcedure [spGetVenuesLikeVenue_Name]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spGetVenuesLikeVenue_Name]
(
	@Venue_Name varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Venue_ID, Venue_Name, Address_ID, Venue_Contact, Created_Date, Created_By, Modified_Date, 
Modified_By, Deleted_Date, Deleted_By 
FROM dbo.tblVenues
WHERE Deleted_By IS NULL
AND Venue_Name LIKE @Venue_Name + '%'
GO
/****** Object:  StoredProcedure [spInsert_Judge_Record_For_Show_Entry_Class]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_Judge_Record_For_Show_Entry_Class] 
	-- Add the parameters for the stored procedure here
	@Show_Entry_Class_ID uniqueidentifier = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[tblJudges]
           ([Show_Entry_Class_ID])
     VALUES
           (@Show_Entry_Class_ID);

END

GO
/****** Object:  StoredProcedure [spInsert_lkpDog_Breeds]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_lkpDog_Breeds] 
	-- Add the parameters for the stored procedure here
	@NewBreed varchar(255) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[lkpDog_Breeds]
			   ([Dog_Breed_Description])
              OUTPUT inserted.Dog_Breed_ID

		 VALUES
			   (@NewBreed)


END

GO
/****** Object:  StoredProcedure [spInsert_lnkDog_Owners]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_lnkDog_Owners] 
	-- Add the parameters for the stored procedure here
	@Dog_ID uniqueidentifier = null,
	@Owner_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[lnkDog_Owners]
           ([Dog_ID]
           ,[Owner_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Dog_Owner_ID
     VALUES
           (@Dog_ID, @Owner_ID, GETDATE(), @UserId);

END

GO
/****** Object:  StoredProcedure [spInsert_lnkLinked_Shows]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_lnkLinked_Shows] 
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
	INSERT INTO [dbo].[lnkLinked_Shows]
           ([Parent_Show_ID]
           ,[Child_Show_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Linked_Show_ID
     VALUES
           (@Parent_Show_ID, @Child_Show_ID, GETDATE(), @UserId);

END


GO
/****** Object:  StoredProcedure [spInsert_lnkUser_Person]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spInsert_lnkUser_Person]
(
	@User_ID uniqueidentifier,
	@Person_ID uniqueidentifier,
	@Created_By_ID uniqueidentifier
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[lnkUser_Person] ([User_ID], [Person_ID], [Created_Date], [Created_By])
OUTPUT inserted.User_Person_ID 
VALUES (@User_ID, @Person_ID, GETDATE(), @Created_By_ID)
GO
/****** Object:  StoredProcedure [spInsert_tblAddresses]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblAddresses] 
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
	INSERT INTO [dbo].[tblAddresses]
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
           OUTPUT inserted.Address_ID
     VALUES
           (@Address_1, @Address_2, @Address_Town, @Address_City,
           @Address_County, @Address_Postcode, GETDATE(), @UserId, null, null, null, null);
           
	
END

GO
/****** Object:  StoredProcedure [spInsert_tblClubs]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblClubs] 
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
	INSERT INTO [dbo].[tblClubs]
           ([Club_Long_Name]
           ,[Club_Short_Name]
           ,[Club_Contact]
           ,[Created_Date]
           ,[Created_By]
           ,[Modified_Date]
           ,[Modified_By]
           ,[Deleted_Date]
           ,[Deleted_By])
           OUTPUT inserted.Club_ID
     VALUES
           (@Club_Long_Name, @Club_Short_Name, @Club_Contact, GETDATE(), @UserId, null, null, null, null);
	
END

GO
/****** Object:  StoredProcedure [spInsert_tblDog_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblDog_Classes] 
	-- Add the parameters for the stored procedure here
	@Entrant_ID uniqueidentifier = null,
	@Dog_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Preferred_Part int = null,
	@Handler_ID uniqueidentifier = null,
	@Special_Request varchar(max) = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[tblDog_Classes]
           ([Entrant_ID]
           ,[Dog_ID]
           ,[Show_Entry_Class_ID]
		   ,[Preferred_Part]
           ,[Handler_ID]
           ,[Special_Request]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Dog_Class_ID
     VALUES
           (@Entrant_ID
           ,@Dog_ID
           ,@Show_Entry_Class_ID
		   ,@Preferred_Part
           ,@Handler_ID
           ,@Special_Request
           ,GETDATE()
           ,@UserId);

END

GO
/****** Object:  StoredProcedure [spInsert_tblDogs]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblDogs] 
	-- Add the parameters for the stored procedure here
	@Dog_KC_Name varchar(255) = null,
	@Dog_Pet_Name varchar(128) = null,
	@Dog_Breed_ID int = null,
	@Dog_Gender_ID int = null,
	@Reg_No varchar(50) = null,
	@Date_of_Birth date = null,
	@Year_of_Birth smallint = null,
	@Merit_Points smallint = null,
	@NLWU bit = null,
	@Breeder varchar(255) = null,
	@Sire varchar(255) = null,
	@Dam varchar(255) = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[tblDogs]
           ([Dog_KC_Name]
           ,[Dog_Pet_Name]
           ,[Dog_Breed_ID]
           ,[Dog_Gender_ID]
           ,[Reg_No]
           ,[Date_Of_Birth]
           ,[Year_Of_Birth]
           ,[Merit_Points]
           ,[NLWU]
		   ,[Breeder]
		   ,[Sire]
		   ,[Dam]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Dog_ID
     VALUES
           (@Dog_KC_Name
           ,@Dog_Pet_Name
           ,@Dog_Breed_ID
           ,@Dog_Gender_ID
           ,@Reg_No
           ,@Date_of_Birth
           ,@Year_of_Birth
           ,@Merit_Points
           ,@NLWU
		   ,@Breeder
		   ,@Sire
		   ,@Dam
           ,GETDATE()
           ,@UserId);

END

GO
/****** Object:  StoredProcedure [spInsert_tblEntrants]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblEntrants] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Catalogue bit = null,
	@Overnight_Camping bit = null,
	@Overpayment money = null,
	@Underpayment money = null,
	@Offer_Of_Help bit = null,
	@Help_Details varchar(max) = null,
	@Withold_Address bit = null,
	@Send_Running_Order bit = null,
	@Entry_Date datetime = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[tblEntrants]
           ([Show_ID]
           ,[Catalogue]
           ,[Overnight_Camping]
           ,[Overpayment]
           ,[Underpayment]
           ,[Offer_Of_Help]
           ,[Help_Details]
           ,[Withold_Address]
           ,[Send_Running_Order]
           ,[Created_Date]
           ,[Created_By]
           ,[Entry_Date])
           OUTPUT inserted.Entrant_ID
     VALUES
           (@Show_ID
           ,@Catalogue
           ,@Overnight_Camping
           ,@Overpayment
           ,@Underpayment
           ,@Offer_Of_Help
           ,@Help_Details
           ,@Withold_Address
           ,@Send_Running_Order
           ,GETDATE()
           ,@UserId
           ,COALESCE(@Entry_Date, GETDATE()));

END

GO
/****** Object:  StoredProcedure [spInsert_tblGuarantors]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblGuarantors]
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
	INSERT INTO [dbo].[tblGuarantors]
           ([Show_ID]
           ,[Chairman_Person_ID]
           ,[Secretary_Person_ID]
           ,[Treasurer_Person_ID]
           ,[Committee1_Person_ID]
           ,[Committee2_Person_ID]
           ,[Committee3_Person_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Guarantor_ID
     VALUES
           (@Show_ID
           ,@Chairman_Person_ID
           ,@Secretary_Person_ID
           ,@Treasurer_Person_ID
           ,@Committee1_Person_ID
           ,@Committee2_Person_ID
           ,@Committee3_Person_ID
           ,GETDATE()
           ,@UserId);


END

GO
/****** Object:  StoredProcedure [spInsert_tblPeople]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblPeople] 
	-- Add the parameters for the stored procedure here
	@Person_Title varchar(50) = null,
	@Person_Surname varchar(50) = null,
	@Person_Forename varchar(50) = null,
	@Address_ID uniqueidentifier = null,
	@Person_Mobile varchar(20) = null,
	@Person_Landline varchar(20) = null,
	@Person_Email varchar(255) = null,
	@UserId uniqueidentifier = null,
	@Person_OE_Owner_ID bigint = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[tblPeople]
           ([Person_Title]
           ,[Person_Surname]
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
           ,[Deleted_By]
		   ,[Person_OE_Owner_ID])
           OUTPUT inserted.Person_ID
     VALUES
           (@Person_Title, @Person_Surname, @Person_Forename, @Address_ID, @Person_Mobile, @Person_Landline,
           @Person_Email, GETDATE(), @UserId, null, null, null, null, @Person_OE_Owner_ID);
	
	
END

GO
/****** Object:  StoredProcedure [spInsert_tblShow_Entry_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblShow_Entry_Classes] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Class_Name_ID int = null,
	@Class_No smallint = null,
	@Gender smallint = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[tblShow_Entry_Classes]
           ([Show_ID]
           ,[Class_Name_ID]
           ,[Class_No]
           ,[Gender]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Show_Entry_Class_ID
     VALUES
           (@Show_ID
           ,@Class_Name_ID
           ,@Class_No
           ,@Gender
           ,GETDATE()
           ,@UserId);

END

GO
/****** Object:  StoredProcedure [spInsert_tblShow_Final_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblShow_Final_Classes] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Show_Final_Class_Description varchar(255) = null,
	@Show_Final_Class_No smallint = null,
	@Judge_ID uniqueidentifier = null,
	@Stay_Time datetime = null,
	@Lunch_Time datetime = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[tblShow_Final_Classes]
           ([Show_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_Description]
           ,[Show_Final_Class_No]
           ,[Judge_ID]
           ,[Stay_Time]
           ,[Lunch_Time]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Show_Final_Class_ID
     VALUES
           (@Show_ID
           ,@Show_Entry_Class_ID
           ,@Show_Final_Class_Description
           ,@Show_Final_Class_No
           ,@Judge_ID
           ,@Stay_Time
           ,@Lunch_Time
           ,GETDATE()
           ,@UserId);

END

GO
/****** Object:  StoredProcedure [spInsert_tblShow_Helpers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblShow_Helpers] 
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
INSERT INTO [dbo].[tblShow_Helpers]
           ([Show_ID]
           ,[Person_ID]
           ,[Show_Role_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Show_Helper_ID
     VALUES
           (@Show_ID
           ,@Person_ID
           ,@Show_Role_ID
           ,GETDATE()
           ,@UserId);

END

GO
/****** Object:  StoredProcedure [spInsert_tblShows]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblShows] 
	-- Add the parameters for the stored procedure here
	@Club_ID uniqueidentifier = null,
	@Show_Year_ID int = null,
	@Show_Type_ID int = null,
	@Venue_ID uniqueidentifier = null,
	@Show_Opens datetime = null,
	@Judging_Commences datetime = null,
	@Show_Name varchar(255) = null,
	@Closing_Date datetime = null,
	@MaxClassesPerDog smallint = null,
	@Linked_Show bit = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[tblShows]
           ([Club_ID]
           ,[Show_Year_ID]
           ,[Show_Type_ID]
           ,[Venue_ID]
           ,[Show_Opens]
           ,[Judging_Commences]
           ,[Show_Name]
           ,[Closing_Date]
           ,[MaxClassesPerDog]
           ,[Linked_Show]
           ,[Entries_Complete]
           ,[Judges_Allocated]
           ,[Split_Classes]
           ,[Running_Orders_Allocated]
           ,[Ring_Numbers_Allocated]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Show_ID
     VALUES
           (@Club_ID
           ,@Show_Year_ID
           ,@Show_Type_ID
           ,@Venue_ID
           ,@Show_Opens
           ,@Judging_Commences
           ,@Show_Name
           ,@Closing_Date
           ,@MaxClassesPerDog
           ,@Linked_Show
           ,0
           ,0
           ,0
           ,0
           ,0
           ,GETDATE()
           ,@UserId);

END

GO
/****** Object:  StoredProcedure [spInsert_tblVenues]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsert_tblVenues] 
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
INSERT INTO [dbo].[tblVenues]
           ([Venue_Name]
           ,[Address_ID]
           ,[Venue_Contact]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Venue_ID
     VALUES
           (@Venue_Name
           ,@Address_ID
           ,@Venue_Contact
           ,GETDATE()
           ,@UserId);

END

GO
/****** Object:  StoredProcedure [spInsertFinalClassNames]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spInsertFinalClassNames] 
	-- Add the parameters for the stored procedure here
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Class_Name_Description varchar(255) = null,
	@Class_No smallint = null,
	@Show_Final_Class_Description varchar(255) = null,
	@Entries smallint = null,
	@OrderBy smallint = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[tblFinalClassNames]
           ([Show_Entry_Class_ID]
           ,[Class_Name_Description]
           ,[Class_No]
           ,[Show_Final_Class_Description]
           ,[Entries]
           ,[OrderBy])
     VALUES
           (@Show_Entry_Class_ID
           ,@Class_Name_Description
           ,@Class_No
           ,@Show_Final_Class_Description
           ,@Entries
           ,@OrderBy)
	
END

GO
/****** Object:  StoredProcedure [spPopulateCatalogueListByRingNumber]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spPopulateCatalogueListByRingNumber]

(
	@Show_ID uniqueidentifier = null
)

AS
	SET NOCOUNT ON;
	
	DELETE [dbo].[tblCatalogueListByRingNumber]

	INSERT INTO [dbo].[tblCatalogueListByRingNumber]

select 
	dc.Ring_No
	,ISNULL(NULLIF(owners.Person_Surname,'') + ', ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,CASE e.Withold_Address WHEN 1 THEN 'Address Withheld'
	ELSE ISNULL(NULLIF(a.Address_1,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_2,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_Town,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_City,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_County,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_Postcode,'') + '', '')
	END as Address
	,d.Dog_KC_Name
	,b.Dog_Breed_Description
	,g.Dog_Gender
	,COALESCE(NULLIF(LEFT(CONVERT(VARCHAR, d.Date_Of_Birth, 103), 10),''),
	NULLIF(RIGHT(CONVERT(VARCHAR, d.Year_Of_Birth, 103),4),''),'Unknown') as Date_Of_Birth
	,CONVERT(VARCHAR, sec.Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,e.Catalogue
FROM [dbo].[tblDog_Classes] dc
inner join [dbo].[tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
inner join [dbo].[lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [dbo].[tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [dbo].[tblAddresses] a
on owners.Address_ID = a.Address_ID
and a.Deleted_By is null
inner join [dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [dbo].[tblShow_Entry_Classes] sec
on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join [dbo].[tblShows] s
on sec.Show_ID = s.Show_ID
inner join [dbo].[tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
inner join [dbo].[lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join [dbo].[lkpDog_Breeds] b
on d.Dog_Breed_ID = b.Dog_Breed_ID
inner join [dbo].[lkpDog_Gender] g
on d.Dog_Gender_ID = g.Dog_Gender_ID
inner join
(select @Show_ID as Show_ID
Union ALL
select Child_Show_ID as Show_ID
from [dbo].[lnkLinked_Shows] ls
where Deleted_By IS NULL
AND Parent_Show_ID = @Show_ID) sl
on sec.Show_ID = sl.Show_ID
where dc.Deleted_By is null
order by Ring_No, d.Dog_KC_Name, owners.Created_Date, sfc.Show_Final_Class_No


GO
/****** Object:  StoredProcedure [spPopulateEntryClassCount]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [spPopulateEntryClassCount]

(
	@Show_ID uniqueidentifier = null
)

AS
	SET NOCOUNT ON;
	
	DELETE [dbo].[tblEntryClassCount]
	
	INSERT INTO [dbo].[tblEntryClassCount]
	
	SELECT sec.Show_Entry_Class_ID, [Class_Name_Description], sec.Class_No
	  ,COUNT(dc.dog_ID) as Entries
	FROM [dbo].[tblDog_Classes] dc
	inner join [dbo].[tblDogs] d
	on dc.Dog_ID=d.Dog_ID
	and dc.Deleted_By is null
	and d.Deleted_By is null
	inner join [dbo].[tblPeople] p
	on dc.Handler_ID=p.Person_ID
	and p.Deleted_By is null
	inner join [dbo].[tblShow_Entry_Classes] sec
	on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
	and sec.Deleted_By is null
	inner join [dbo].[tblShows] s
	on sec.Show_ID = s.Show_ID
	and s.Deleted_By is null
	inner join [dbo].[lkpClass_Names] cn
	on sec.Class_Name_ID = cn.Class_Name_ID
	and cn.Class_Name_Description <> 'NFC'
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [dbo].[lnkLinked_Shows] ls
	where Deleted_By IS NULL
	AND Parent_Show_ID = @Show_ID) sl
	on sec.Show_ID = sl.Show_ID
	group by sec.Show_Entry_Class_ID, Class_Name_Description, sec.Class_No
	order by sec.Class_No
  

GO
/****** Object:  StoredProcedure [spPopulateOwnersDogsClassesHandlers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spPopulateOwnersDogsClassesHandlers]
(
	@Owner_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
delete [dbo].[tblOwnersDogsClassesHandlers]
INSERT INTO [dbo].[tblOwnersDogsClassesHandlers]

SELECT 
	dc.[Dog_Class_ID]
	,[Owner_ID]
	,dc.Handler_ID
	,ISNULL(NULLIF(ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Surname,''),''),''),'Unknown') as [Owner]
	,d.Dog_KC_Name
	,CASE  
	WHEN Show_Final_Class_No < 18 
	THEN 'Sat - ' + Show_Final_Class_Description
	ELSE 'Sun - ' + Show_Final_Class_Description
	END as Class
	,ISNULL(NULLIF(ISNULL(NULLIF(handlers.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(handlers.Person_Forename,'') + ' ', '')
	+ ISNULL(NULLIF(handlers.Person_Surname,''),''),''),'Unknown') as [Handler]
	FROM [dbo].[lnkDog_Owners] do
	inner JOIN [dbo].[tblDogs] d
	on do.Dog_ID = d.Dog_ID
	and do.Owner_ID = @Owner_ID
	and d.Deleted_By is null
	inner JOIN [dbo].[tblPeople] owners
	on do.Owner_ID = owners.Person_ID
	and owners.Deleted_By is null
	inner JOIN [dbo].[tblDog_Classes] dc
	on d.Dog_ID = dc.Dog_ID
	and dc.Deleted_By is null
	inner JOIN [dbo].[tblPeople] handlers
	on dc.Handler_ID = handlers.Person_ID
	and handlers.Deleted_By is null
	inner JOIN [dbo].[tblShow_Final_Classes] sfc
	on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
	and sfc.Deleted_By is null
	


GO
/****** Object:  StoredProcedure [spPopulateOwnersDogsClassesList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spPopulateOwnersDogsClassesList]

(
	@Show_ID uniqueidentifier = null,
	@Show_Final_Class_ID uniqueidentifier = null
)

AS
	SET NOCOUNT ON;
	
	DELETE [dbo].[tblOwnersDogsClassesDrawnList]
	
	INSERT INTO [dbo].[tblOwnersDogsClassesDrawnList]

select 
	dc.Ring_No
	,ISNULL(NULLIF(owners.Person_Surname,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,d.Dog_KC_Name
	,dc.Running_Order
	,e.Offer_Of_Help
	,CONVERT(VARCHAR, sec.Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,e.Entrant_ID
	,owners.Person_ID
	,d.Dog_ID
	,dc.Dog_Class_ID
	,sfc.Show_Final_Class_ID
	,e.Entry_Date
FROM [dbo].[tblDog_Classes] dc
inner join [dbo].[tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
and dc.Deleted_By is null
inner join [dbo].[lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [dbo].[tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [dbo].[tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
and sfc.Deleted_By is null
and (sfc.Show_Final_Class_ID = @Show_FInal_Class_ID OR @Show_Final_Class_ID IS NULL)
inner join [dbo].[tblShow_Entry_Classes] sec
on sfc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join [dbo].[lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join [dbo].[tblShows] s
on sfc.Show_ID = s.Show_ID
and s.Deleted_By is null
--and s.Show_ID = @Show_ID
inner join
(select @Show_ID as Show_ID
Union ALL
select Child_Show_ID as Show_ID
from [dbo].[lnkLinked_Shows] ls
where Deleted_By IS NULL
AND Parent_Show_ID = @Show_ID) sl
on sfc.Show_ID = sl.Show_ID
order by dc.Ring_No, Dog_KC_Name, Class_No

GO
/****** Object:  StoredProcedure [spPopulateOwnersDogsClassesListOrderByEntry_Date]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spPopulateOwnersDogsClassesListOrderByEntry_Date]

(
	@Show_ID uniqueidentifier = null,
	@Show_Final_Class_ID uniqueidentifier = null
)

AS
	SET NOCOUNT ON;
	
	--DELETE [dbo].[tblOwnersDogsClassesDrawnList]
	
	INSERT INTO [dbo].[tblOwnersDogsClassesDrawnList]

select 
	dc.Ring_No
	,ISNULL(NULLIF(owners.Person_Surname,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,d.Dog_KC_Name
	,dc.Running_Order
	,e.Offer_Of_Help
	,CONVERT(VARCHAR, sfc.Show_Final_Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,e.Entrant_ID
	,owners.Person_ID
	,d.Dog_ID
	,dc.Dog_Class_ID
	,sfc.Show_Final_Class_ID
	,e.Entry_Date
FROM [dbo].[tblDog_Classes] dc
inner join [dbo].[tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
and dc.Deleted_By is null
inner join [dbo].[lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [dbo].[tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [dbo].[tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
and sfc.Deleted_By is null
and (sfc.Show_Final_Class_ID = @Show_FInal_Class_ID OR @Show_Final_Class_ID IS NULL)
inner join [dbo].[tblShow_Entry_Classes] sec
on sfc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join [dbo].[lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join [dbo].[tblShows] s
on sfc.Show_ID = s.Show_ID
and s.Deleted_By is null
and s.Show_ID = @Show_ID
--inner join
--(select @Show_ID as Show_ID
--Union ALL
--select Child_Show_ID as Show_ID
--from [dbo].[lnkLinked_Shows] ls
--where Deleted_By IS NULL
--AND Parent_Show_ID = @Show_ID) sl
--on sfc.Show_ID = sl.Show_ID
order by dc.Ring_No, Dog_KC_Name, Class_No

GO
/****** Object:  StoredProcedure [spPopulateRing_Numbers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spPopulateRing_Numbers]

(
	@Show_ID uniqueidentifier = null
)

AS
	SET NOCOUNT ON;
	
	DELETE [dbo].[tblRing_Numbers]
	
	INSERT INTO [dbo].[tblRing_Numbers]

	SELECT distinct row_number() OVER (ORDER BY p.person_Surname, p.person_forename)  AS Ring_No,
	d.Dog_ID, d.[Dog_KC_Name]
	   ,p.Person_Forename
	   ,p.Person_Surname
	FROM [dbo].[tblDogs] d
	inner join [dbo].[tblDog_Classes] dc
	on d.Dog_ID=dc.Dog_ID
	and d.Deleted_By is null
	and dc.Deleted_By is null
	inner join [dbo].[tblShow_Entry_Classes] sec
	on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
	and sec.Deleted_By is null
	right outer join [dbo].[tblShows] s
	on sec.Show_ID=s.Show_ID
	and s.Deleted_By is null
	inner join [dbo].[lkpClass_Names] cn
	on sec.Class_Name_ID = cn.Class_Name_ID
	and cn.Class_Name_Description <> 'NFC'
	INNER JOIN (
		select Dog_ID, Owner_ID
		from (
		select Dog_ID, Owner_ID, p.Person_Surname, p.Person_Forename, row_number() over(partition by Dog_ID order by p.Person_Surname, p.Person_Forename) as roworder
		from [dbo].[lnkDog_Owners] do
		inner join [dbo].[tblPeople] p
		on do.Owner_ID = p.Person_ID
		and do.Deleted_By is null
		and p.Deleted_By is null
		) do2
		where roworder = 1
	) do
	on d.Dog_ID = do.Dog_ID
	left join [dbo].[tblPeople] p
	on do.Owner_ID = p.Person_ID
	and p.Deleted_By is null
	INNER JOIN
	(SELECT @Show_ID AS Show_ID
	UNION ALL
	SELECT Child_Show_ID AS Show_ID
	FROM [dbo].[lnkLinked_Shows] ls
	WHERE Deleted_By IS NULL 
	AND Parent_Show_ID = @Show_ID) sl
	ON s.Show_ID = sl.Show_ID
	GROUP BY d.Dog_ID, d.[Dog_KC_Name], p.Person_Surname, p.Person_Forename
	order by p.Person_Surname, p.Person_Forename, d.Dog_KC_Name

GO
/****** Object:  StoredProcedure [spPopulateSpecialRequestList]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spPopulateSpecialRequestList]

(
	@Show_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@SpecialRequestsOnly bit = 0
)

AS
	SET NOCOUNT ON;
	
	DELETE [dbo].[tblSpecialRequestList]
	
	INSERT INTO [dbo].[tblSpecialRequestList]

select 
	dc.Ring_No
	,ISNULL(NULLIF(owners.Person_Surname,'') + ', ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,d.Dog_KC_Name
	,dc.Special_Request
	,CONVERT(VARCHAR, sfc.Show_Final_Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,dc.Dog_Class_ID
	,sfc.Show_Entry_Class_ID
	,sfc.Show_Final_Class_ID
FROM [dbo].[tblDog_Classes] dc
inner join [dbo].[tblDogs] d
on dc.Dog_ID = d.Dog_ID
and dc.Deleted_By is null
and d.Deleted_By is null
and ((@SpecialRequestsOnly = 1 AND nullif(dc.Special_Request,'') is not null)
or (@SpecialRequestsOnly = 0 AND nullif(dc.Special_Request,'') is null))
inner join [dbo].[lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [dbo].[tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [dbo].[tblShow_Entry_Classes] sec
on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
and (sec.Show_Entry_Class_ID = @Show_Entry_Class_ID OR @Show_Entry_Class_ID IS NULL)
inner join [dbo].[tblShows] s
on sec.Show_ID = s.Show_ID
and s.Deleted_By is null
inner join [dbo].[tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
and sfc.Deleted_By is null
inner join [dbo].[lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
INNER JOIN
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [dbo].[lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON s.Show_ID = sl.Show_ID
order by Ring_No, d.Dog_KC_Name, owners.Created_Date, sfc.Show_Final_Class_No

GO
/****** Object:  StoredProcedure [spRecord_Exists_For_Show_Entry_Class_ID]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [spRecord_Exists_For_Show_Entry_Class_ID]
(
	@Show_Entry_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT COUNT(Primary_Judge)
FROM dbo.tblJudges 
WHERE Show_Entry_Class_ID = @Show_Entry_Class_ID

GO
/****** Object:  StoredProcedure [spUpdate_lnkDog_Owners]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_lnkDog_Owners] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Dog_ID uniqueidentifier = null,
	@Owner_ID uniqueidentifier = null,
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
			UPDATE [dbo].[lnkDog_Owners]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_Owner_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[lnkDog_Owners]
			   SET [Dog_ID] = @Dog_ID
				  ,[Owner_ID] = @Owner_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_Owner_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdate_lnkLinked_Shows]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_lnkLinked_Shows] 
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
			UPDATE [dbo].[lnkLinked_Shows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Linked_Show_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[lnkLinked_Shows]
			   SET [Parent_Show_ID] = @Parent_Show_ID
				  ,[Child_Show_ID] = @Child_Show_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Linked_Show_ID = @Original_ID
		END
END


GO
/****** Object:  StoredProcedure [spUpdate_lnkUser_Person]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_lnkUser_Person] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@User_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
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
			UPDATE [dbo].[lnkUser_Person]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE User_Person_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[lnkUser_Person]
			   SET [User_ID] = @User_ID
				  ,[Person_ID] = @Person_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE User_Person_ID = @Original_ID
		END	
END

GO
/****** Object:  StoredProcedure [spUpdate_tblAddresses]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblAddresses] 
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
			UPDATE [dbo].[tblAddresses]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Address_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblAddresses]
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

GO
/****** Object:  StoredProcedure [spUpdate_tblClubs]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblClubs] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Club_Long_Name varchar(255) = null,
	@Club_Short_Name varchar(128) = null,
	@Club_Contact uniqueidentifier = null,
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
			UPDATE [dbo].[tblClubs]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Club_ID = @Original_ID
		END
	ELSE
		BEGIN
		UPDATE [dbo].[tblClubs]
		   SET [Club_Long_Name] = @Club_Long_Name
			  ,[Club_Short_Name] = @Club_Short_Name
			  ,[Club_Contact] = @Club_Contact
			  ,[Modified_Date] = GETDATE()
			  ,[Modified_By] = @UserId
		 WHERE Club_ID = @Original_ID
	END
END

GO
/****** Object:  StoredProcedure [spUpdate_tblDog_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblDog_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Entrant_ID uniqueidentifier = null,
	@Dog_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Preferred_Part int = null,
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
			UPDATE [dbo].[tblDog_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblDog_Classes]
			   SET [Entrant_ID] = @Entrant_ID
				  ,[Show_Entry_Class_ID] = @Show_Entry_Class_ID
				  ,[Preferred_Part] = @Preferred_Part
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

GO
/****** Object:  StoredProcedure [spUpdate_tblDogs]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblDogs] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Dog_KC_Name varchar(255) = null,
	@Dog_Pet_Name varchar(128) = null,
	@Dog_Breed_ID int = null,
	@Dog_Gender_ID int = null,
	@Reg_No varchar(50) = null,
	@Date_Of_Birth date = null,
	@Year_Of_Birth smallint = null,
	@Merit_Points smallint = null,
	@NLWU bit = null,
	@Breeder varchar(255) = null,
	@Sire varchar(255) = null,
	@Dam varchar(255) = null,
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
			UPDATE [dbo].[tblDogs]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblDogs]
			   SET [Dog_KC_Name] = @Dog_KC_Name
				  ,[Dog_Pet_Name] = @Dog_Pet_Name
				  ,[Dog_Breed_ID] = @Dog_Breed_ID
				  ,[Dog_Gender_ID] = @Dog_Gender_ID
				  ,[Reg_No] = @Reg_No
				  ,[Date_Of_Birth] = @Date_Of_Birth
				  ,[Year_Of_Birth] = @Year_Of_Birth
				  ,[Merit_Points] = @Merit_Points
				  ,[NLWU] = @NLWU
				  ,[Breeder] = @Breeder
				  ,[Sire] = @Sire
				  ,[Dam] = @Dam
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdate_tblEntrants]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblEntrants] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Catalogue bit = null,
	@Overnight_Camping bit = null,
	@Overpayment money = null,
	@Underpayment money = null,
	@Offer_Of_Help bit = null,
	@Help_Details varchar(max) = null,
	@Withold_Address bit = null,
	@Send_Running_Order bit = null,
	@Entry_Date datetime = null,
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
			UPDATE [dbo].[tblEntrants]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Entrant_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblEntrants]
			   SET [Show_ID] = @Show_ID
				  ,[Catalogue] = @Catalogue
				  ,[Overnight_Camping] = @Overnight_Camping
				  ,[Overpayment] = @Overpayment
				  ,[Underpayment] = @Underpayment
				  ,[Offer_Of_Help] = @Offer_Of_Help
				  ,[Help_Details] = @Help_Details
				  ,[Withold_Address] = @Withold_Address
				  ,[Send_Running_Order] = @Send_Running_Order
				  ,[Entry_Date] = COALESCE(@Entry_Date, GETDATE())
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Entrant_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdate_tblGuarantors]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblGuarantors] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
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
			UPDATE [dbo].[tblGuarantors]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Guarantor_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblGuarantors]
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

GO
/****** Object:  StoredProcedure [spUpdate_tblJudges]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblJudges] 
	-- Add the parameters for the stored procedure here
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Primary_Judge nvarchar(150) = null,
	@Reserve_Judge nvarchar(150) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[tblJudges]
		SET [Primary_Judge] = @Primary_Judge
			,[Reserve_Judge] = @Reserve_Judge
		WHERE Show_Entry_Class_ID = @Show_Entry_Class_ID
END

GO
/****** Object:  StoredProcedure [spUpdate_tblPeople]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblPeople] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Person_Title varchar(50) = null,
	@Person_Surname varchar(50) = null,
	@Person_Forename varchar(50) = null,
	@Address_ID uniqueidentifier = null,
	@Person_Mobile varchar(20) = null,
	@Person_Landline varchar(20) = null,
	@Person_Email varchar(255) = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier,
	@Person_OE_Owner_ID bigint = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [dbo].[tblPeople]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Person_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblPeople]
			   SET [Person_Title] = @Person_Title 
				  ,[Person_Surname] = @Person_Surname
				  ,[Person_Forename] = @Person_Forename
				  ,[Address_ID] = @Address_ID
				  ,[Person_Mobile] = @Person_Mobile
				  ,[Person_Landline] = @Person_Landline
				  ,[Person_Email] = @Person_Email
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
				  ,[Person_OE_Owner_ID] = @Person_OE_Owner_ID
			 WHERE Person_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdate_tblShow_Entry_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblShow_Entry_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Class_Name_ID int = null,
	@Class_No smallint = null,
	@Gender smallint = null,
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
			UPDATE [dbo].[tblShow_Entry_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Entry_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblShow_Entry_Classes]
			   SET [Show_ID] = @Show_ID
				  ,[Class_Name_ID] = @Class_Name_ID
				  ,[Class_No] = @Class_No
				  ,[Gender] = @Gender
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Entry_Class_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdate_tblShow_Final_Classes]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblShow_Final_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Show_Final_Class_Description varchar(255) = null,
	@Show_Final_Class_No smallint = null,
	@Judge_ID uniqueidentifier = null,
	@Stay_Time datetime = null,
	@Lunch_Time datetime = null,
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
			UPDATE [dbo].[tblShow_Final_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Final_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblShow_Final_Classes]
			   SET [Show_ID] = @Show_ID
				  ,[Show_Entry_Class_ID] = @Show_Entry_Class_ID
				  ,[Show_Final_Class_Description] = @Show_Final_Class_Description
				  ,[Show_Final_Class_No] = @Show_Final_Class_No
				  ,[Judge_ID] = @Judge_ID
				  ,[Stay_Time] = @Stay_Time
				  ,[Lunch_Time] = @Lunch_Time
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Final_Class_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdate_tblShow_Helpers]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblShow_Helpers] 
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
			UPDATE [dbo].[tblShow_Helpers]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Helper_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblShow_Helpers]
			   SET [Show_ID] = @Show_ID
				  ,[Person_ID] = @Person_ID
				  ,[Show_Role_ID] = @Show_Role_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Helper_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdate_tblShows]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblShows] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Club_ID uniqueidentifier = null,
	@Show_Year_ID int = null,
	@Show_Type_ID int = null,
	@Venue_ID uniqueidentifier = null,
	@Show_Opens datetime = null,
	@Judging_Commences datetime = null,
	@Show_Name varchar(255) = null,
	@Closing_Date datetime = null,
	@Entries_Complete bit = null,
	@Judges_Allocated bit = null,
	@Split_Classes bit = null,
	@Running_Orders_Allocated bit = null,
	@Ring_Numbers_Allocated bit = null,
	@MaxClassesPerDog smallint = null,
	@Linked_Show bit = null,
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
			UPDATE [dbo].[tblShows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblShows]
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
				  ,[MaxClassesPerDog] = @MaxClassesPerDog
				  ,[Linked_Show] = @Linked_Show
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdate_tblVenues]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdate_tblVenues] 
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
			UPDATE [dbo].[tblShows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Venue_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [dbo].[tblVenues]
			   SET [Venue_Name] = @Venue_Name
				  ,[Address_ID] = @Address_ID
				  ,[Venue_Contact] = @Venue_Contact
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Venue_ID = @Original_ID
		END
END

GO
/****** Object:  StoredProcedure [spUpdateFinalClassNames]    Script Date: 10/05/2017 00:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [spUpdateFinalClassNames] 
	-- Add the parameters for the stored procedure here
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Class_Name_Description varchar(255) = null,
	@Class_No smallint = null,
	@Show_Final_Class_Description varchar(255) = null,
	@Entries smallint = 0,
	@OrderBy smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE [dbo].[tblFinalClassNames]
   SET [Show_Entry_Class_ID] = @Show_Entry_Class_ID
      ,[Class_Name_Description] = @Class_Name_Description
      ,[Class_No] = @Class_No
      ,[Show_Final_Class_Description] = @Show_Final_Class_Description
      ,[Entries] = @Entries
 WHERE [OrderBy] = @OrderBy


END

GO
USE [master]
GO
ALTER DATABASE [dsm_2018] SET  READ_WRITE 
GO
