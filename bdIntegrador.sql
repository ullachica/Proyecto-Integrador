USE [master]
GO
/****** Object:  Database [BD_ProyectoIntegrador]    Script Date: 6/4/2019 12:09:33 PM ******/
CREATE DATABASE [BD_ProyectoIntegrador]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_ProyectoIntegrador', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_ProyectoIntegrador.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_ProyectoIntegrador_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_ProyectoIntegrador_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_ProyectoIntegrador].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET  MULTI_USER 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_ProyectoIntegrador', N'ON'
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET QUERY_STORE = OFF
GO
USE [BD_ProyectoIntegrador]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/4/2019 12:09:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrousel]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrousel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Image] [varchar](400) NULL,
	[Title] [varchar](400) NULL,
	[SubTitle] [varchar](400) NULL,
	[Team1] [varchar](400) NULL,
	[Team2] [varchar](400) NULL,
	[Hyperlink] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Key] [nvarchar](128) NULL,
	[Nombre] [varchar](400) NULL,
	[Pais] [varchar](400) NULL,
	[Telefono] [varchar](400) NULL,
 CONSTRAINT [PK__Client__3214EC275A7003DF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DescriptionPlayer]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescriptionPlayer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](400) NULL,
	[ID_Image] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailsOrders]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailsOrders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pedido] [int] NOT NULL,
	[ID_Producto] [int] NULL,
	[PrecioUnidad] [decimal](18, 0) NULL,
	[Cantidad] [int] NULL,
	[Descuento] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_DetailsOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](400) NULL,
	[Pais] [varchar](400) NULL,
	[Cargo] [varchar](400) NULL,
	[Telefono] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estadistica]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estadistica](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](400) NULL,
	[Progress] [varchar](400) NULL,
	[Porcentaje] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fotos]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fotos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Image] [varchar](400) NULL,
	[Title] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[Hyperlink] [varchar](400) NULL,
	[Date] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LastMatch]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LastMatch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[ID_Image] [varchar](400) NULL,
	[Date] [varchar](400) NULL,
	[Ranking] [varchar](400) NULL,
	[Player] [varchar](400) NULL,
	[Nation] [varchar](400) NULL,
	[Points] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NextMatch]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NextMatch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[Date] [varchar](400) NULL,
	[ID_Imagen] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Image] [varchar](400) NULL,
	[Hyperlink] [varchar](400) NULL,
	[Title] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
	[autor] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Products]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Products](
	[OrderID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[TotalSale] [money] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Order_Products] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Client] [int] NULL,
	[ID_Employee] [int] NULL,
	[FechaPedido] [varchar](400) NULL,
	[Destinatario] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[Price] [decimal](18, 0) NULL,
	[ID_Image] [varchar](400) NULL,
	[ID_Categoria] [int] NULL,
	[Stock] [int] NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartData]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartData](
	[TempOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCartData] PRIMARY KEY CLUSTERED 
(
	[TempOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](400) NULL,
	[DescSubscription] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tennis]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tennis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](400) NULL,
	[TitleTwo] [varchar](400) NULL,
	[Subtitle] [varchar](400) NULL,
	[ID_Image] [varchar](400) NULL,
	[Date] [varchar](400) NULL,
	[TitleThree] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Training]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Training](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](400) NULL,
	[SubTitle] [varchar](400) NULL,
	[Button_Name] [varchar](400) NULL,
	[Button_Name1] [varchar](400) NULL,
	[Button_Name2] [varchar](400) NULL,
	[IsEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201906030724244_InitialCreate', N'MVCProyectoIntegrador.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1AED044EDBCE1A3BBE60DA33C8DB802DB1DBC2489422518E8DC57ED93EE493F20B5B94A80B6FBA74CBDDED2040302D154F158B8764B154F41FFFFB7DFAE37318584F3849FD889CD9479343DBC2C48D3C9FACCEEC8C2EBFFF60FFF8C35FFF32BDF4C267EB4B2977C2E4A02549CFEC474AE353C749DD471CA27412FA6E12A5D1924EDC2874901739C78787FF748E8E1C0C10366059D6F45346A81FE2FC07FC9C45C4C531CD507013793848F9737833CF51AD5B14E234462E3EB36FBECCEE93E805BB34BA2614AF1250914C8A76B6751EF8086C9AE360695B889088220A169F7E4EF19C261159CD6378808287971883DC120529E63D39ADC5FB76EAF09875CAA91B96506E96D2281C087874C2BDE4C8CDD7F2B55D7911FC7809FEA62FACD7B92FCFEC6B0FE78F3E4501384056783A0B12260CEEAE549CA7F12DA693B2E1A480BC4A00EEB728F93669221E58BDDB1D54AC3A9E1CB2FF0EAC5916D02CC16704673441C181759F2D02DFFD377E7988BE61727672B4589E7C78F71E7927EFFF814FDE357B0A7D0539E1013C02C6C43801DBF0B2EABF6D39623B476E58356BB429BC025C8209625B37E8F923262BFA0853E7F8836D5DF9CFD82B9F70727D263ECC276844930C7EDE6641801601AEDE3BAD3AD9FF5BB41EBF7B3F8AD65BF4E4AFF2A197F4C3C449605E7DC241FE367DF4E3627A09E3FD958B5D2551C87E8BFC2ADE7E9D4759E2B2CE4446910794AC3015AD9B3A35797B519A418D4FEB1275FFA9CD2C55E9AD15651D5A6726942AB63D1B4A7B5F576F6FC69DC7310C5E4E2DE69156C2B56C5B13090728A693AEE974D4974E04BAF9675E1D2F43E407232C8F3DB4408CB2F4931057BDFC2902322232D8E67B94A6B03A78FF42E9638BE9F0CF114C9F63374B80B4738AC2F8D5B5DD3F4604DF66E182CD85EDE91A6D681E7E8BAE10CCB9E492B0561BE37D8CDC6F51462F89778128FE4CDD1290FD7CF0C3FE00A39873EEBA384DAF80CCD89B4510829780B0C69C1C0F86634BD5AEC3935980FC501F9F488BEAD752B48E51F4124A9C6210D3C52A6DA67E8C563EE9676A296A36B590E834958B0D359581F5B3944B9A0DCD053AED2CA4468BFEF2111A3FFCCB61F73FFEDB6CF336AD050D37CE6185C43F63821358C6BC7B44294E483D027DD68D5D040BF9F031A5AFBE37E59ABEA0201B5BD55AB3215F04C69F0D39ECFECF86DC4C78FCE47B2C2AE971282A8501BE97BCFEBCD53DE724CBB63D1D846E6E5BF976D600D374394FD3C8F5F359A04987F16486683FC470567766A3E88D9C1D818E01D17DB6E5C113E89B2D93EA8E5CE000536C9DBB45BA7086521779AA1BA143DE00C3CA1D5563589D25118DFBBBA213988E13D608B143500A33D527549D163E71FD18059D5E925AF6DCC258DF2B1DF29B0B1C63C214767AA28F727D52841950E99106A5CB4353A7C1B876221AA256D3987785B0F5B82BB98AAD70B2237636F092C76FAF42CC768F6D819CED2EE9638031C1B70B82F2B34A5F02C807977D23A8746232109487545B21A8E8B11D105474C99B23687144ED3BFED27975DFE8291E94B7BFADB7BA6B07DC14FCB167D42C624F6843A1054E547A5E2CD84BFC4C358733B0939FCF521EEACA1461E0734CC5944D1DEF6AE350A71D4426511B604DB40E50FE6950015226D400E3CA5C5EAB753C8A18005BE6DD5A61F9DA2FC13638A062373F913604CD1F526572F63A7D543DABD8A090BCD761A181A32184BC78891DEFE114535E56754C9F58784834DCE8181F8C16077544AE0627959D19DD4B2535BBBDA40BC88684641B79490A9F0C5E2A3B33BA973847BB9DA4090A0684051BB948DCC2479A6C65A6A3DA6DAA7753A7A8A1E20FA68EA1D86A7A83E2D827AB46F1157F62CD8BCAABD9F7F3E185486181E1B8A9A61EA9B2B6D244A304ADB0F4165483A5577E92D20B44D102B13CCFCC0B1531EDDE6A58FE4B95CDED531DC4721F28A5D9BF8B16AD1FF4855D570D4B38DA15F43564B14D9E50D73041DFDC62657128408926873F8B822C24E650CBDCBAF892D76C5F3C5111A68E64BF124A297E53025E71107A0D913A3D461FAE2AA6597FC8CC1026C7971169D3F5A628D58C5226AD9A28A644D6CE86D014DCAC396C7204397CD43A115E67AEF1B29526007F3410A351F9A08035DEF547158B539A98E29BFE8852054A13527A35C0CA669D896064F3C55A78068FEA25FA6B502B4B9AE8EADBFEC89A1A9326B4E6F51AD81A9BE577FD513565284D60CDEBFED8754D8ABC9CEEF16E663CD78CB09D1587E0CDF63303C6EBAC8DE36C878D6FFD4DA0C6E38158FC6BBE02C69FEF25AF8C27C1117855644136E39501C3BC1A09DFCBC5C5A8F523BF1953F8082E2CF86D450066BC61EC7D558E28474259A4D25E1D0DA523E0941FC7BA2FE528E7B342C4B64A37C266FF92521C4E98C064FE6B300B7CCC96F652E006117F89535A147ED8C78747C7D26D9EFDB959E3A4A917688EB3A6EB35E2986DA1868B3CA1C47D44895A51B1C1ED931A5449565F130F3F9FD9FFC95B9DE6790FF6AFFCF181759D7E26FEAF19BC7848326CFD57AD101DA71ABFFD08B6A77727FA7BF5FA97AF45D303EB2E8119736A1D4ABE5C6784C51B1583AC299A6E60CDDAF72CDEEE84122E2C6851A509B1FEFD84854F47B99B505AF95D889EFF36D434EDFD838D1035770CC6C21BC585A63B04EB6019EF0F78F093E6F7078675567F9F601DD38C77097C321C4CBE49D07F192A5BEE70ABD19C8EB6B124E57EEEACC4DEA82C73D77B9352B0BDD144578BB207C06D5078BD0633DE58CDF268BBA3A6247934EC5D52FBD5EB90F7A5F4B82E0AD96DC5F1368B8C5B3E1AFDA96A8BF7A01A4E53DDB3FB0AE26D73CD94D1DDF332CC6175C27B46365EF3B5FB6AE06D93CD94E6DD73B20DAAF9DD33AEED6AFFDC31D37A6FA13BAFE0558B910C5F6674B9E0AE0ADD22710E27FC4504242822CAE262A5BE24ACAD9CB543612D62566AAE4593152B1347D1AB48B4AB1DD657BEE1B77696CBB4AB355470B6E9E6EB7FAB6E2ED3AEDB5017B98BDA626D65A2AEDEBB631D6B2B917A4BB5C4424F3A4AD7BB62D6D6CFEC6FA9747814A708B3C7F08DF8ED540A8FE29231A7CE80CA60F5732FEC9D8DBFD408FB77EAAF6A08F6771B0976855DB392B926CBA8DCBC258B4A112943738329F2604B3D4FA8BF442E85D72CC79CDF0CCFF376EC4BC7027BD7E42EA37146A1CB385C0442C28B05016DFAF3F267D1E6E95D9CFF919331BA0066FA2C377F477ECAFCC0ABECBED2E4840C102CBAE0195D3696946576572F15D26D447A0271F75541D1030EE300C0D23B32474F781DDB807E1FF10AB92F7506D004D23D10A2DBA7173E5A25284C3946DD1E7E0287BDF0F987FF03808B9163B0540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'76dc6daf-1be1-439c-ad90-cd5f024c6516', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f86e83bc-b2ed-432c-8d0d-10988cb94034', N'Developer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'b25197c3-1444-4d32-b1cd-b1d90dccb45a', N'User')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b3b8faa5-b353-41fa-9732-077ec1080b28', N'76dc6daf-1be1-439c-ad90-cd5f024c6516')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a34dc521-d0fc-44a9-9570-b386fa2b9eb5', N'wreynaga@domiruth.com', 0, N'ACGUb5O6UvQqvT1NM8Fzg3ujHgSo79fOXPGss7JBtq77MNPsseaN/pcKUfwt//N8qw==', N'448cc58e-7f98-48f3-8343-8babcf739fa4', NULL, 0, 0, NULL, 1, 0, N'wreynaga@domiruth.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b3b8faa5-b353-41fa-9732-077ec1080b28', N'leonardorlm2@gmail.com', 0, N'ANGGB+DemKcrE297hnWVwQj8duZYRZmrhP9M4WGgsM25bNCd9YUwfRiYqDEZ4amoOg==', N'ff5d43ba-391c-4192-8c19-3d73dbeec6c2', NULL, 0, 0, NULL, 1, 0, N'leonardorlm2@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'bfeb026d-9d02-490f-b829-a23e7234da95', N'iwilliamxf@gmail.com', 0, N'AD3Ur4HPJ9wHmwDqMs5xSu9f8qOfUGU9ACf2dWG0MzDMdP3JTe7pWvcXS9BR6GUQ6A==', N'fe1b4f6d-b7ca-4876-ac43-3dcd2cd57db2', NULL, 0, 0, NULL, 1, 0, N'iwilliamxf@gmail.com')
