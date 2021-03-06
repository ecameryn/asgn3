USE [master]
GO
/****** Object:  Database [dbHolstickAsgn2]    Script Date: 12/6/2016 12:50:14 AM ******/
CREATE DATABASE [dbHolstickAsgn2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbHolstickAsgn2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dbHolstickAsgn2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'dbHolstickAsgn2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dbHolstickAsgn2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbHolstickAsgn2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbHolstickAsgn2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbHolstickAsgn2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbHolstickAsgn2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbHolstickAsgn2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbHolstickAsgn2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbHolstickAsgn2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET RECOVERY FULL 
GO
ALTER DATABASE [dbHolstickAsgn2] SET  MULTI_USER 
GO
ALTER DATABASE [dbHolstickAsgn2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbHolstickAsgn2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbHolstickAsgn2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbHolstickAsgn2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbHolstickAsgn2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbHolstickAsgn2', N'ON'
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [holstick_electra]    Script Date: 12/6/2016 12:50:14 AM ******/
CREATE LOGIN [holstick_electra] WITH PASSWORD=N'v0decQ87MTDTiFPeK1XnbowpD2r0CZZjLKcUQv7QaVI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [holstick_electra] DISABLE
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [holstick_electra]
GO
USE [dbHolstickAsgn2]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 12/6/2016 12:50:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[crn] [int] NOT NULL,
	[crsSection] [int] NOT NULL,
	[termID] [int] NOT NULL,
	[instrID] [int] NOT NULL,
	[subjID] [int] NOT NULL,
	[subjType] [varchar](6) NOT NULL,
	[weekDay] [varchar](10) NOT NULL,
	[beginTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
	[timeOfDay] [varchar](2) NOT NULL,
	[building] [varchar](20) NOT NULL,
	[roomNum] [int] NOT NULL,
	[beginDate] [varchar](10) NOT NULL,
	[endDate] [varchar](10) NOT NULL,
	[description] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[instructors]    Script Date: 12/6/2016 12:50:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructors](
	[instrID] [int] NOT NULL,
	[firstName] [varchar](15) NOT NULL,
	[lastName] [varchar](15) NOT NULL,
 CONSTRAINT [PK_instructors] PRIMARY KEY CLUSTERED 
(
	[instrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[semesters]    Script Date: 12/6/2016 12:50:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semesters](
	[termID] [int] NOT NULL,
	[term] [varchar](10) NOT NULL,
	[termYR] [int] NOT NULL,
 CONSTRAINT [PK_semesters] PRIMARY KEY CLUSTERED 
(
	[termID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[subjects]    Script Date: 12/6/2016 12:50:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[subjID] [int] NOT NULL,
	[subjType] [varchar](5) NULL,
	[subjName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_subjects] PRIMARY KEY CLUSTERED 
(
	[subjID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12345, 1, 3, 2, 2108, N'CPSC', N'TR', 430, 545, N'PM', N'CCT', 408, N'2016-08-15', N'2016-12-05', N'''This course extends the concepts of primitive data types by teaching the student a set of 
	data structures that pervades both the theoretical and practical domains of computer science.''')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12346, 1, 3, 2, 1301, N'CPSC', N'MW', 430, 545, N'PM', N'CCT', 407, N'2016-08-15', N'2016-12-05', N'This course includes an overview of computers and programming; problem solving and algorithm development; 
	simple data types; arithmetic and logic operators; selection structures; repetition structures; text files;
	arrays (one-and-two-dimensional); procedural abstraction and software design; modular programming (including sub-programs or the equivalent).')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12347, 2, 3, 3, 3125, N'CPSC', N'TR', 230, 345, N'PM', N'CCT', 405, N'2016-08-15', N'2016-12-05', N'''An introduction to basic operating system level software concepts. Course topics include processes, 
	threads, symmetric multi-processing, thread synchronization and memory management techniques.''')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12348, 1, 3, 4, 1111, N'MATH', N'MWF', 230, 345, N'PM', N'UNIV', 108, N'2016-08-15', N'2016-12-05', N'Study of functions, and their graphs, inequalities, and linear, quadratic, piece-wise defined, rational, 
	polynomial, exponential, and logarithmic functions. Appropriate applications will be included. Course is designed 
	to develop algebraic concepts to a level sufficient for the study of calculus. (Course fee required.)')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12349, 2, 3, 4, 2135, N'MATH', N'TR', 730, 845, N'PM', N'UNIV', 212, N'2016-08-15', N'2016-12-05', N'Topics include parametric equations and polar coordinates, vectors, dot and cross products, 
	vector functions of one real variable, real valued functions of several variables, differential 
	calculus of functions of several variables, and multiple integrals.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12350, 1, 3, 1, 5125, N'MATH', N'TBA', 830, 945, N'PM', N'UNIV', 204, N'2016-08-15', N'2016-12-05', N'Topics include enumeration, relations, graphs, trees, and modeling computation.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12351, 1, 1, 4, 2108, N'CPSC', N'TR', 1030, 1145, N'AM', N'CCT', 409, N'2016-01-11', N'2016-05-02', N'This course extends the concepts of primitive data types by teaching the student a set of 
	data structures that pervades both the theoretical and practical domains of computer science.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12352, 1, 1, 3, 1301, N'CPSC', N'MW', 1230, 145, N'PM', N'CCT', 406, N'2016-01-11', N'2016-05-02', N'This course includes an overview of computers and programming; problem solving and algorithm development; 
	simple data types; arithmetic and logic operators; selection structures; repetition structures; text files;
	arrays (one-and-two-dimensional); procedural abstraction and software design; modular programming (including sub-programs or the equivalent).')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12353, 2, 1, 2, 3125, N'CPSC', N'TR', 1130, 1245, N'PM', N'CCT', 410, N'2016-01-11', N'2016-05-02', N'An introduction to basic operating system level software concepts. Course topics include processes, 
	threads, symmetric multi-processing, thread synchronization and memory management techniques.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12354, 1, 1, 1, 1111, N'MATH', N'MWF', 930, 1045, N'AM', N'UNIV', 109, N'2016-01-11', N'2016-05-02', N'Study of functions, and their graphs, inequalities, and linear, quadratic, piece-wise defined, rational, 
	polynomial, exponential, and logarithmic functions. Appropriate applications will be included. Course is designed 
	to develop algebraic concepts to a level sufficient for the study of calculus. (Course fee required.)')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12355, 2, 1, 4, 2135, N'MATH', N'TBA', 730, 845, N'PM', N'UNIV', 215, N'2016-01-11', N'2016-05-02', N'Topics include parametric equations and polar coordinates, vectors, dot and cross products, 
	vector functions of one real variable, real valued functions of several variables, differential 
	calculus of functions of several variables, and multiple integrals.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12356, 1, 1, 1, 5125, N'MATH', N'TR', 830, 945, N'AM', N'UNIV', 204, N'2016-01-11', N'2016-05-02', N'Topics include enumeration, relations, graphs, trees, and modeling computation.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12357, 1, 2, 4, 2108, N'CPSC', N'TR', 300, 350, N'PM', N'CCT', 415, N'2016-05-15', N'2016-07-29', N'This course extends the concepts of primitive data types by teaching the student a set of 
	data structures that pervades both the theoretical and practical domains of computer science.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12358, 1, 2, 3, 1301, N'CPSC', N'MW', 430, 545, N'PM', N'CCT', 404, N'2016-05-15', N'2016-07-29', N'This course includes an overview of computers and programming; problem solving and algorithm development; 
	simple data types; arithmetic and logic operators; selection structures; repetition structures; text files;
	arrays (one-and-two-dimensional); procedural abstraction and software design; modular programming (including sub-programs or the equivalent).')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12359, 2, 2, 2, 3125, N'CPSC', N'TR', 230, 345, N'PM', N'CCT', 411, N'2016-05-15', N'2016-07-29', N'''An introduction to basic operating system level software concepts. Course topics include processes,
	threads, symmetric multi-processing, thread synchronization and memory management techniques.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12360, 1, 2, 3, 1111, N'MATH', N'MWF', 600, 650, N'PM', N'UNIV', 108, N'2016-05-15', N'2016-07-29', N'Study of functions, and their graphs, inequalities, and linear, quadratic, piece-wise defined, rational, 
	polynomial, exponential, and logarithmic functions. Appropriate applications will be included. Course is designed 
	to develop algebraic concepts to a level sufficient for the study of calculus. (Course fee required.)')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12361, 2, 2, 4, 2135, N'MATH', N'TR', 600, 845, N'PM', N'UNIV', 212, N'2016-05-15', N'2016-07-29', N'Topics include parametric equations and polar coordinates, vectors, dot and cross products, 
	vector functions of one real variable, real valued functions of several variables, differential 
	calculus of functions of several variables, and multiple integrals.')
INSERT [dbo].[courses] ([crn], [crsSection], [termID], [instrID], [subjID], [subjType], [weekDay], [beginTime], [endTime], [timeOfDay], [building], [roomNum], [beginDate], [endDate], [description]) VALUES (12362, 1, 2, 1, 5125, N'MATH', N'TBA', 300, 350, N'PM', N'UNIV', 204, N'2016-05-15', N'2016-07-29', N'Topics include enumeration, relations, graphs, trees, and modeling computation.')
INSERT [dbo].[instructors] ([instrID], [firstName], [lastName]) VALUES (1, N'John', N'Smith')
INSERT [dbo].[instructors] ([instrID], [firstName], [lastName]) VALUES (2, N'Jane', N'Brown')
INSERT [dbo].[instructors] ([instrID], [firstName], [lastName]) VALUES (3, N'Mark', N'Adams')
INSERT [dbo].[semesters] ([termID], [term], [termYR]) VALUES (1, N'Spring', 2016)
INSERT [dbo].[semesters] ([termID], [term], [termYR]) VALUES (2, N'Summer', 2016)
INSERT [dbo].[semesters] ([termID], [term], [termYR]) VALUES (3, N'Fall', 2016)
INSERT [dbo].[subjects] ([subjID], [subjType], [subjName]) VALUES (1111, N'MATH', N'College Algebra')
INSERT [dbo].[subjects] ([subjID], [subjType], [subjName]) VALUES (1301, N'CPSC', N'Computer Science I')
INSERT [dbo].[subjects] ([subjID], [subjType], [subjName]) VALUES (2108, N'CPSC', N'Data Structures')
INSERT [dbo].[subjects] ([subjID], [subjType], [subjName]) VALUES (2135, N'MATH', N'Calculus w/Analytical Geo 3')
INSERT [dbo].[subjects] ([subjID], [subjType], [subjName]) VALUES (3125, N'CPSC', N'Operating Systems')
INSERT [dbo].[subjects] ([subjID], [subjType], [subjName]) VALUES (5125, N'MATH', N'Discrete Mathematics')
USE [master]
GO
ALTER DATABASE [dbHolstickAsgn2] SET  READ_WRITE 
GO
