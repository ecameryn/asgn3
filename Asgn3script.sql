USE [master]
GO
/****** Object:  Database [dbHolstickAsgn3]    Script Date: 12/6/2016 12:49:22 AM ******/
CREATE DATABASE [dbHolstickAsgn3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbHolstickAsgn3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dbHolstickAsgn3.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'dbHolstickAsgn3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dbHolstickAsgn3_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbHolstickAsgn3] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbHolstickAsgn3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbHolstickAsgn3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbHolstickAsgn3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbHolstickAsgn3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbHolstickAsgn3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbHolstickAsgn3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET RECOVERY FULL 
GO
ALTER DATABASE [dbHolstickAsgn3] SET  MULTI_USER 
GO
ALTER DATABASE [dbHolstickAsgn3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbHolstickAsgn3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbHolstickAsgn3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbHolstickAsgn3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbHolstickAsgn3] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbHolstickAsgn3', N'ON'
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [holstick_electra]    Script Date: 12/6/2016 12:49:23 AM ******/
CREATE LOGIN [holstick_electra] WITH PASSWORD=N'Ymp1i+GTGRDyr2WDegT+x4iTM3S9VCGvN6FavoHidNY=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [holstick_electra] DISABLE
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [holstick_electra]
GO
USE [dbHolstickAsgn3]
GO
/****** Object:  Table [dbo].[Electronics]    Script Date: 12/6/2016 12:49:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Electronics](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Description] [text] NOT NULL,
 CONSTRAINT [PK_Electronics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiftCards]    Script Date: 12/6/2016 12:49:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiftCards](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Description] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kids]    Script Date: 12/6/2016 12:49:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kids](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Description] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Electronics] ([ID], [Name], [Price], [Description]) VALUES (1, N'Note 7', 679, N'Exploding Edition!')
INSERT [dbo].[Electronics] ([ID], [Name], [Price], [Description]) VALUES (2, N'iPhone 7', 479, N'Extra Super Shiny Black!')
INSERT [dbo].[Electronics] ([ID], [Name], [Price], [Description]) VALUES (3, N'NES Classic', 60, N'Virtually No Bits!')
INSERT [dbo].[GiftCards] ([ID], [Name], [Price], [Description]) VALUES (1, N'Walmart', 25, N'$20 off $45 Gift Card ')
INSERT [dbo].[GiftCards] ([ID], [Name], [Price], [Description]) VALUES (2, N'Best Buy', 140, N'$60 off $200 Gift Card')
INSERT [dbo].[GiftCards] ([ID], [Name], [Price], [Description]) VALUES (3, N'Shell Gas', 100, N'$20 off $120 Gift Car')
INSERT [dbo].[Kids] ([ID], [Name], [Price], [Description]) VALUES (1, N'American Doll ', 90, N'Future Doctor *All Toys Come with 2 Free Tickets to See Power Ranges Movies Before Official Release*')
INSERT [dbo].[Kids] ([ID], [Name], [Price], [Description]) VALUES (2, N'Legos', 100, N'Star Wars Ultimate Set *All Kids Items Come with 2 Free Tickets to See Power Ranges Movies Before Official Release*')
INSERT [dbo].[Kids] ([ID], [Name], [Price], [Description]) VALUES (3, N'NES Classic Mini', 60, N'Virutally No Bits! *All Kids Items Come with 2 Free Tickets to See Power Ranges Movies Before Official Release*')
USE [master]
GO
ALTER DATABASE [dbHolstickAsgn3] SET  READ_WRITE 
GO
