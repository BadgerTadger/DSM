USE [master]
GO

/****** Object:  Database [sussexsoftwaresolutions]    Script Date: 04/25/2013 09:08:18 ******/
CREATE DATABASE [sussexsoftwaresolutions] ON  PRIMARY 
( NAME = N'sussexsoftwaresolutions', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SSSDEVSQL\MSSQL\DATA\sussexsoftwaresolutions.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sussexsoftwaresolutions_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SSSDEVSQL\MSSQL\DATA\sussexsoftwaresolutions_log.ldf' , SIZE = 24384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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


