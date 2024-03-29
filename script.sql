USE [master]
GO
/****** Object:  Database [RentalHouse]    Script Date: 12/10/2020 7:01:45 pm ******/
CREATE DATABASE [RentalHouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RentalHouse_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RentalHouse.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RentalHouse_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RentalHouse.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RentalHouse] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RentalHouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RentalHouse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RentalHouse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RentalHouse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RentalHouse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RentalHouse] SET ARITHABORT OFF 
GO
ALTER DATABASE [RentalHouse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RentalHouse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RentalHouse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RentalHouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RentalHouse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RentalHouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RentalHouse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RentalHouse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RentalHouse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RentalHouse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RentalHouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RentalHouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RentalHouse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RentalHouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RentalHouse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RentalHouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RentalHouse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RentalHouse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RentalHouse] SET  MULTI_USER 
GO
ALTER DATABASE [RentalHouse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RentalHouse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RentalHouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RentalHouse] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RentalHouse] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RentalHouse] SET QUERY_STORE = OFF
GO
USE [RentalHouse]
GO
/****** Object:  Table [dbo].[AdminLogin]    Script Date: 12/10/2020 7:01:45 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminLogin](
	[LoginName] [varchar](50) NULL,
	[LoginPassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactRecord]    Script Date: 12/10/2020 7:01:45 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_ContactRecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerRecord]    Script Date: 12/10/2020 7:01:45 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[HouseNo] [varchar](50) NULL,
 CONSTRAINT [PK_CustomerRecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HouseRecord]    Script Date: 12/10/2020 7:01:45 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HouseRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Image_Location] [varchar](50) NULL,
 CONSTRAINT [PK_HouseRecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AdminLogin] ([LoginName], [LoginPassword]) VALUES (N'admin', N'admin')
GO
SET IDENTITY_INSERT [dbo].[ContactRecord] ON 

INSERT [dbo].[ContactRecord] ([id], [Name], [Email], [Contact], [Message]) VALUES (1, N'qw', N'qw@as.com', N'123', N'ass')
INSERT [dbo].[ContactRecord] ([id], [Name], [Email], [Contact], [Message]) VALUES (2, N'Simran', N'sbatth05@gmail.com', N'0225943988', N'hi')
SET IDENTITY_INSERT [dbo].[ContactRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[HouseRecord] ON 

INSERT [dbo].[HouseRecord] ([id], [Name], [Size], [Price], [Address], [Image_Location]) VALUES (1, N'qw', N'qwq', N'qww', N'qwwq', N'qwqw')
INSERT [dbo].[HouseRecord] ([id], [Name], [Size], [Price], [Address], [Image_Location]) VALUES (2, N'santvilla', N'12X24', N'$12,34,000', N'HNO 255  URBAN ESTATE', N'house/h1.jpg')
SET IDENTITY_INSERT [dbo].[HouseRecord] OFF
GO
USE [master]
GO
ALTER DATABASE [RentalHouse] SET  READ_WRITE 
GO