SET IDENTITY_INSERT [dbo].[Carrousel] ON 

INSERT [dbo].[Carrousel] ([ID], [ID_Image], [Title], [SubTitle], [Team1], [Team2], [Hyperlink], [IsEnabled]) VALUES (1, N'eac83a70-3185-499b-9644-204864de6b68', N'Leonardo', N'Solutions', N'Real Madrid', N'Barcelona', N'qweqwe', 1)
INSERT [dbo].[Carrousel] ([ID], [ID_Image], [Title], [SubTitle], [Team1], [Team2], [Hyperlink], [IsEnabled]) VALUES (2, N'3e442c24-fb3f-4e6c-94b4-7af9648388ee', N'qqq', N'qqq', N'qqq', N'qqq', N'qq', 0)
INSERT [dbo].[Carrousel] ([ID], [ID_Image], [Title], [SubTitle], [Team1], [Team2], [Hyperlink], [IsEnabled]) VALUES (3, N'94ab6cf5-6a61-42aa-9b75-b8abc37af147', N'RRRRRRRRR', N'RRRR', N'RR', N'RR', N'RRRR', 0)
INSERT [dbo].[Carrousel] ([ID], [ID_Image], [Title], [SubTitle], [Team1], [Team2], [Hyperlink], [IsEnabled]) VALUES (4, N'81d0e002-0f1f-4cb5-a777-e52b64cb1d0f', N'Leonardo', N'dwqdqwdqwdq', N'dwqdqwq', N'dwqdwqdwq', N'213211231312', 0)
INSERT [dbo].[Carrousel] ([ID], [ID_Image], [Title], [SubTitle], [Team1], [Team2], [Hyperlink], [IsEnabled]) VALUES (5, N'a2bd1cb7-3d3a-4f82-bf7d-454664a4bd2b', N'Nuebvofe2wfe2few', N'fewfweffe', N'fwefwf', N'fwewfewe', N'fewfewf', 0)
INSERT [dbo].[Carrousel] ([ID], [ID_Image], [Title], [SubTitle], [Team1], [Team2], [Hyperlink], [IsEnabled]) VALUES (6, N'4bf2eb6d-2e8f-4096-be16-71a77901a4a2', N'william', N'Solutions', N'dwqdqwq', N'dwqdwqdwq', N'dqwdqwdqw', 0)
INSERT [dbo].[Carrousel] ([ID], [ID_Image], [Title], [SubTitle], [Team1], [Team2], [Hyperlink], [IsEnabled]) VALUES (7, N'3884b8e9-dfc8-444f-9529-cc062b324c0f', N'dfewdewdwee', N'Solutions', N'dewdwde', N'dwddwe', N'dewdewdwedwe', 0)
SET IDENTITY_INSERT [dbo].[Carrousel] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Categoria], [Description], [IsEnabled]) VALUES (1, N'Raquetas', N'Head Radical Pro Mini Racket', NULL)
INSERT [dbo].[Category] ([ID], [Categoria], [Description], [IsEnabled]) VALUES (2, N'Bolsos', N'Wilson Super Tour Mini(Infrared) Bag', NULL)
INSERT [dbo].[Category] ([ID], [Categoria], [Description], [IsEnabled]) VALUES (3, N'Pelotas', N'Head Medium Ball', NULL)
INSERT [dbo].[Category] ([ID], [Categoria], [Description], [IsEnabled]) VALUES (4, N'Productos Varios', N'Wilson Pro Grip Max', NULL)
INSERT [dbo].[Category] ([ID], [Categoria], [Description], [IsEnabled]) VALUES (5, N'XXX', N'XXXXX', 1)
INSERT [dbo].[Category] ([ID], [Categoria], [Description], [IsEnabled]) VALUES (6, N'AAAA', N'AAAAA', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [ID_Key], [Nombre], [Pais], [Telefono]) VALUES (1, NULL, N'Socosoft', N'PE', N'123456')
INSERT [dbo].[Client] ([ID], [ID_Key], [Nombre], [Pais], [Telefono]) VALUES (2, N'a34dc521-d0fc-44a9-9570-b386fa2b9eb5', N'William Reynaga', N'Peru', N'12346')
INSERT [dbo].[Client] ([ID], [ID_Key], [Nombre], [Pais], [Telefono]) VALUES (3, N'b3b8faa5-b353-41fa-9732-077ec1080b28', N'Leonardo', N'peru', N'13459878')
SET IDENTITY_INSERT [dbo].[Client] OFF
SET IDENTITY_INSERT [dbo].[DetailsOrders] ON 

INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (1, 5, 12, CAST(31 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (2, 6, 9, CAST(51 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (3, 8, 9, CAST(51 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (4, 9, 9, CAST(51 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (5, 10, 9, CAST(51 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (6, 10, 7, CAST(32 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (7, 11, 9, CAST(51 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (8, 14, 9, CAST(51 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (9, 14, 10, CAST(11 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (10, 15, 9, CAST(51 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrders] ([ID], [ID_Pedido], [ID_Producto], [PrecioUnidad], [Cantidad], [Descuento]) VALUES (11, 15, 10, CAST(11 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DetailsOrders] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Nombre], [Pais], [Cargo], [Telefono]) VALUES (1, N'William', N'PE', N'Admin', N'12347658')
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Estadistica] ON 

INSERT [dbo].[Estadistica] ([ID], [Description], [Progress], [Porcentaje], [IsEnabled]) VALUES (1, N'Detalles generales', N'Junior', N'45', 1)
INSERT [dbo].[Estadistica] ([ID], [Description], [Progress], [Porcentaje], [IsEnabled]) VALUES (2, N'Detalles generales', N'Semi-senior', N'22', 1)
INSERT [dbo].[Estadistica] ([ID], [Description], [Progress], [Porcentaje], [IsEnabled]) VALUES (3, N'Detalles generales', N'Senior', N'33', 1)
INSERT [dbo].[Estadistica] ([ID], [Description], [Progress], [Porcentaje], [IsEnabled]) VALUES (4, N'Detalles generales', N'Experto', N'11', 1)
SET IDENTITY_INSERT [dbo].[Estadistica] OFF
SET IDENTITY_INSERT [dbo].[Fotos] ON 

INSERT [dbo].[Fotos] ([ID], [ID_Image], [Title], [Description], [Hyperlink], [Date], [IsEnabled]) VALUES (1, N'aaaaa', N'El Mundial de bádminton dejará en Huelva más de 200 millones de euros', N'Huelva, 26 abr (EFE).- Huelva acogerá en 2021 el Campeonato del Mundo de Bádminton, competición que tendrá un impacto económico en la ciudad de en torno a 206 millones de euros.', N'AAAAA', N'26/04/2019', 1)
INSERT [dbo].[Fotos] ([ID], [ID_Image], [Title], [Description], [Hyperlink], [Date], [IsEnabled]) VALUES (2, N'eeee', N'Comienza hoy Campeonato Panamericno de bádminton', N'La Habana, 25 abr (ACN) Con la presencia de cuatro raquetistas cubanos, dos mujeres e igual cantidad de hombres, comienza hoy el Campeonato Panamericano de bádminton en Aguascalientes, México.', N'EEEEE', N'25/04/2019', 0)
INSERT [dbo].[Fotos] ([ID], [ID_Image], [Title], [Description], [Hyperlink], [Date], [IsEnabled]) VALUES (3, N'iiiiiii', N'Guerrero, único cubano victorioso en Panamericano de bádminton', N'La Habana, 25 abr (ACN) El raquetista Osleni Guerrero fue este jueves el único cubano que salió victorioso en la apertura del Campeonato Panamericano de bádminton con sede en Aguascalientes, México, hasta el próximo día 28.', N'iiiiiiiiii', N'22/04/2019', 1)
INSERT [dbo].[Fotos] ([ID], [ID_Image], [Title], [Description], [Hyperlink], [Date], [IsEnabled]) VALUES (4, N'OOOOOO', N'Todo sobre el bádminton', N'A diferencia de otros deportes de raqueta, en el bádminton no se juega con pelota, sino con un proyectil llamado volante o pluma, el cual consta de una semiesfera (a modo de pelota) circundada en su base por plumas.', N'OOOOO', N'20/04/2019', 1)
SET IDENTITY_INSERT [dbo].[Fotos] OFF
SET IDENTITY_INSERT [dbo].[Noticias] ON 

INSERT [dbo].[Noticias] ([ID], [ID_Image], [Hyperlink], [Title], [IsEnabled], [autor]) VALUES (6, N'dc9cb31b-d6e6-40a9-9dd7-9ba6cd398389', N'Teodosio Segundo Aguirre Páez  fue un futbolista chileno del Club de Deportes Badminton. Fue, hasta antes de su muerte, el jugador de fútbol profesional más longevo en Chile. ', N'El jugador mas joven de badminton', 1, N'Leonardo Luyo Madrid')
INSERT [dbo].[Noticias] ([ID], [ID_Image], [Hyperlink], [Title], [IsEnabled], [autor]) VALUES (7, N'a', N'Fracturas en badmiton', N'El duelo esperado', 1, N'Brandon Solorzano')
INSERT [dbo].[Noticias] ([ID], [ID_Image], [Hyperlink], [Title], [IsEnabled], [autor]) VALUES (9, N'98c9a4cf-e1c6-4811-8099-95687f256835', N'Teodosio Segundo Aguirre Páez  fue un futbolista chileno del Club de Deportes Badminton. Fue, hasta antes de su muerte, el jugador de fútbol profesional más longevo en Chile. ', N'Recursos para badmiton', 1, N'Renato Estrada Luyo')
SET IDENTITY_INSERT [dbo].[Noticias] OFF
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (0, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (2, 10, 1, 11.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (4, 11, 1, 21.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (5, 12, 1, 31.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (6, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (6, 10, 1, 11.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (8, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (8, 11, 1, 21.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (9, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (9, 10, 1, 11.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (10, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (10, 10, 1, 11.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (11, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (11, 10, 1, 11.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (12, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (13, 10, 1, 11.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (14, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (14, 10, 1, 11.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (15, 9, 1, 51.0000, 1)
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale], [Status]) VALUES (15, 10, 1, 11.0000, 1)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (1, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (2, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (3, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (4, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (5, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (6, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (7, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (8, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (9, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (10, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (11, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (12, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (13, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (14, 1, 1, N'6/3/2019', N'Alguna Direccion')
INSERT [dbo].[Orders] ([ID], [ID_Client], [ID_Employee], [FechaPedido], [Destinatario]) VALUES (15, 2, 1, N'6/3/2019', N'Alguna Direccion')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (1, N'Raqueta Mini Babolat', N'Strike Wimbledon', CAST(91 AS Decimal(18, 0)), N'AAA', 1, 100, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (2, N'Raqueta Babolat', N'Strike Babolat', CAST(121 AS Decimal(18, 0)), N'BBB', 1, 100, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (3, N'Raqueta Babolat Mini', N'Head Prestige', CAST(191 AS Decimal(18, 0)), N'CCC', 1, 100, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (4, N'Bolsa Tourna', N'Wilson Super', CAST(71 AS Decimal(18, 0)), N'AAA', 2, 100, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (5, N'Super Wilson', N'Nike Lean Arm', CAST(81 AS Decimal(18, 0)), N'BBB', 2, 100, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (6, N'Tour Mini', N'ASICS MP', CAST(112 AS Decimal(18, 0)), N'CCC', 2, 100, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (7, N'Head Ball', N'Tecnifibre', CAST(31 AS Decimal(18, 0)), N'AAA', 3, 100, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (8, N'Ball Fibre', N'Medium Ball', CAST(41 AS Decimal(18, 0)), N'BBB', 3, 100, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (9, N'Mini Fibre', N'SneakerBalls', CAST(51 AS Decimal(18, 0)), N'CCC', 3, 91, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (10, N'Gel', N'Pjuractive 2skin 20ml', CAST(11 AS Decimal(18, 0)), N'AAA', 4, 92, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (11, N'Locion Antihumedad', N'Moisture Absorbing(1 uni.)', CAST(21 AS Decimal(18, 0)), N'BBB', 4, 98, NULL)
INSERT [dbo].[Products] ([ID], [Title], [Description], [Price], [ID_Image], [ID_Categoria], [Stock], [IsEnabled]) VALUES (12, N'Manga para el brazo', N'Manga ASICS MP3', CAST(31 AS Decimal(18, 0)), N'CCC', 4, 99, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Tennis] ON 

INSERT [dbo].[Tennis] ([ID], [Title], [TitleTwo], [Subtitle], [ID_Image], [Date], [TitleThree], [Description], [IsEnabled]) VALUES (1, N'badminton', N'Plays', N'Jugadas Asombrosas de badminton', N'AAAA', N'21/04/2019', N'Brasil badminton', N'A Confederação Brasileira possui 19 Federações filiadas. As mesmas são gestoras da promoção e desenvolvimento do Badminton na região do seu respectivo Estado.', 1)
INSERT [dbo].[Tennis] ([ID], [Title], [TitleTwo], [Subtitle], [ID_Image], [Date], [TitleThree], [Description], [IsEnabled]) VALUES (2, N'EEEE', N'EEEEE', N'EEEEE', N'EEEE', N'22/04/2019', N'Argentina badminton', N'Con un balance muy satisfactorio finalizó el Torneo Argentino de Badminton 2017. Con la participación de los mejores ochenta y cinco jugadores de badminton del país, se disputo el torneo nacional mas importante.', 1)
INSERT [dbo].[Tennis] ([ID], [Title], [TitleTwo], [Subtitle], [ID_Image], [Date], [TitleThree], [Description], [IsEnabled]) VALUES (3, N'OOOO', N'OOOO', N'OOOO', N'OOO', N'23/04/2019', N'Colombia badminton', N'Presentaron la disciplina a los invitados del duque de Beaufort en su palacio campestre, llamado Badminton House – lo que explica el nombre que rebautizó el deporte.', 1)
INSERT [dbo].[Tennis] ([ID], [Title], [TitleTwo], [Subtitle], [ID_Image], [Date], [TitleThree], [Description], [IsEnabled]) VALUES (4, N'KKKK', N'KKKK', N'KKK', N'KKKK', N'24/04/2019', N'Chile badminton', N'La Federación Mundial de Bádminton volverá a presentar su #WhiteCard en solidaridad con la celebración anual de Peace and Sport del Día Internacional del Deporte para el Desarrollo y la Paz.', 1)
INSERT [dbo].[Tennis] ([ID], [Title], [TitleTwo], [Subtitle], [ID_Image], [Date], [TitleThree], [Description], [IsEnabled]) VALUES (5, N'PPPP', N'PPP', N'PPP', N'PPP', N'25/04/2019', N'Peru badminton', N'Perú ganó dos medallas (1 oro y 1 bronce) en el Victor JOT Junior Tournament que se desarrolló en Bélgica. Los artífices de las medallas fueron Rafaela y Fernanda Munar en la categoría sub-15.', 1)
INSERT [dbo].[Tennis] ([ID], [Title], [TitleTwo], [Subtitle], [ID_Image], [Date], [TitleThree], [Description], [IsEnabled]) VALUES (6, N'MMM', N'MMM', N'MMM', N'MMM', N'26/04/2019', N'Uruguay badminton', N'La Asociación Uruguaya de Badminton con el apoyo de la Secretaría Nacional del Deporte brindaron el primer curso destinado a la formación de badmiton.', 1)
INSERT [dbo].[Tennis] ([ID], [Title], [TitleTwo], [Subtitle], [ID_Image], [Date], [TitleThree], [Description], [IsEnabled]) VALUES (8, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tennis] OFF
SET IDENTITY_INSERT [dbo].[Training] ON 

INSERT [dbo].[Training] ([ID], [Title], [SubTitle], [Button_Name], [Button_Name1], [Button_Name2], [IsEnabled]) VALUES (1, N'ENTRENAMIENTO PERSONALIZADO', N'Solo para ti', N'S/50.00', N'S/60.00', N'S/70.00', 0)
INSERT [dbo].[Training] ([ID], [Title], [SubTitle], [Button_Name], [Button_Name1], [Button_Name2], [IsEnabled]) VALUES (2, N'ENTRENAMIENTO PERSONALIZADO', N'Solo para ti', N'S/20.00', N'S/30.00', N'S/40.00', 1)
INSERT [dbo].[Training] ([ID], [Title], [SubTitle], [Button_Name], [Button_Name1], [Button_Name2], [IsEnabled]) VALUES (3, N'ENTRENAMIENTO PERSONALIZADO', N'Solo para ti', N'S/80.00', N'S/90.00', N'S/100.00', 0)
INSERT [dbo].[Training] ([ID], [Title], [SubTitle], [Button_Name], [Button_Name1], [Button_Name2], [IsEnabled]) VALUES (4, N'ENTRENAMIENTO PERSONALIZADO', N'Solo para ti', N'S/110.00', N'S/120.00', N'S/130.00', 0)
SET IDENTITY_INSERT [dbo].[Training] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/4/2019 12:09:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/4/2019 12:09:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/4/2019 12:09:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/4/2019 12:09:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/4/2019 12:09:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/4/2019 12:09:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DetailsOrders]  WITH CHECK ADD  CONSTRAINT [FK_DetailsOrders_Orders] FOREIGN KEY([ID_Pedido])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[DetailsOrders] CHECK CONSTRAINT [FK_DetailsOrders_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__ID_Clien__5812160E] FOREIGN KEY([ID_Client])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__ID_Clien__5812160E]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([ID_Employee])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([ID_Categoria])
REFERENCES [dbo].[Category] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_carrousel]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_insert_carrousel](
@ID_Image varchar(400),
@Title varchar(400),
@SubTitle varchar(400),
@Team1 varchar(400),
@Team2 varchar(400),
@Hyperlink varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO Carrousel values
           (@ID_Image
           ,@Title
           ,@SubTitle
           ,@Team1
           ,@Team2
           ,@Hyperlink
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_Category]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_insert_Category](
@Categoria varchar(400),
@Description varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO Category values
           (@Categoria
           ,@Description
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_DescriptionPlayer]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_insert_DescriptionPlayer](
@Description varchar(400),
@ID_Image varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO DescriptionPlayer values
           (@ID_Image
           ,@Description
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_Estadistica]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_insert_Estadistica](
@Description varchar(400),
@Porcentaje varchar(400),
@Progress varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO Estadistica values
           (@Description
           ,@Porcentaje
           ,@Progress
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_Fotos]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_insert_Fotos](
@ID_Image varchar(400),
@Title varchar(400),
@Description varchar(400),
@Hyperlink varchar(400),
@Date varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO Fotos values
           (@ID_Image
           ,@Title
           ,@Description
           ,@Hyperlink
           ,@Date
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_LastMatch]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_insert_LastMatch](
@Title varchar(400),
@Description varchar(400),
@ID_Image varchar(400),
@Date varchar(400),
@Ranking varchar(400),
@Player varchar(400),
@Nation varchar(400),
@Points varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO LastMatch values
           (@Title
           ,@Description
           ,@ID_Image
           ,@Date
           ,@Ranking
           ,@Player
           ,@Nation
           ,@Points
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_NextMatch]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_insert_NextMatch](
@Title varchar(400),
@Description varchar(400),
@Date varchar(400),
@ID_Imagen varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO NextMatch values
           (@Title
           ,@Description
           ,@Date
           ,@ID_Imagen
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_Noticias]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_insert_Noticias](
@ID_Image varchar(400),
@Hyperlink varchar(400),
@Title varchar(400),
@IsEnabled bit,
@autor varchar(400)
)
as
begin
insert into Noticias Values
(@ID_Image,@Hyperlink,@Title,@IsEnabled,@autor)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_Products]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_insert_Products](
@Title varchar(400),
@Description varchar(400),
@Price money,
@ID_Image varchar(400),
@ID_Categoria int,
@Stock int,
@IsEnabled bit)
as
begin
INSERT INTO Products values
           (@Title
           ,@Description
           ,@Price
           ,@ID_Image
           ,@ID_Categoria
           ,@Stock
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_Subscription]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_insert_Subscription](
@Description varchar(400),
@DescSubscription varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO Subscription values
           (@Description
           ,@DescSubscription
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_Tennis]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_insert_Tennis](
@Title varchar(400),
@TitleTwo varchar(400),
@Subtitle varchar(400),
@ID_Image varchar(400),
@Date varchar(400),
@TitleThree varchar(400),
@Description varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO Tennis values
           (@Title
           ,@TitleTwo
           ,@Subtitle
           ,@ID_Image
           ,@Date
           ,@TitleThree
           ,@Description
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insert_Training]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_insert_Training](
@Title varchar(400),
@SubTitle varchar(400),
@Button_Name varchar(400),
@Button_Name1 varchar(400),
@Button_Name2 varchar(400),
@IsEnabled bit)
as
begin
INSERT INTO Training values
           (@Title
           ,@SubTitle
           ,@Button_Name
           ,@Button_Name1
           ,@Button_Name2
           ,@IsEnabled)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Carrousel]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Carrousel]
as
begin
select * from Carrousel
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Carrousel_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Carrousel_Retrieve]

as
begin
select * from Carrousel where  IsEnabled =1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Carrousel_Retrieve_ByID]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_list_Carrousel_Retrieve_ByID]
@ID int
as
begin
select * from Carrousel where ID = @ID 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Category]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Category]
as
begin
select * from Category
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Category_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Category_Retrieve]

as
begin
select * from Category where  IsEnabled =1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Category_Retrieve_ByID]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Category_Retrieve_ByID]
@ID int
as
begin
select * from Category where ID = @ID 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_DescriptionPlayer]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_DescriptionPlayer]
as
begin
select * from DescriptionPlayer
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_DescriptionPlayer_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_DescriptionPlayer_Retrieve]
@ID int
as
begin
select * from DescriptionPlayer where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Estadistica]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Estadistica]
as
begin
select * from Estadistica
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Estadistica_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Estadistica_Retrieve]
@ID int
as
begin
select * from Estadistica where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Fotos]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Fotos]
as
begin
select * from Fotos
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Fotos_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Fotos_Retrieve]
as
begin
select * from Fotos where IsEnabled = 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Fotos_Retrieve_ByID]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_list_Fotos_Retrieve_ByID]
@ID int
as
begin
select * from Fotos where ID = @ID 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_LastMatch]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_LastMatch]
as
begin
select * from LastMatch
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_LastMatch_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_LastMatch_Retrieve]
@ID int
as
begin
select * from LastMatch where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_NextMatch]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_NextMatch]
as
begin
select * from NextMatch
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_NextMatch_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_NextMatch_Retrieve]
@ID int
as
begin
select * from NextMatch where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Noticias]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Noticias]
as
begin
select * from Noticias
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Noticias_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Noticias_Retrieve]
as
begin
select * from Noticias where IsEnabled = 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Noticias_Retrieve_ByID]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Noticias_Retrieve_ByID]
@ID int
as
begin
select * from Noticias where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Products]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Products]
as
begin
select * from Products
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Products_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Products_Retrieve]

as
begin
select * from Products where  IsEnabled =1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Products_Retrieve_ByID]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Products_Retrieve_ByID]
@ID int
as
begin
select * from Products where ID = @ID 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Subscription]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Subscription]
as
begin
select * from Subscription
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Subscription_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Subscription_Retrieve]
@ID int
as
begin
select * from Subscription where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Tennis]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Tennis]
as
begin
select * from Tennis where IsEnabled = 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Tennis_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Tennis_Retrieve]
@ID int
as
begin
select * from Tennis where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Training]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Training]
as
begin
select * from Training
where IsEnabled = 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_list_Training_Retrieve]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_list_Training_Retrieve]
@ID int
as
begin
select * from Training where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_carrousel]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_carrousel]
(
@ID int,
@Title varchar(400),
@SubTitle varchar(400),
@Team1 varchar(400),
@Team2 varchar(400),
@Hyperlink varchar(400),
@IsEnabled bit
)
as

