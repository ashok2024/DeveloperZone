USE [master]
GO
/****** Object:  Database [VMSDB]    Script Date: 04-08-2022 09:26:55 ******/
CREATE DATABASE [VMSDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VMSDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VMSDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VMSDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VMSDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VMSDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VMSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VMSDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VMSDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VMSDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VMSDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VMSDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VMSDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VMSDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VMSDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VMSDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VMSDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VMSDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VMSDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VMSDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VMSDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VMSDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VMSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VMSDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VMSDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VMSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VMSDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VMSDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VMSDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VMSDB] SET RECOVERY FULL 
GO
ALTER DATABASE [VMSDB] SET  MULTI_USER 
GO
ALTER DATABASE [VMSDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VMSDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VMSDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VMSDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VMSDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VMSDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VMSDB', N'ON'
GO
ALTER DATABASE [VMSDB] SET QUERY_STORE = OFF
GO
USE [VMSDB]
GO
/****** Object:  User [Dev-2022]    Script Date: 04-08-2022 09:26:55 ******/
CREATE USER [Dev-2022] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiMonitorTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiMonitorTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Page] [nvarchar](50) NULL,
	[Action] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[EmpCode] [nvarchar](50) NULL,
	[EmpName] [nvarchar](50) NULL,
	[DeviceSRNO] [nvarchar](50) NULL,
	[DeviceName] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Command] [nvarchar](50) NULL,
 CONSTRAINT [PK_ApiMonitorTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookViewing]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookViewing](
	[BookViewId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[PackageId] [int] NOT NULL,
	[RentId] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
	[LandlordId] [int] NOT NULL,
	[PropertiesDetailId] [int] NULL,
	[PropertiesLandlordId] [int] NULL,
	[PropertiesPropertyTypeId] [int] NULL,
	[PropertiesFeatureId] [int] NULL,
	[RentDetailsRentDetailId] [int] NULL,
	[RentDetailsPropertyId] [int] NULL,
	[RentDetailsPackageId] [int] NULL,
	[RentDetailsContractId] [int] NULL,
	[PropertiesTypeId] [int] NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_BookViewing] PRIMARY KEY CLUSTERED 
(
	[BookViewId] ASC,
	[PropertyId] ASC,
	[PackageId] ASC,
	[RentId] ASC,
	[TenantId] ASC,
	[LandlordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BranchTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CompanyId] [int] NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[Phone] [nvarchar](10) NULL,
	[Address] [nvarchar](200) NULL,
 CONSTRAINT [PK_BranchTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[Phone] [nvarchar](10) NULL,
	[Address] [nvarchar](200) NULL,
 CONSTRAINT [PK_CompanyTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractDetails]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractDetails](
	[ContractDetailId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[PackageId] [int] NOT NULL,
	[ContractDetail] [nvarchar](max) NULL,
	[PropertiesDetailsPropertiesDetailId] [int] NULL,
	[PropertiesDetailsLandlordId] [int] NULL,
	[PropertiesDetailsPropertyTypeId] [int] NULL,
	[PropertiesDetailsFeatureId] [int] NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_ContractDetails] PRIMARY KEY CLUSTERED 
(
	[ContractDetailId] ASC,
	[PropertyId] ASC,
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourierTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourierTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourierNo] [nvarchar](50) NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[CourierCompany] [nvarchar](50) NULL,
	[CourierPersonName] [nvarchar](100) NULL,
	[Time] [nvarchar](20) NULL,
	[Date] [date] NULL,
	[UserId] [int] NULL,
	[Description] [nvarchar](200) NULL,
	[EmployeeId] [int] NULL,
	[PhotoPath] [nvarchar](1000) NULL,
	[CertifactePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_CourierTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBSettingTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBSettingTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataSource] [nvarchar](50) NULL,
	[DBName] [nvarchar](50) NULL,
	[UserId] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_DBSettingTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CompanyId] [int] NULL,
	[BranchId] [int] NULL,
 CONSTRAINT [PK_DepartmentTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesignationTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignationTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
	[CompanyId] [int] NULL,
	[BranchId] [int] NULL,
 CONSTRAINT [PK_DesignationTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceLogsTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceLogsTB](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[DeviceAccountId] [int] NULL,
	[DownloadDate] [datetime] NULL,
	[AttendDate] [datetime] NULL,
	[PunchStatus] [varchar](50) NULL,
	[EmpID] [int] NULL,
	[AccessCardNo] [varchar](50) NULL,
	[ADate] [date] NULL,
	[ATime] [time](7) NULL,
 CONSTRAINT [PK_DeviceLogsTB] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DevicesTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevicesTB](
	[DeviceId] [int] IDENTITY(1,1) NOT NULL,
	[DeviceName] [varchar](50) NULL,
	[DeviceSerialNo] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[DeviceStatus] [varchar](50) NULL,
	[DownloadDate] [datetime] NULL,
	[DeviceLocation] [varchar](255) NULL,
	[DeviceAccountId] [varchar](50) NULL,
	[DeviceDirection] [varchar](50) NULL,
	[DeviceIPAddress] [varchar](50) NULL,
	[Port] [varchar](10) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_DevicesTB] PRIMARY KEY CLUSTERED 
(
	[DeviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailDetails]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailDetails](
	[EmailDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ToEmail] [nvarchar](max) NULL,
	[FromEmail] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Containt] [nvarchar](max) NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmailDetails] PRIMARY KEY CLUSTERED 
(
	[EmailDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePunchTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePunchTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[major] [nvarchar](50) NULL,
	[minor] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[employeeNoString] [nvarchar](50) NULL,
	[cardNo] [nvarchar](50) NULL,
	[cardReaderNo] [nvarchar](50) NULL,
	[doorNo] [nvarchar](50) NULL,
	[currentVerifyMode] [nvarchar](50) NULL,
	[serialNo] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[mask] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[userType] [nvarchar](50) NULL,
	[deviceIndex] [nvarchar](100) NULL,
	[DeviceAccountId] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmployeePunchTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeScheduledVisitTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeScheduledVisitTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VisitId] [int] NULL,
	[EmployeeId] [int] NULL,
 CONSTRAINT [PK_EmployeeScheduledVisitTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[FavoriteId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[propertiesDetailsPropertiesDetailId] [int] NULL,
	[propertiesDetailsLandlordId] [int] NULL,
	[propertiesDetailsPropertyTypeId] [int] NULL,
	[propertiesDetailsFeatureId] [int] NULL,
	[IsFavorite] [bit] NOT NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Favorite] PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC,
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feture]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feture](
	[FetureId] [int] IDENTITY(1,1) NOT NULL,
	[FetureName] [nvarchar](max) NOT NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Feture] PRIMARY KEY CLUSTERED 
(
	[FetureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inquiry]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inquiry](
	[InquiryId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
	[PropertiesDetailsPropertiesDetailId] [int] NULL,
	[PropertiesDetailsLandlordId] [int] NULL,
	[PropertiesDetailsPropertyTypeId] [int] NULL,
	[PropertiesDetailsFeatureId] [int] NULL,
	[Query] [nvarchar](max) NULL,
	[QueryDescription] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Inquiry] PRIMARY KEY CLUSTERED 
(
	[InquiryId] ASC,
	[PropertyId] ASC,
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailSettingTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailSettingTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Host] [nvarchar](50) NULL,
	[smtpfrom] [nvarchar](50) NULL,
	[port] [int] NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_MailSettingTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageDetails]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageDetails](
	[MessageDetailId] [int] IDENTITY(1,1) NOT NULL,
	[SenderMobileNumber] [int] NOT NULL,
	[RecevierMobileNumber] [int] NOT NULL,
	[Containt] [nvarchar](max) NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MessageDetails] PRIMARY KEY CLUSTERED 
(
	[MessageDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packages]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[PackageId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[PropertiesDetailId] [int] NULL,
	[PropertiesLandlordId] [int] NULL,
	[PropertiesPropertyTypeId] [int] NULL,
	[PropertiesFeatureId] [int] NULL,
	[Price] [float] NOT NULL,
	[AdverticementType] [nvarchar](max) NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED 
(
	[PackageId] ASC,
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertiesDetails]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertiesDetails](
	[PropertiesDetailId] [int] NOT NULL,
	[LandlordId] [int] NOT NULL,
	[PropertyTypeId] [int] NOT NULL,
	[FeatureId] [int] NOT NULL,
	[PropertiesTypeId] [int] NULL,
	[PropertyName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PropertyDescription] [nvarchar](max) NULL,
	[FetureId] [int] NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_PropertiesDetails] PRIMARY KEY CLUSTERED 
(
	[PropertiesDetailId] ASC,
	[LandlordId] ASC,
	[PropertyTypeId] ASC,
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertiesType]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertiesType](
	[PropertiesTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](max) NOT NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_PropertiesType] PRIMARY KEY CLUSTERED 
(
	[PropertiesTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyLocation]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyLocation](
	[PropertyLocationId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[PropertiesDetailsPropertiesDetailId] [int] NULL,
	[PropertiesDetailsLandlordId] [int] NULL,
	[PropertiesDetailsPropertyTypeId] [int] NULL,
	[PropertiesDetailsFeatureId] [int] NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_PropertyLocation] PRIMARY KEY CLUSTERED 
(
	[PropertyLocationId] ASC,
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentDetails]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentDetails](
	[RentDetailId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[PackageId] [int] NOT NULL,
	[ContractId] [int] NOT NULL,
	[RentDetail] [nvarchar](max) NULL,
	[PropertiesDetailsPropertiesDetailId] [int] NULL,
	[PropertiesDetailsLandlordId] [int] NULL,
	[PropertiesDetailsPropertyTypeId] [int] NULL,
	[PropertiesDetailsFeatureId] [int] NULL,
	[ContractDetailsContractDetailId] [int] NULL,
	[ContractDetailsPropertyId] [int] NULL,
	[ContractDetailsPackageId] [int] NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_RentDetails] PRIMARY KEY CLUSTERED 
(
	[RentDetailId] ASC,
	[PropertyId] ASC,
	[PackageId] ASC,
	[ContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[propertiesDetailsPropertiesDetailId] [int] NULL,
	[propertiesDetailsLandlordId] [int] NULL,
	[propertiesDetailsPropertyTypeId] [int] NULL,
	[propertiesDetailsFeatureId] [int] NULL,
	[ServiceName] [nvarchar](max) NOT NULL,
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[UpdatedById] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTB](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[BirthDate] [date] NULL,
	[Phone] [nvarchar](20) NULL,
	[Gender] [nvarchar](10) NULL,
	[Photo] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Address] [nvarchar](150) NULL,
	[LastLoginDate] [date] NULL,
	[UserType] [nvarchar](20) NULL,
	[Company] [nvarchar](100) NULL,
	[Designation] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[CompanyId] [int] NULL,
	[DepartmentId] [int] NULL,
	[DesignationId] [int] NULL,
	[BranchId] [int] NULL,
	[EmpCode] [nvarchar](20) NULL,
	[IdProof] [nvarchar](20) NULL,
	[IdProofNumber] [nvarchar](20) NULL,
	[DeviceId] [int] NULL,
	[CardNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserTB] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitorEntryTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitorEntryTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VisitId] [int] NULL,
	[VisitorId] [nvarchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Company] [nvarchar](100) NULL,
	[Address] [nvarchar](150) NULL,
	[InTime] [nvarchar](20) NULL,
	[OutTime] [nvarchar](20) NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[EmailId] [nvarchar](50) NULL,
	[Contact] [nvarchar](20) NULL,
	[Purpose] [nvarchar](200) NULL,
	[Remark] [nvarchar](200) NULL,
	[Priority] [nvarchar](10) NULL,
	[UserId] [int] NULL,
	[EmployeeId] [int] NULL,
	[IdProof] [nvarchar](20) NULL,
	[IdProofNumber] [nvarchar](20) NULL,
	[Photo] [nvarchar](100) NULL,
	[Material] [nvarchar](100) NULL,
	[VehicleNo] [nvarchar](50) NULL,
	[VehicleType] [nvarchar](50) NULL,
	[VehiclePUCNo] [nvarchar](50) NULL,
	[PUCEndDate] [date] NULL,
	[VisitorType] [nvarchar](50) NULL,
	[DeviceName] [nvarchar](50) NULL,
	[DeviceId] [int] NULL,
	[CardNo] [nvarchar](50) NULL,
	[CertificateImagePath] [nvarchar](500) NULL,
 CONSTRAINT [PK_VisitorEntryTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitorStatusTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitorStatusTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VisitId] [int] NULL,
	[UserId] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_VisitorStatusTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitorTB]    Script Date: 04-08-2022 09:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitorTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VisitorId] [nvarchar](10) NULL,
	[Name] [nvarchar](100) NULL,
	[EmailId] [nvarchar](50) NULL,
	[Contact] [nvarchar](10) NULL,
	[Photo] [nvarchar](100) NULL,
	[Company] [nvarchar](100) NULL,
 CONSTRAINT [PK_VisitorTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookViewing_PackageId_PropertyId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_BookViewing_PackageId_PropertyId] ON [dbo].[BookViewing]