UPDATE Carrousel
   SET 
	  
      Title =@Title, 
      SubTitle = @SubTitle,
      Team1 = @Team1,
      Team2 = @Team2,
      Hyperlink = @Hyperlink,
      IsEnabled = @IsEnabled
      where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[usp_update_Category]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_Category]
(
@ID int,
@Categoria varchar(400),
@Description varchar(400),
@IsEnabled bit
)
as

UPDATE Category
   SET 
	  
      Categoria =@Categoria, 
      Description = @Description,
      IsEnabled = @IsEnabled
      where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[usp_update_DescriptionPlayer]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_DescriptionPlayer]
(
@Description varchar(400),
@ID_Image varchar(400),
@IsEnabled bit
)
as
begin
UPDATE DescriptionPlayer
   SET ID_Image = @ID_Image,
      Description= @Description,
      IsEnabled = @IsEnabled
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_Estadistica]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_Estadistica]
(
@Description varchar(400),
@Progress varchar(400),
@IsEnabled bit
)
as
begin
UPDATE Estadistica
   SET Progress = @Progress,
      Description= @Description,
      IsEnabled = @IsEnabled
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_Fotos]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_Fotos]
(
@ID int,
@ID_Image varchar(400),
@Title varchar(400),
@Description varchar(400),
@Hyperlink varchar(400),
@Date varchar(400),
@IsEnabled bit
)
as
begin
UPDATE Fotos
   SET ID_Image = @ID_Image,
	  Title = @Title,
      Description= @Description,
      Hyperlink = @Hyperlink,
      Date = @Date,
      IsEnabled = @IsEnabled
      where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_LastMatch]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_LastMatch]
(
@Title varchar(400),
@Description varchar(400),
@ID_Image varchar(400),
@Date varchar(400),
@Ranking varchar(400),
@Player varchar(400),
@Nation varchar(400),
@Points varchar(400),
@IsEnabled bit
)
as
begin
UPDATE LastMatch
   SET ID_Image = @ID_Image,
	  Title = @Title,
      Description= @Description,
      Date = @Date,
      Ranking = @Ranking,
      Player = @Player,
      Nation = @Nation,
      Points = @Points,
      IsEnabled = @IsEnabled
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_NextMatch]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_NextMatch]
(
@Title varchar(400),
@Description varchar(400),
@Date varchar(400),
@ID_Imagen varchar(400),
@IsEnabled bit
)
as
begin
UPDATE NextMatch
   SET ID_Imagen = @ID_Imagen,
	  Title = @Title,
      Description= @Description,
      Date = @Date,
      IsEnabled = @IsEnabled
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_Noticias]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_Noticias]
(
@ID_Image varchar(400),
@Hyperlink varchar(400),
@Title varchar(400),
@IsEnabled bit,
@autor varchar(400)
)
as
begin
UPDATE Noticias
   SET ID_Image = @ID_Image,
	  Title = @Title,
      Hyperlink= @Hyperlink,
      IsEnabled = @IsEnabled,
      autor = @autor 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_Products]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_Products]