(
	[PackageId] ASC,
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookViewing_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_BookViewing_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId] ON [dbo].[BookViewing]
(
	[PropertiesDetailId] ASC,
	[PropertiesLandlordId] ASC,
	[PropertiesPropertyTypeId] ASC,
	[PropertiesFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookViewing_PropertiesTypeId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_BookViewing_PropertiesTypeId] ON [dbo].[BookViewing]
(
	[PropertiesTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookViewing_RentDetailsRentDetailId_RentDetailsPropertyId_RentDetailsPackageId_RentDetailsContractId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_BookViewing_RentDetailsRentDetailId_RentDetailsPropertyId_RentDetailsPackageId_RentDetailsContractId] ON [dbo].[BookViewing]
(
	[RentDetailsRentDetailId] ASC,
	[RentDetailsPropertyId] ASC,
	[RentDetailsPackageId] ASC,
	[RentDetailsContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContractDetails_PackageId_PropertyId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_ContractDetails_PackageId_PropertyId] ON [dbo].[ContractDetails]
(
	[PackageId] ASC,
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContractDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDe~]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_ContractDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDe~] ON [dbo].[ContractDetails]
(
	[PropertiesDetailsPropertiesDetailId] ASC,
	[PropertiesDetailsLandlordId] ASC,
	[PropertiesDetailsPropertyTypeId] ASC,
	[PropertiesDetailsFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Favorite_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_propertiesDetailsFe~]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_Favorite_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_propertiesDetailsFe~] ON [dbo].[Favorite]
(
	[propertiesDetailsPropertiesDetailId] ASC,
	[propertiesDetailsLandlordId] ASC,
	[propertiesDetailsPropertyTypeId] ASC,
	[propertiesDetailsFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inquiry_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDetailsFea~]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_Inquiry_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDetailsFea~] ON [dbo].[Inquiry]
(
	[PropertiesDetailsPropertiesDetailId] ASC,
	[PropertiesDetailsLandlordId] ASC,
	[PropertiesDetailsPropertyTypeId] ASC,
	[PropertiesDetailsFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Packages_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_Packages_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId] ON [dbo].[Packages]
(
	[PropertiesDetailId] ASC,
	[PropertiesLandlordId] ASC,
	[PropertiesPropertyTypeId] ASC,
	[PropertiesFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertiesDetails_FetureId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_PropertiesDetails_FetureId] ON [dbo].[PropertiesDetails]
(
	[FetureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertiesDetails_PropertiesTypeId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_PropertiesDetails_PropertiesTypeId] ON [dbo].[PropertiesDetails]
(
	[PropertiesTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyLocation_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesD~]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_PropertyLocation_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesD~] ON [dbo].[PropertyLocation]
(
	[PropertiesDetailsPropertiesDetailId] ASC,
	[PropertiesDetailsLandlordId] ASC,
	[PropertiesDetailsPropertyTypeId] ASC,
	[PropertiesDetailsFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RentDetails_ContractDetailsContractDetailId_ContractDetailsPropertyId_ContractDetailsPackageId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_RentDetails_ContractDetailsContractDetailId_ContractDetailsPropertyId_ContractDetailsPackageId] ON [dbo].[RentDetails]
(
	[ContractDetailsContractDetailId] ASC,
	[ContractDetailsPropertyId] ASC,
	[ContractDetailsPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RentDetails_PackageId_PropertyId]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_RentDetails_PackageId_PropertyId] ON [dbo].[RentDetails]
(
	[PackageId] ASC,
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RentDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDetail~]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_RentDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDetail~] ON [dbo].[RentDetails]
(
	[PropertiesDetailsPropertiesDetailId] ASC,
	[PropertiesDetailsLandlordId] ASC,
	[PropertiesDetailsPropertyTypeId] ASC,
	[PropertiesDetailsFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Services_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_propertiesDetailsFe~]    Script Date: 04-08-2022 09:26:56 ******/
CREATE NONCLUSTERED INDEX [IX_Services_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_propertiesDetailsFe~] ON [dbo].[Services]
(
	[propertiesDetailsPropertiesDetailId] ASC,
	[propertiesDetailsLandlordId] ASC,
	[propertiesDetailsPropertyTypeId] ASC,
	[propertiesDetailsFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookViewing]  WITH CHECK ADD  CONSTRAINT [FK_BookViewing_Packages_PackageId_PropertyId] FOREIGN KEY([PackageId], [PropertyId])
REFERENCES [dbo].[Packages] ([PackageId], [PropertyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookViewing] CHECK CONSTRAINT [FK_BookViewing_Packages_PackageId_PropertyId]
GO
ALTER TABLE [dbo].[BookViewing]  WITH CHECK ADD  CONSTRAINT [FK_BookViewing_PropertiesDetails_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId] FOREIGN KEY([PropertiesDetailId], [PropertiesLandlordId], [PropertiesPropertyTypeId], [PropertiesFeatureId])
REFERENCES [dbo].[PropertiesDetails] ([PropertiesDetailId], [LandlordId], [PropertyTypeId], [FeatureId])
GO
ALTER TABLE [dbo].[BookViewing] CHECK CONSTRAINT [FK_BookViewing_PropertiesDetails_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId]
GO
ALTER TABLE [dbo].[BookViewing]  WITH CHECK ADD  CONSTRAINT [FK_BookViewing_PropertiesType_PropertiesTypeId] FOREIGN KEY([PropertiesTypeId])
REFERENCES [dbo].[PropertiesType] ([PropertiesTypeId])
GO
ALTER TABLE [dbo].[BookViewing] CHECK CONSTRAINT [FK_BookViewing_PropertiesType_PropertiesTypeId]
GO
ALTER TABLE [dbo].[BookViewing]  WITH CHECK ADD  CONSTRAINT [FK_BookViewing_RentDetails_RentDetailsRentDetailId_RentDetailsPropertyId_RentDetailsPackageId_RentDetailsContractId] FOREIGN KEY([RentDetailsRentDetailId], [RentDetailsPropertyId], [RentDetailsPackageId], [RentDetailsContractId])
REFERENCES [dbo].[RentDetails] ([RentDetailId], [PropertyId], [PackageId], [ContractId])
GO
ALTER TABLE [dbo].[BookViewing] CHECK CONSTRAINT [FK_BookViewing_RentDetails_RentDetailsRentDetailId_RentDetailsPropertyId_RentDetailsPackageId_RentDetailsContractId]
GO
ALTER TABLE [dbo].[ContractDetails]  WITH CHECK ADD  CONSTRAINT [FK_ContractDetails_Packages_PackageId_PropertyId] FOREIGN KEY([PackageId], [PropertyId])
REFERENCES [dbo].[Packages] ([PackageId], [PropertyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContractDetails] CHECK CONSTRAINT [FK_ContractDetails_Packages_PackageId_PropertyId]
GO
ALTER TABLE [dbo].[ContractDetails]  WITH CHECK ADD  CONSTRAINT [FK_ContractDetails_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyT~] FOREIGN KEY([PropertiesDetailsPropertiesDetailId], [PropertiesDetailsLandlordId], [PropertiesDetailsPropertyTypeId], [PropertiesDetailsFeatureId])
REFERENCES [dbo].[PropertiesDetails] ([PropertiesDetailId], [LandlordId], [PropertyTypeId], [FeatureId])
GO
ALTER TABLE [dbo].[ContractDetails] CHECK CONSTRAINT [FK_ContractDetails_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyT~]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_PropertiesDetails_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_p~] FOREIGN KEY([propertiesDetailsPropertiesDetailId], [propertiesDetailsLandlordId], [propertiesDetailsPropertyTypeId], [propertiesDetailsFeatureId])
REFERENCES [dbo].[PropertiesDetails] ([PropertiesDetailId], [LandlordId], [PropertyTypeId], [FeatureId])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_PropertiesDetails_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_p~]
GO
ALTER TABLE [dbo].[Inquiry]  WITH CHECK ADD  CONSTRAINT [FK_Inquiry_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_Pr~] FOREIGN KEY([PropertiesDetailsPropertiesDetailId], [PropertiesDetailsLandlordId], [PropertiesDetailsPropertyTypeId], [PropertiesDetailsFeatureId])
REFERENCES [dbo].[PropertiesDetails] ([PropertiesDetailId], [LandlordId], [PropertyTypeId], [FeatureId])
GO
ALTER TABLE [dbo].[Inquiry] CHECK CONSTRAINT [FK_Inquiry_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_Pr~]
GO
ALTER TABLE [dbo].[Packages]  WITH CHECK ADD  CONSTRAINT [FK_Packages_PropertiesDetails_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId] FOREIGN KEY([PropertiesDetailId], [PropertiesLandlordId], [PropertiesPropertyTypeId], [PropertiesFeatureId])
REFERENCES [dbo].[PropertiesDetails] ([PropertiesDetailId], [LandlordId], [PropertyTypeId], [FeatureId])
GO
ALTER TABLE [dbo].[Packages] CHECK CONSTRAINT [FK_Packages_PropertiesDetails_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId]
GO
ALTER TABLE [dbo].[PropertiesDetails]  WITH CHECK ADD  CONSTRAINT [FK_PropertiesDetails_Feture_FetureId] FOREIGN KEY([FetureId])
REFERENCES [dbo].[Feture] ([FetureId])
GO
ALTER TABLE [dbo].[PropertiesDetails] CHECK CONSTRAINT [FK_PropertiesDetails_Feture_FetureId]
GO
ALTER TABLE [dbo].[PropertiesDetails]  WITH CHECK ADD  CONSTRAINT [FK_PropertiesDetails_PropertiesType_PropertiesTypeId] FOREIGN KEY([PropertiesTypeId])
REFERENCES [dbo].[PropertiesType] ([PropertiesTypeId])
GO
ALTER TABLE [dbo].[PropertiesDetails] CHECK CONSTRAINT [FK_PropertiesDetails_PropertiesType_PropertiesTypeId]
GO
ALTER TABLE [dbo].[PropertyLocation]  WITH CHECK ADD  CONSTRAINT [FK_PropertyLocation_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsProperty~] FOREIGN KEY([PropertiesDetailsPropertiesDetailId], [PropertiesDetailsLandlordId], [PropertiesDetailsPropertyTypeId], [PropertiesDetailsFeatureId])
REFERENCES [dbo].[PropertiesDetails] ([PropertiesDetailId], [LandlordId], [PropertyTypeId], [FeatureId])
GO
ALTER TABLE [dbo].[PropertyLocation] CHECK CONSTRAINT [FK_PropertyLocation_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsProperty~]
GO
ALTER TABLE [dbo].[RentDetails]  WITH CHECK ADD  CONSTRAINT [FK_RentDetails_ContractDetails_ContractDetailsContractDetailId_ContractDetailsPropertyId_ContractDetailsPackageId] FOREIGN KEY([ContractDetailsContractDetailId], [ContractDetailsPropertyId], [ContractDetailsPackageId])
REFERENCES [dbo].[ContractDetails] ([ContractDetailId], [PropertyId], [PackageId])
GO
ALTER TABLE [dbo].[RentDetails] CHECK CONSTRAINT [FK_RentDetails_ContractDetails_ContractDetailsContractDetailId_ContractDetailsPropertyId_ContractDetailsPackageId]
GO
ALTER TABLE [dbo].[RentDetails]  WITH CHECK ADD  CONSTRAINT [FK_RentDetails_Packages_PackageId_PropertyId] FOREIGN KEY([PackageId], [PropertyId])
REFERENCES [dbo].[Packages] ([PackageId], [PropertyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RentDetails] CHECK CONSTRAINT [FK_RentDetails_Packages_PackageId_PropertyId]
GO
ALTER TABLE [dbo].[RentDetails]  WITH CHECK ADD  CONSTRAINT [FK_RentDetails_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeI~] FOREIGN KEY([PropertiesDetailsPropertiesDetailId], [PropertiesDetailsLandlordId], [PropertiesDetailsPropertyTypeId], [PropertiesDetailsFeatureId])
REFERENCES [dbo].[PropertiesDetails] ([PropertiesDetailId], [LandlordId], [PropertyTypeId], [FeatureId])
GO
ALTER TABLE [dbo].[RentDetails] CHECK CONSTRAINT [FK_RentDetails_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeI~]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_PropertiesDetails_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_p~] FOREIGN KEY([propertiesDetailsPropertiesDetailId], [propertiesDetailsLandlordId], [propertiesDetailsPropertyTypeId], [propertiesDetailsFeatureId])
REFERENCES [dbo].[PropertiesDetails] ([PropertiesDetailId], [LandlordId], [PropertyTypeId], [FeatureId])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_PropertiesDetails_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_p~]
GO
USE [master]
GO
ALTER DATABASE [VMSDB] SET  READ_WRITE 
GO