(
@ID int,
@Title varchar(400),
@Description varchar(400),
@Price money,
@ID_Image varchar(400),
@ID_Categoria int,
@Stock int,
@IsEnabled bit
)
as

UPDATE Products
   SET 
		Title=@Title,
        Description=@Description,
           Price=@Price,
           ID_Image=@ID_Image,
           ID_Categoria=@ID_Categoria,
           Stock=@Stock,
           IsEnabled=@IsEnabled
      where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[usp_update_Subscription]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_Subscription]
(
@Description varchar(400),
@DescSubscription varchar(400),
@IsEnabled bit
)
as
begin
UPDATE Subscription
   SET Description = @Description,
	  DescSubscription = @DescSubscription,
      IsEnabled = @IsEnabled
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_Tennis]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_Tennis]
(
@Title varchar(400),
@ID_Image varchar(400),
@Date varchar(400),
@Description varchar(400),
@IsEnabled bit
)
as
begin
UPDATE Tennis
   SET Description = @Description,
	  Title = @Title,
	  ID_Image = @ID_Image,
	  Date = @Date,
      IsEnabled = @IsEnabled
END
GO
/****** Object:  StoredProcedure [dbo].[usp_update_Training]    Script Date: 6/4/2019 12:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_update_Training]
(
@Title varchar(400),
@SubTitle varchar(400),
@Button_Name varchar(400),
@Button_Name1 varchar(400),
@Button_Name2 varchar(400),
@IsEnabled bit
)
as
begin
UPDATE Training
   SET Button_Name = @Button_Name,
	  Title = @Title,
	  Button_Name1 = @Button_Name1,
	  Button_Name2 = @Button_Name2,
	  SubTitle = @SubTitle,
      IsEnabled = @IsEnabled
END
GO
USE [master]
GO
ALTER DATABASE [BD_ProyectoIntegrador] SET  READ_WRITE 
GO
