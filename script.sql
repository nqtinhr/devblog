USE [master]
GO
/****** Object:  Database [DevBlog]    Script Date: 3/15/2024 3:54:45 PM ******/
CREATE DATABASE [DevBlog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DevBlog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DevBlog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DevBlog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DevBlog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DevBlog] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DevBlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DevBlog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DevBlog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DevBlog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DevBlog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DevBlog] SET ARITHABORT OFF 
GO
ALTER DATABASE [DevBlog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DevBlog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DevBlog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DevBlog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DevBlog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DevBlog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DevBlog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DevBlog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DevBlog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DevBlog] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DevBlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DevBlog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DevBlog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DevBlog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DevBlog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DevBlog] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DevBlog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DevBlog] SET RECOVERY FULL 
GO
ALTER DATABASE [DevBlog] SET  MULTI_USER 
GO
ALTER DATABASE [DevBlog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DevBlog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DevBlog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DevBlog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DevBlog] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DevBlog] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DevBlog', N'ON'
GO
ALTER DATABASE [DevBlog] SET QUERY_STORE = ON
GO
ALTER DATABASE [DevBlog] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DevBlog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/15/2024 3:54:46 PM ******/
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
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[DisplayName] [nvarchar](200) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NOT NULL,
	[ProviderKey] [nvarchar](max) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[RefreshTokenExpiryTime] [datetime2](7) NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[Dob] [datetime2](7) NULL,
	[Avatar] [nvarchar](500) NULL,
	[VipStartDate] [datetime2](7) NULL,
	[VipExpireDate] [datetime2](7) NULL,
	[LastLoginDate] [datetime2](7) NULL,
	[Balance] [float] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[RoyaltyAmountPerPost] [float] NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostActivityLogs]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostActivityLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[PostId] [uniqueidentifier] NOT NULL,
	[FromStatus] [int] NOT NULL,
	[ToStatus] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[Note] [nvarchar](500) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_PostActivityLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategories]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PostCategories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Slug] [varchar](250) NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[SeoDescription] [nvarchar](160) NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_PostCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PostInSeries]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostInSeries](
	[PostId] [uniqueidentifier] NOT NULL,
	[SeriesId] [uniqueidentifier] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_PostInSeries] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC,
	[SeriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Slug] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[Thumbnail] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[AuthorUserId] [uniqueidentifier] NOT NULL,
	[Source] [nvarchar](128) NULL,
	[Tags] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](160) NULL,
	[ViewCount] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[IsPaid] [bit] NOT NULL,
	[RoyaltyAmount] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[AuthorName] [nvarchar](250) NOT NULL,
	[AuthorUserName] [nvarchar](250) NOT NULL,
	[CategoryName] [nvarchar](250) NOT NULL,
	[CategorySlug] [varchar](250) NOT NULL,
	[PaidDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PostTags]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTags](
	[PostId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PostTags] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Series]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Series](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Slug] [varchar](250) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[SeoDescription] [nvarchar](250) NULL,
	[Thumbnail] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL,
	[AuthorUserId] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Series] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Slug] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 3/15/2024 3:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [uniqueidentifier] NOT NULL,
	[FromUserName] [nvarchar](250) NOT NULL,
	[FromUserId] [uniqueidentifier] NOT NULL,
	[ToUserId] [uniqueidentifier] NOT NULL,
	[ToUserName] [nvarchar](250) NOT NULL,
	[Amount] [float] NOT NULL,
	[TransactionType] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[Note] [nvarchar](250) NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240226063138_Initial', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240303063834_AddPostField', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240303081111_RoyaltyTable', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240303132619_AddSlugToTag', N'8.0.2')
GO
SET IDENTITY_INSERT [dbo].[AppRoleClaims] ON 

INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Dashboard.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (2, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Roles.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (3, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Roles.Create')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (4, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Roles.Edit')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (5, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Roles.Delete')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (6, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Users.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (7, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Users.Create')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (8, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Users.Edit')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (9, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Users.Delete')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (10, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.PostCategories.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (11, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.PostCategories.Create')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (12, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.PostCategories.Edit')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (13, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.UsPostCategoriesers.Delete')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (14, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Posts.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (15, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Posts.Create')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (16, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Posts.Edit')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (17, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Posts.Delete')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (18, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Posts.Approve')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (19, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Series.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (20, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Series.Create')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (21, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Series.Edit')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (22, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Series.Delete')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (23, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Royalty.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (24, N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Permission', N'Permissions.Royalty.Pay')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (39, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.Dashboard.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (40, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.Roles.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (41, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.Roles.Create')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (42, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.Users.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (43, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.PostCategories.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (44, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.Posts.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (45, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.Posts.Approve')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (46, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.Series.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (47, N'39debf1e-af56-4884-b853-d2107d78d150', N'Permission', N'Permissions.Royalty.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (48, N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Permission', N'Permissions.Dashboard.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (49, N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Permission', N'Permissions.PostCategories.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (50, N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Permission', N'Permissions.Posts.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (51, N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Permission', N'Permissions.Posts.Create')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (52, N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Permission', N'Permissions.Posts.Edit')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (53, N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Permission', N'Permissions.Posts.Delete')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (54, N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Permission', N'Permissions.Series.View')
INSERT [dbo].[AppRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (55, N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Permission', N'Permissions.Royalty.View')
SET IDENTITY_INSERT [dbo].[AppRoleClaims] OFF
GO
INSERT [dbo].[AppRoles] ([Id], [DisplayName], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f5051044-ba7e-4576-9077-2f09779d4f17', N'Quản trị viên', N'Admin', N'ADMIN', N'cb7996e1-0133-484e-a037-a49b3b799a3c')
INSERT [dbo].[AppRoles] ([Id], [DisplayName], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5e6debde-53f1-4b66-8be1-82f6b00789b7', N'Tác giả', N'Author', N'AUTHOR', N'72df9dfa-e5fb-46a6-815c-4b16d8a2fdaa')
INSERT [dbo].[AppRoles] ([Id], [DisplayName], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'39debf1e-af56-4884-b853-d2107d78d150', N'Quản trị cấp cao', N'Mod', N'MOD', N'6d650b0e-c6a6-46be-8eed-8f521c6b5c19')
GO
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'f5051044-ba7e-4576-9077-2f09779d4f17')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'a3ab901a-1da0-4a01-cb6e-08dc44c35e9e', N'5e6debde-53f1-4b66-8be1-82f6b00789b7')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'538648e8-943d-4162-cb70-08dc44c35e9e', N'39debf1e-af56-4884-b853-d2107d78d150')
GO
INSERT [dbo].[AppUsers] ([Id], [FirstName], [LastName], [IsActive], [RefreshToken], [RefreshTokenExpiryTime], [DateCreated], [Dob], [Avatar], [VipStartDate], [VipExpireDate], [LastLoginDate], [Balance], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RoyaltyAmountPerPost]) VALUES (N'a3ab901a-1da0-4a01-cb6e-08dc44c35e9e', N'Author', N'Blogger', 1, N'ckQKemAXQeeowpVSFFHdndpiTZwl+Xh/4VYJpphtLuE=', CAST(N'2024-04-14T15:10:05.2953072' AS DateTime2), CAST(N'2024-03-15T14:41:47.6568564' AS DateTime2), CAST(N'1999-03-03T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, 0, N'author', N'AUTHOR', N'author@gmail.com', N'AUTHOR@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEErKYg2m4iUWb8K6o377+Aj7TBD1vIOSy8Rex/INcanQAEzgy2QEGVmsuGEkEtr3qg==', N'CMOODXGJBTVHVGK7M34RBBIVRHDP4VFT', N'29e352cd-cafd-4075-9492-b5551403e8e2', N'023456789', 0, 0, NULL, 0, 0, 0)
INSERT [dbo].[AppUsers] ([Id], [FirstName], [LastName], [IsActive], [RefreshToken], [RefreshTokenExpiryTime], [DateCreated], [Dob], [Avatar], [VipStartDate], [VipExpireDate], [LastLoginDate], [Balance], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RoyaltyAmountPerPost]) VALUES (N'eb96697c-791b-4f1a-cb6f-08dc44c35e9e', N'Pro', N'Dev', 1, NULL, NULL, CAST(N'2024-03-15T14:43:20.5684431' AS DateTime2), CAST(N'2000-10-10T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, 0, N'user', N'USER', N'user@gmail.com', N'USER@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMb3RJKLt/zuTK3bprEdcy0Wt9skzJ0467hQTeRFup9hVTnwfF/c0LBfmx4wM4Xr0w==', N'FVXZZWNAGA2JA34YT3HK44FBIPPMU3RP', N'b595f7f9-581b-4346-8e41-15be8ddd9771', N'0876543212', 0, 0, NULL, 0, 0, 0)
INSERT [dbo].[AppUsers] ([Id], [FirstName], [LastName], [IsActive], [RefreshToken], [RefreshTokenExpiryTime], [DateCreated], [Dob], [Avatar], [VipStartDate], [VipExpireDate], [LastLoginDate], [Balance], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RoyaltyAmountPerPost]) VALUES (N'538648e8-943d-4162-cb70-08dc44c35e9e', N'Mod', N'Dev', 1, NULL, NULL, CAST(N'2024-03-15T14:44:25.6218563' AS DateTime2), CAST(N'2000-12-03T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, 0, N'mod', N'MOD', N'mod@gmail.com', N'MOD@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELrTItXpunqtAb19i6mq6+9g2+CrlI9/jLAMtXmpyjUAjnbNndXrWPbJeXE8v+vJ8Q==', N'ONIJOXJRLLIW6CHMNN6ON2V7TFEQKV5B', N'48f930f3-7fd8-4b55-aeb3-7a5b3a327eca', N'0987654345', 0, 0, NULL, 0, 0, 0)
INSERT [dbo].[AppUsers] ([Id], [FirstName], [LastName], [IsActive], [RefreshToken], [RefreshTokenExpiryTime], [DateCreated], [Dob], [Avatar], [VipStartDate], [VipExpireDate], [LastLoginDate], [Balance], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RoyaltyAmountPerPost]) VALUES (N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'Nguyen', N'Tinh', 1, N'5Mud/U2F0tuPiZmzsnqEk2o7JOcYGB1Su4McznSyu68=', CAST(N'2024-04-14T15:40:50.7180909' AS DateTime2), CAST(N'2024-03-15T14:34:25.8247850' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJ6vF8kyOFTTR/jPfbfTXKhxsrDz2gZtt5zIVL2iZXgIObORnive8eAlvnWeXjdsnA==', N'db1eb513-4c8d-41ce-8bd8-2f67b97a2d31', N'8c086b1f-8aa2-4691-952b-eb5fd280c3e1', NULL, 0, 0, NULL, 0, 0, 0)
GO
INSERT [dbo].[PostActivityLogs] ([Id], [PostId], [FromStatus], [ToStatus], [DateCreated], [Note], [UserId], [UserName]) VALUES (N'851280a0-7b5f-4219-911e-1d0efeb80034', N'0c2ec73d-2e35-42a0-b059-0b4231d605e3', 0, 3, CAST(N'2024-03-15T15:41:19.3902118' AS DateTime2), N'admin duyệt bài', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'admin')
INSERT [dbo].[PostActivityLogs] ([Id], [PostId], [FromStatus], [ToStatus], [DateCreated], [Note], [UserId], [UserName]) VALUES (N'c99572ca-6e0f-4866-baa1-1f07ad299aea', N'a9689f6e-60de-4e5a-97d8-454b0f7c8895', 0, 3, CAST(N'2024-03-15T15:40:59.2709072' AS DateTime2), N'admin duyệt bài', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'admin')
INSERT [dbo].[PostActivityLogs] ([Id], [PostId], [FromStatus], [ToStatus], [DateCreated], [Note], [UserId], [UserName]) VALUES (N'ffb143b3-0975-4e1b-8ce7-26fe344b21be', N'8e06b258-1c04-4c49-ad98-ec4acd078dfe', 0, 3, CAST(N'2024-03-15T15:41:15.4285910' AS DateTime2), N'admin duyệt bài', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'admin')
INSERT [dbo].[PostActivityLogs] ([Id], [PostId], [FromStatus], [ToStatus], [DateCreated], [Note], [UserId], [UserName]) VALUES (N'30b4572a-a92d-4731-b63b-2f5286128213', N'58cd4531-6aeb-473f-a2d0-255b8de0d794', 0, 3, CAST(N'2024-03-15T15:41:17.2357869' AS DateTime2), N'admin duyệt bài', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'admin')
INSERT [dbo].[PostActivityLogs] ([Id], [PostId], [FromStatus], [ToStatus], [DateCreated], [Note], [UserId], [UserName]) VALUES (N'30a737f6-eb26-401d-803f-69cff964162f', N'a4b23d46-c70d-4c6a-ae26-e0cdd67693e7', 0, 3, CAST(N'2024-03-15T15:41:00.8320946' AS DateTime2), N'admin duyệt bài', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'admin')
INSERT [dbo].[PostActivityLogs] ([Id], [PostId], [FromStatus], [ToStatus], [DateCreated], [Note], [UserId], [UserName]) VALUES (N'f9229d65-d9dd-4b1e-b773-8494fae2c017', N'9476fa7a-eff9-413b-b3c1-5ae54a928737', 0, 3, CAST(N'2024-03-15T15:41:04.4864872' AS DateTime2), N'admin duyệt bài', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'admin')
INSERT [dbo].[PostActivityLogs] ([Id], [PostId], [FromStatus], [ToStatus], [DateCreated], [Note], [UserId], [UserName]) VALUES (N'34fdfab0-3750-4624-a942-c04615e1a6c8', N'35a1ea65-fb75-4768-a28a-2f2b06fd41ea', 0, 3, CAST(N'2024-03-15T15:40:57.0381417' AS DateTime2), N'admin duyệt bài', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'admin')
INSERT [dbo].[PostActivityLogs] ([Id], [PostId], [FromStatus], [ToStatus], [DateCreated], [Note], [UserId], [UserName]) VALUES (N'b69d4e2d-b3b9-4344-acec-c24921a3e7b0', N'2f866ffc-7376-41f3-9579-90a6e2733ae8', 0, 3, CAST(N'2024-03-15T15:41:02.6601595' AS DateTime2), N'admin duyệt bài', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', N'admin')
GO
INSERT [dbo].[PostCategories] ([Id], [Name], [Slug], [ParentId], [IsActive], [DateCreated], [DateModified], [SeoDescription], [SortOrder]) VALUES (N'b437a024-efa4-4f95-d731-08dc44c6aac7', N'Frontend', N'frontend', NULL, 1, CAST(N'2024-03-15T15:05:23.9422911' AS DateTime2), NULL, N'frontend', 1)
INSERT [dbo].[PostCategories] ([Id], [Name], [Slug], [ParentId], [IsActive], [DateCreated], [DateModified], [SeoDescription], [SortOrder]) VALUES (N'5ab6e8e0-0a8d-4bc6-d732-08dc44c6aac7', N'Backend', N'backend', NULL, 1, CAST(N'2024-03-15T15:05:38.5182742' AS DateTime2), NULL, N'backend', 2)
INSERT [dbo].[PostCategories] ([Id], [Name], [Slug], [ParentId], [IsActive], [DateCreated], [DateModified], [SeoDescription], [SortOrder]) VALUES (N'7b164523-8077-46f7-d735-08dc44c6aac7', N'Devops', N'devops', NULL, 1, CAST(N'2024-03-15T15:35:21.9240031' AS DateTime2), NULL, N'devops', 3)
GO
INSERT [dbo].[PostInSeries] ([PostId], [SeriesId], [DisplayOrder]) VALUES (N'0c2ec73d-2e35-42a0-b059-0b4231d605e3', N'b7742000-3f0a-4857-e052-08dc44c47c8d', 0)
INSERT [dbo].[PostInSeries] ([PostId], [SeriesId], [DisplayOrder]) VALUES (N'58cd4531-6aeb-473f-a2d0-255b8de0d794', N'b7742000-3f0a-4857-e052-08dc44c47c8d', 0)
INSERT [dbo].[PostInSeries] ([PostId], [SeriesId], [DisplayOrder]) VALUES (N'35a1ea65-fb75-4768-a28a-2f2b06fd41ea', N'7137fbe2-6450-4f16-e04d-08dc44c47c8d', 0)
INSERT [dbo].[PostInSeries] ([PostId], [SeriesId], [DisplayOrder]) VALUES (N'a9689f6e-60de-4e5a-97d8-454b0f7c8895', N'7137fbe2-6450-4f16-e04d-08dc44c47c8d', 0)
INSERT [dbo].[PostInSeries] ([PostId], [SeriesId], [DisplayOrder]) VALUES (N'9476fa7a-eff9-413b-b3c1-5ae54a928737', N'b7742000-3f0a-4857-e052-08dc44c47c8d', 0)
INSERT [dbo].[PostInSeries] ([PostId], [SeriesId], [DisplayOrder]) VALUES (N'2f866ffc-7376-41f3-9579-90a6e2733ae8', N'b7742000-3f0a-4857-e052-08dc44c47c8d', 0)
INSERT [dbo].[PostInSeries] ([PostId], [SeriesId], [DisplayOrder]) VALUES (N'a4b23d46-c70d-4c6a-ae26-e0cdd67693e7', N'b7742000-3f0a-4857-e052-08dc44c47c8d', 0)
GO
INSERT [dbo].[Posts] ([Id], [Name], [Slug], [Description], [CategoryId], [Thumbnail], [Content], [AuthorUserId], [Source], [Tags], [SeoDescription], [ViewCount], [DateCreated], [DateModified], [IsPaid], [RoyaltyAmount], [Status], [AuthorName], [AuthorUserName], [CategoryName], [CategorySlug], [PaidDate]) VALUES (N'0c2ec73d-2e35-42a0-b059-0b4231d605e3', N'React', N'react', N'ReactJS là một thư viện JavaScript mã nguồn mở phát triển bởi Facebook và cộng đồng các nhà phát triển trên toàn thế giới.', N'b437a024-efa4-4f95-d731-08dc44c6aac7', N'/media/images/posts/032024/reactjs-la-gi.png', N'<h2 class="ql-align-justify"><strong>ReactJS là gì?</strong></h2><p class="ql-align-justify">ReactJS được phát triển bởi Facebook và được giới thiệu lần đầu tiên vào năm 2011. Ban đầu, ReactJS được phát triển để xây dựng giao diện người dùng trên trang web Facebook, nhằm cải thiện tốc độ và hiệu suất của ứng dụng web.</p><p class="ql-align-justify">Tuy nhiên, ReactJS không được công bố cho cộng đồng phát triển cho đến năm 2013, khi Facebook công bố mã nguồn mở của nó và giới thiệu cho cộng đồng lập trình viên. Từ đó, ReactJS nhanh chóng trở thành một trong những thư viện phổ biến nhất để phát triển các ứng dụng web động.</p><p class="ql-align-justify">Sau đó, vào năm 2015, Facebook giới thiệu phiên bản React Native, một framework phát triển ứng dụng di động sử dụng ReactJS. React Native cho phép các nhà phát triển xây dựng các ứng dụng di động cho cả iOS và Android sử dụng cùng một mã nguồn, tương tự như ReactJS trên web.</p><p class="ql-align-justify">Hiện nay, ReactJS đã trở thành một trong những thư viện phát triển web phổ biến nhất, được sử dụng rộng rãi bởi các công ty lớn và nhỏ trên toàn thế giới. Facebook cũng tiếp tục đầu tư phát triển và nâng cấp ReactJS để đáp ứng nhu cầu của cộng đồng phát triển.</p><p><br></p>', N'a3ab901a-1da0-4a01-cb6e-08dc44c35e9e', NULL, N'System.String[]', N'ReactJS là một thư viện JavaScript mã nguồn mở phát triển bởi Facebook và cộng đồng các nhà phát triển trên toàn thế giới.', 0, CAST(N'2024-03-15T15:11:27.7581416' AS DateTime2), NULL, 0, 0, 3, N'Author Blogger', N'author', N'Frontend', N'frontend', NULL)
INSERT [dbo].[Posts] ([Id], [Name], [Slug], [Description], [CategoryId], [Thumbnail], [Content], [AuthorUserId], [Source], [Tags], [SeoDescription], [ViewCount], [DateCreated], [DateModified], [IsPaid], [RoyaltyAmount], [Status], [AuthorName], [AuthorUserName], [CategoryName], [CategorySlug], [PaidDate]) VALUES (N'58cd4531-6aeb-473f-a2d0-255b8de0d794', N'Vue', N'vue', N'Vue.js là một framework phổ biến trong cộng đồng lập trình và là lựa chọn hàng đầu của nhiều nhà phát triển ứng dụng web trên toàn thế giới.', N'b437a024-efa4-4f95-d731-08dc44c6aac7', NULL, N'<h2 class="ql-align-justify"><strong>Vue.js là gì?</strong></h2><p class="ql-align-justify">Vue.js là một framework (khung ứng dụng) JavaScript mã nguồn mở dùng để xây dựng các giao diện người dùng (UI) động cho các ứng dụng web. Vue.js tập trung vào việc tạo các thành phần (component) tái sử dụng và dễ sử dụng, và cung cấp các tính năng để quản lý trạng thái ứng dụng (application state) một cách hiệu quả.&nbsp;</p><p class="ql-align-justify">Vue.js có thể tích hợp vào các ứng dụng web hiện có hoặc được sử dụng để xây dựng các ứng dụng web độc lập. Vue.js cũng được đánh giá cao về hiệu suất và khả năng tương thích với các thư viện và framework khác.</p><p><br></p>', N'a3ab901a-1da0-4a01-cb6e-08dc44c35e9e', NULL, N'System.String[]', N'Vue.js là một framework phổ biến trong cộng đồng lập trình và là lựa chọn hàng đầu của nhiều nhà phát triển ứng dụng web trên toàn thế giới.', 0, CAST(N'2024-03-15T15:16:58.4924793' AS DateTime2), NULL, 0, 0, 3, N'Author Blogger', N'author', N'Frontend', N'frontend', NULL)
INSERT [dbo].[Posts] ([Id], [Name], [Slug], [Description], [CategoryId], [Thumbnail], [Content], [AuthorUserId], [Source], [Tags], [SeoDescription], [ViewCount], [DateCreated], [DateModified], [IsPaid], [RoyaltyAmount], [Status], [AuthorName], [AuthorUserName], [CategoryName], [CategorySlug], [PaidDate]) VALUES (N'35a1ea65-fb75-4768-a28a-2f2b06fd41ea', N'Kubernetes', N'kubernetes', N'Kubernetes, hoặc k8s là một nền tảng mã nguồn mở tự động hoá việc quản lý, scaling và triển khai ứng dụng dưới dạng container', N'7b164523-8077-46f7-d735-08dc44c6aac7', NULL, N'<h2><strong>Kubernetes là gì?</strong></h2><p><img src="https://kumorilabs.com/img/blog/kubernetes-logo.png"></p><p><br></p><p>Kubernetes là một mã nguồn mở được dùng để tự động triển khai hệ thống, scaling, quản lý các container. Nó thực sự là một hệ thống mạnh mẽ, được phát triển bởi Google. Google sử dụng Kubernetes để quản lý hàng tỉ docker container mà họ đang quản lý.</p><h2><strong>Ai cần Kubernetes?</strong></h2><ul><li>Các doanh nghiệp lớn, có nhu cầu thực sự phải scaling hệ thống nhanh chóng, và đã sử dụng container (Docker).</li><li>Các dự án cần chạy &gt;= 5 container CÙNG LOẠI cho 1 dịch vụ. (Ví dụ dùng &gt;=5 máy cùng để chạy code website XYZ). Còn nhỏ hơn thì tốt nhất không dùng - đừng mang dao mổ trâu đi giết gà.</li><li>Các startup hiện đại, chịu đầu tư vào công nghệ, để nhỡ về sau có to ra, thì to rất dễ 🙄</li><li>Các sysadmin/DevOps muốn tăng lương, nhảy việc, vọc công nghệ mới.</li></ul><h2><strong>K8s là gì?</strong></h2><p>Lúc mới đầu mình cũng thắc mắc không biết K8s là gì? Tuy nhiên nó đơn giản chỉ là viết tắt của Kubernetes (K-8 chữ cái-s). Trang chủ của Kubernetes là&nbsp;<a href="https://k8s.io/" rel="noopener noreferrer" target="_blank" style="background-color: initial; color: rgb(43, 109, 173);">https://k8s.io</a>&nbsp;hay&nbsp;<a href="https://kubernetes.io/" rel="noopener noreferrer" target="_blank" style="background-color: initial; color: rgb(43, 109, 173);">https://kubernetes.io/</a></p><p><br></p><h2><strong>Kubernetes đọc thế nào?</strong></h2><p>Các bạn biết từ trên đọc thế nào không? Tôi đã thử tra từ điển nhưng cũng đành bó tay. Sau khi nhận được comment từ mọi người thì có vẻ tôi đã hiểu được đôi chút về ý nghĩa và cách đọc của Kubernetes</p><ul><li>Ý nghĩa: "người lái tàu" trong tiếng Hy Lạp</li><li>Cách đọc: Cu-ba-ni-tê-sờ</li></ul><h2><strong>Các hệ thống cung cấp Kubernetes cài đặt sẵn:</strong></h2><ul><li>Google container engine (GKE):&nbsp;<a href="https://cloud.google.com/container-engine/" rel="noopener noreferrer" target="_blank" style="background-color: initial; color: rgb(43, 109, 173);">https://cloud.google.com/container-engine/</a>&nbsp;(free 300$ cho tài khoản mới - dùng hết thì thôi cũng được)</li><li>CoreOS techtonic:&nbsp;<a href="https://coreos.com/tectonic/" rel="noopener noreferrer" target="_blank" style="background-color: initial; color: rgb(43, 109, 173);">https://coreos.com/tectonic/</a></li><li>RedHat Openshift:&nbsp;<a href="https://www.openshift.com/" rel="noopener noreferrer" target="_blank" style="background-color: initial; color: rgb(43, 109, 173);">https://www.openshift.com/</a></li></ul><p><br></p>', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', NULL, N'System.String[]', N'Kubernetes, hoặc k8s là một nền tảng mã nguồn mở tự động hoá việc quản lý, scaling và triển khai ứng dụng dưới dạng container', 0, CAST(N'2024-03-15T15:40:15.7331544' AS DateTime2), NULL, 0, 0, 3, N'Nguyen Tinh', N'admin', N'Devops', N'devops', NULL)
INSERT [dbo].[Posts] ([Id], [Name], [Slug], [Description], [CategoryId], [Thumbnail], [Content], [AuthorUserId], [Source], [Tags], [SeoDescription], [ViewCount], [DateCreated], [DateModified], [IsPaid], [RoyaltyAmount], [Status], [AuthorName], [AuthorUserName], [CategoryName], [CategorySlug], [PaidDate]) VALUES (N'a9689f6e-60de-4e5a-97d8-454b0f7c8895', N'Docker', N'docker', N'Docker là một nền tảng để cung cấp cách để building, deploying và running ứng dụng dễ dàng hơn bằng cách sử dụng các containers (trên nền tảng ảo hóa).', N'7b164523-8077-46f7-d735-08dc44c6aac7', N'/media/images/posts/032024/docker.png', N'<h3><strong>Docker là gì ?</strong></h3><p>Docker là một nền tảng cho developers và sysadmin để develop, deploy và run application với container. Nó cho phép tạo các môi trường độc lập và tách biệt để khởi chạy và phát triển ứng dụng và môi trường này được gọi là container. Khi cần deploy lên bất kỳ server nào chỉ cần run container của Docker thì application của bạn sẽ được khởi chạy ngay lập tức.</p><p><br></p><h3><strong>Lợi ích của Docker</strong></h3><ul><li>Không như máy ảo Docker start và stop chỉ trong vài giây.</li><li>Bạn có thể khởi chạy container trên mỗi hệ thống mà bạn muốn.</li><li>Container có thể build và loại bỏ nhanh hơn máy ảo.</li><li>Dễ dàng thiết lập môi trường làm việc. Chỉ cần config 1 lần duy nhất và không bao giờ phải cài đặt lại các dependencies. Nếu bạn thay đổi máy hoặc có người mới tham gia vào project thì bạn chỉ cần lấy config đó và đưa cho họ.</li><li>Nó giữ cho word-space của bạn sạch sẽ hơn khi bạn xóa môi trường mà ảnh hưởng đến các phần khác.</li></ul><p><br></p>', N'f534cb60-ce06-4a1a-bcb6-b205bd7cb5df', NULL, N'System.String[]', N'Docker là một nền tảng để cung cấp cách để building, deploying và running ứng dụng dễ dàng hơn bằng cách sử dụng các containers (trên nền tảng ảo hóa).', 0, CAST(N'2024-03-15T15:38:12.8117479' AS DateTime2), NULL, 0, 0, 3, N'Nguyen Tinh', N'admin', N'Devops', N'devops', NULL)
INSERT [dbo].[Posts] ([Id], [Name], [Slug], [Description], [CategoryId], [Thumbnail], [Content], [AuthorUserId], [Source], [Tags], [SeoDescription], [ViewCount], [DateCreated], [DateModified], [IsPaid], [RoyaltyAmount], [Status], [AuthorName], [AuthorUserName], [CategoryName], [CategorySlug], [PaidDate]) VALUES (N'9476fa7a-eff9-413b-b3c1-5ae54a928737', N'Nodejs', N'nodejs', N'NodeJS là một môi trường runtime chạy JavaScript đa nền tảng và có mã nguồn mở, được sử dụng để chạy các ứng dụng web bên ngoài trình duyệt của client', N'5ab6e8e0-0a8d-4bc6-d732-08dc44c6aac7', N'/media/images/posts/032024/nodejs.png', N'<h2><strong>NodeJS là gì?</strong></h2><p>NodeJS&nbsp;là một môi trường runtime chạy JavaScript đa nền tảng và có mã nguồn mở, được sử dụng để chạy các ứng dụng web bên ngoài trình duyệt của client. Nền tảng này được phát triển bởi Ryan Dahl vào năm 2009, được xem là một giải pháp hoàn hảo cho các ứng dụng sử dụng nhiều dữ liệu nhờ vào mô hình hướng sự kiện (event-driven) không đồng bộ.</p><h2><strong>Ý nghĩa đằng sau tên gọi Node.JS</strong></h2><p>Ban đầu, tác giả đặt tên dự án là&nbsp;web.js&nbsp;vì mục đích đơn thuần chỉ là sử dụng như một ứng dụng web thay cho&nbsp;<a href="https://vietnix.vn/apache-la-gi/" rel="noopener noreferrer" target="_blank" style="color: rgb(52, 142, 254);">Apache</a>&nbsp;hay các server khác. Tuy nhiên, dự án nhanh chóng phát triển rất mạnh, vượt qua những khả năng của một webserver thông thường và thậm chí có thể được xem như một nền tảng đa mục đích. Vì vậy, sau này dự án đã được đổi tên thành&nbsp;Node.JS&nbsp;và sử dụng đến ngày nay.</p><p><br></p>', N'a3ab901a-1da0-4a01-cb6e-08dc44c35e9e', NULL, N'System.String[]', N'NodeJS là một môi trường runtime chạy JavaScript đa nền tảng và có mã nguồn mở, được sử dụng để chạy các ứng dụng web bên ngoài trình duyệt của client', 0, CAST(N'2024-03-15T15:27:29.7320037' AS DateTime2), NULL, 0, 0, 3, N'Author Blogger', N'author', N'Backend', N'backend', NULL)
INSERT [dbo].[Posts] ([Id], [Name], [Slug], [Description], [CategoryId], [Thumbnail], [Content], [AuthorUserId], [Source], [Tags], [SeoDescription], [ViewCount], [DateCreated], [DateModified], [IsPaid], [RoyaltyAmount], [Status], [AuthorName], [AuthorUserName], [CategoryName], [CategorySlug], [PaidDate]) VALUES (N'2f866ffc-7376-41f3-9579-90a6e2733ae8', N'Golang', N'golang', N'Golang được thiết kế bởi Robert Griesemer, Rob Pike và Ken Thompson, là một ngôn ngữ lập trình mã nguồn mở của Google.', N'5ab6e8e0-0a8d-4bc6-d732-08dc44c6aac7', NULL, N'<h2 class="ql-align-justify"><strong>Golang là gì?&nbsp;</strong></h2><p class="ql-align-justify">Golang được thiết kế bởi Robert Griesemer, Rob Pike và Ken Thompson, là một ngôn ngữ lập trình mã nguồn mở của Google.</p><p class="ql-align-center"><a href="https://bizflyportal.mediacdn.vn/bizflyportal/images/gol16208990264368.png" rel="noopener noreferrer" target="_blank" style="background-color: transparent; color: rgb(0, 0, 0);"><img src="https://bizflyportal.mediacdn.vn/thumb_wm/1000,100/bizflyportal/images/gol16208990264368.png" alt="golang là gì"></a></p><p class="ql-align-center"><em>Golang là gì?&nbsp;</em></p><p class="ql-align-justify">Golang được lựa chọn bởi các chuyên gia lập trình và trở thành ngôn ngữ được sử dụng cho các dự án quan trọng cloud - centric mang tầm cỡ thế giới.</p><h2 class="ql-align-justify"><strong>Vì sao nên sử dụng Golang&nbsp;</strong></h2><p class="ql-align-justify">Vậy lý do tại sao Golang lại được các nhà phát triển của các dự án lớn như kubernetes và docker lựa chọn? Đơn giản là bởi họ hiểu được những lợi ích mà Golang&nbsp;mang lại.</p><p class="ql-align-justify">Những ưu điểm đó là:</p><ul><li class="ql-align-justify"><strong>Sự đơn giản và nhỏ gọn</strong>: Là sản phẩm được phát triển như dự án open source nên khi học hay làm việc thì golang đều dễ sử dụng và đọc bởi các nhà phát triển khác. Khi so sánh với C++ thì Go không có bộ tính năng lớn.</li><li class="ql-align-justify"><strong>Sự tiện lợi:</strong>&nbsp;Golang có khả năng đáp ứng được nhiều ngôn ngữ lập trình phổ biến và được tích hợp vào trong ngôn ngữ chính. Tương tự như python, golang có thể quản lý bộ nhớ một cách tự động.</li><li class="ql-align-justify"><strong>Tốc độ:&nbsp;</strong>So với C thì golang có run nhị phân chậm hơn C nhưng điều đó không đáng kể với hầu hết tất cả các ứng dụng. Trong phần lớn các công việc, hiệu suất của Golang tốt ngang C và nhanh hơn so với các ngôn ngữ khác.</li><li class="ql-align-justify"><strong>Tính linh hoạt:</strong>&nbsp;Khi tạo các file executable bằng toolchain của golang, các file này có thể hoạt động một cách độc lập mà không cần đến external dependencies mặc định. Lý do lag vì toolchain hỗ trợ cho nhiều hệ điều hành khác nhau và có khả năng biên dịch các chương trình.</li><li class="ql-align-justify"><strong>Khả năng tương thích:&nbsp;</strong>Bạn không bị mất quyền truy cập vào các hệ thống undering systems bởi golang đã cung cấp đầy đủ các điều nói trên. Golang có thể liên kết với C và thực hiện các lệnh call hệ thống native.</li><li class="ql-align-justify"><strong>Tính hỗ trợ:</strong>&nbsp;Toolchain có sẵn dưới dạng binary của Windows, MacOS, Linux,..tương tự như một container trong docker. Golang hỗ trợ phát triển mạnh mẽ cho nhiều môi trường phát triển của bên thứ ba và được đặt mặc định trong nhiều phiên bản phát hành phổ biến.</li></ul><p><br></p>', N'a3ab901a-1da0-4a01-cb6e-08dc44c35e9e', NULL, N'System.String[]', N'Golang được thiết kế bởi Robert Griesemer, Rob Pike và Ken Thompson, là một ngôn ngữ lập trình mã nguồn mở của Google.', 0, CAST(N'2024-03-15T15:29:18.3587498' AS DateTime2), NULL, 0, 0, 3, N'Author Blogger', N'author', N'Backend', N'backend', NULL)
INSERT [dbo].[Posts] ([Id], [Name], [Slug], [Description], [CategoryId], [Thumbnail], [Content], [AuthorUserId], [Source], [Tags], [SeoDescription], [ViewCount], [DateCreated], [DateModified], [IsPaid], [RoyaltyAmount], [Status], [AuthorName], [AuthorUserName], [CategoryName], [CategorySlug], [PaidDate]) VALUES (N'a4b23d46-c70d-4c6a-ae26-e0cdd67693e7', N'C# .Net Core', N'c-net-core', N'.NET Core là một nền tảng phát triển đa mục đích, mã nguồn mở được duy trì bởi Microsoft và cộng đồng .NET trên GitHub.', N'5ab6e8e0-0a8d-4bc6-d732-08dc44c6aac7', N'/media/images/posts/032024/c.jpg', N'<h2>Ngôn ngữ C#</h2><p>C# (hay còn gọi là C Sharp, là ngôn ngữ lập trình hướng đối tượng, hiện đại do Microsoft phát triển như một phần của nền tảng .NET. Nó được giới thiệu lần đầu tiên vào năm 2000 và kể từ đó đã trở thành một trong những ngôn ngữ lập trình được sử dụng rộng rãi nhất trong ngành.</p><p>C# có thiết kế đơn giản, mạnh mẽ và linh hoạt. Sở hữu một cú pháp tương tự như các ngôn ngữ lập trình phổ biến, bao gồm Java và C++, giúp các nhà phát triển đã quen thuộc với các ngôn ngữ này dễ làm quen.</p><p>Một trong những tính năng chính của C# là an toàn kiểu của nó, giúp ngăn ngừa các lỗi lập trình có thể xảy ra với các ngôn ngữ khác. Không những vậy, nó còn hỗ trợ quản lý bộ nhớ tự động thông qua trình thu gom rác, giúp dễ dàng viết mã đáng tin cậy mà không làm rò rỉ bộ nhớ hay gây ra bất kỳ sự cố nào.</p><p>Nhờ những điều đó, nên C# được sử dụng rộng rãi trong việc phát triển các ứng dụng Windows dành cho máy tính để bàn, game, ứng dụng web và các ứng dụng dành cho thiết bị di động. Ngoài ra, nó còn được sử dụng trong phát triển phần mềm doanh nghiệp, với nhiều công ty lớn sử dụng C# để xây dựng các ứng dụng kinh doanh của họ.</p><p>Với tổng quan những điều trên, thì chúng ta dễ dàng nhận thấy C# là một ngôn ngữ mạnh mẽ và linh hoạt, phù hợp với nhiều nhiệm vụ lập trình. Cho dù bạn mới bắt đầu làm quen với lập trình hay là một nhà phát triển có kinh nghiệm, thì C# luôn là một ngôn ngữ tuyệt vời để học và sử dụng khi muốn xây dựng các ứng dụng mạnh mẽ, đáng tin cậy và có thể mở rộng.</p><p><img src="https://tuhoclaptrinh.edu.vn/upload/post/2023/03/29/gioi-thieu-ve-ngon-ngu-c-va-cong-nghe-net-20230329110922-636915.png" alt="Giới thiệu về ngôn ngữ C# và công nghệ .NET"></p><h2>Công nghệ .NET</h2><p>.NET là một nền tảng nguồn mở, miễn phí và được Microsoft phát triển để xây dựng, cũng như có thể chạy nhiều loại ứng dụng khác nhau, bao gồm ứng dụng web, phần mềm máy tính để bàn, ứng dụng dành cho thiết bị di động, game…</p><p>Khi làm việc cùng .NET, nhà phát triển sẽ được cung cấp một bộ công cụ, thư viện và ngôn ngữ phong phú, giúp việc xây dựng các ứng dụng cho các nền tảng khác nhau trở nên dễ dàng và nhanh chóng hơn.</p><p>Nền tảng .NET bao gồm hai thành phần chính, là:</p><ul><li><strong>.NET Framework:</strong>&nbsp;Là một nền tảng trưởng thành đã xuất hiện trong nhiều năm, chủ yếu được sử dụng để xây dựng các ứng dụng máy tính để bàn Windows và ứng dụng web phía Server.&nbsp;</li><li><strong>.NET Core:</strong>&nbsp;Là một Framework nguồn mở và đa nền tảng có thể được sử dụng để xây dựng các ứng dụng cho Windows, Linux và macOS. Nó cũng được tối ưu hóa cho các ứng dụng dựa trên đám mây.</li></ul><p>Nền tảng .NET bao gồm một số ngôn ngữ lập trình, nổi bật nhất là C#, F# và Visual Basic, trong tổng số những ngôn ngữ khác. Ngoài ra, nó cũng bao gồm nhiều công cụ phát triển như Visual Studio, Visual Studio Code và Xamarin Studio, được sử dụng rộng rãi bởi các nhà phát triển trên toàn thế giới.</p><p>Một trong những lợi ích chính mà .NET mang lại đó là về mặt hiệu suất và khả năng mở rộng của nó. Các ứng dụng .NET có thể xử lý lưu lượng truy cập cao và các hoạt động phức tạp mà không ảnh hưởng đến tốc độ hoặc độ ổn định. Thêm vào đó, .NET còn cung cấp các tính năng bảo mật nâng cao, làm cho nó trở thành một nền tảng an toàn trong việc xây dựng các ứng dụng xử lý dữ liệu nhạy cảm.</p>', N'a3ab901a-1da0-4a01-cb6e-08dc44c35e9e', NULL, N'System.String[]', N'.NET Core là một nền tảng phát triển đa mục đích, mã nguồn mở được duy trì bởi Microsoft và cộng đồng .NET trên GitHub.', 0, CAST(N'2024-03-15T15:33:33.2503884' AS DateTime2), NULL, 0, 0, 3, N'Author Blogger', N'author', N'Backend', N'backend', NULL)
INSERT [dbo].[Posts] ([Id], [Name], [Slug], [Description], [CategoryId], [Thumbnail], [Content], [AuthorUserId], [Source], [Tags], [SeoDescription], [ViewCount], [DateCreated], [DateModified], [IsPaid], [RoyaltyAmount], [Status], [AuthorName], [AuthorUserName], [CategoryName], [CategorySlug], [PaidDate]) VALUES (N'8e06b258-1c04-4c49-ad98-ec4acd078dfe', N'Angular', N'angular', N'Angularjs là open source web application framework, kiến trúc dựa trên mô hình MVC (Model-View-Controller)', N'b437a024-efa4-4f95-d731-08dc44c6aac7', N'/media/images/posts/032024/Angualrjs-la-gi-1-1024x538.png', N'<h2 class="ql-align-justify">AngularJS là gì?</h2><p class="ql-align-justify">Đầu tiên, Angularjs là open source web application framework, kiến trúc dựa trên mô hình MVC (Model-View-Controller), dựa trên nền&nbsp;<a href="https://topdev.vn/viec-lam-it/javascript-kt22" rel="noopener noreferrer" target="_blank" style="color: rgb(226, 74, 50); background-color: transparent;">Javascript</a>&nbsp;như những frontend framework khác. Lần đầu tiên được phát triển bởi hai ông thần là Misko Hevery và Adam Abrons năm 2009.</p><p class="ql-align-justify">Hiện tại vẫn đang được mantain, nâng cấp và fixbug bởi Google nha anh em.</p><p class="ql-align-justify">Về độ phổ biến thì ông này cũng nằm top phổ biến, tuy mức tăng từ năm 2014 đến 2022 không gì nổi bật, cũng không tăng trưởng đột biến như Vuejs nhưng Angularjs vẫn là một trong những framework có độ phủ sóng cao.</p><p class="ql-align-justify">Một số lượng lớn các single page (chỉ một page) được xây dựng dựa trên Angularjs.</p><p><br></p>', N'a3ab901a-1da0-4a01-cb6e-08dc44c35e9e', NULL, N'System.String[]', N'Angularjs là open source web application framework, kiến trúc dựa trên mô hình MVC (Model-View-Controller)', 0, CAST(N'2024-03-15T15:24:33.2642714' AS DateTime2), NULL, 0, 0, 3, N'Author Blogger', N'author', N'Frontend', N'frontend', NULL)
GO
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'0c2ec73d-2e35-42a0-b059-0b4231d605e3', N'c2574e00-125d-4a1a-a37d-e407c3fd25ba')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'0c2ec73d-2e35-42a0-b059-0b4231d605e3', N'a857b948-ee1f-48f4-b973-f6f3acbb9b21')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'58cd4531-6aeb-473f-a2d0-255b8de0d794', N'cd647d84-0d5f-4b39-9e3b-02312d442a5d')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'58cd4531-6aeb-473f-a2d0-255b8de0d794', N'a857b948-ee1f-48f4-b973-f6f3acbb9b21')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'35a1ea65-fb75-4768-a28a-2f2b06fd41ea', N'9848bb0b-f7a4-4a60-8429-030c71b436c5')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'35a1ea65-fb75-4768-a28a-2f2b06fd41ea', N'ade19097-b8fe-457a-b7ef-45db53c2e5be')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'35a1ea65-fb75-4768-a28a-2f2b06fd41ea', N'e3b7ab8a-2c15-4648-bc00-5afd5888a081')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'a9689f6e-60de-4e5a-97d8-454b0f7c8895', N'9848bb0b-f7a4-4a60-8429-030c71b436c5')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'a9689f6e-60de-4e5a-97d8-454b0f7c8895', N'a6dd0150-695b-44f5-ac29-5af9e6b2d969')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'9476fa7a-eff9-413b-b3c1-5ae54a928737', N'6ac43f7a-c4e6-46d3-8312-dd3f061a5eb2')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'9476fa7a-eff9-413b-b3c1-5ae54a928737', N'9d2aae47-104c-4f98-80ee-ff10638c41df')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'2f866ffc-7376-41f3-9579-90a6e2733ae8', N'07d53b57-0ed3-4688-bda8-806164b81a23')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'2f866ffc-7376-41f3-9579-90a6e2733ae8', N'6ac43f7a-c4e6-46d3-8312-dd3f061a5eb2')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'865a412b-2592-488d-b961-d4beb8c9be9e', N'c2574e00-125d-4a1a-a37d-e407c3fd25ba')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'865a412b-2592-488d-b961-d4beb8c9be9e', N'a857b948-ee1f-48f4-b973-f6f3acbb9b21')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'a4b23d46-c70d-4c6a-ae26-e0cdd67693e7', N'c4b648ae-38ee-4df6-855d-04137838e582')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'a4b23d46-c70d-4c6a-ae26-e0cdd67693e7', N'95a151b9-e1ff-47d1-8cc5-d6eeab663557')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'a4b23d46-c70d-4c6a-ae26-e0cdd67693e7', N'6ac43f7a-c4e6-46d3-8312-dd3f061a5eb2')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'8e06b258-1c04-4c49-ad98-ec4acd078dfe', N'4585ac1c-6e22-418d-8b96-5386ae6ebd03')
INSERT [dbo].[PostTags] ([PostId], [TagId]) VALUES (N'8e06b258-1c04-4c49-ad98-ec4acd078dfe', N'a857b948-ee1f-48f4-b973-f6f3acbb9b21')
GO
INSERT [dbo].[Series] ([Id], [Name], [Description], [Slug], [IsActive], [SortOrder], [SeoDescription], [Thumbnail], [Content], [AuthorUserId], [DateCreated]) VALUES (N'7137fbe2-6450-4f16-e04d-08dc44c47c8d', N'Devops', N'DevOps là một sự kết hợp của các nguyên lý, thực hành, quy trình và các tool giúp tự động hóa quá trình lập trình và chuyển giao phần mềm.', N'devops', 1, 0, N'devops', N'/media/images/posts/032024/devops.jpeg', N'<p><strong style="color: rgb(34, 34, 34);">DevOps</strong><span style="color: rgb(34, 34, 34);">&nbsp;là một sự kết hợp của các nguyên lý, thực hành, quy trình và các tool giúp tự động hóa quá trình lập trình và chuyển giao phần mềm. Với&nbsp;</span><a href="https://topdev.vn/viec-lam-it/devops-kt213" rel="noopener noreferrer" target="_blank" style="color: rgb(215, 66, 47);">DevOps</a><span style="color: rgb(34, 34, 34);">, các công ty có thể “release” các tính năng nhỏ rất nhanh và kết hợp các phản hồi mà họ nhận được một cách nhanh chóng. DevOps là kết hợp của các cụm từ tiếng Anh software development và information technology operations.</span></p>', N'00000000-0000-0000-0000-000000000000', CAST(N'2024-03-15T14:49:47.3917298' AS DateTime2))
INSERT [dbo].[Series] ([Id], [Name], [Description], [Slug], [IsActive], [SortOrder], [SeoDescription], [Thumbnail], [Content], [AuthorUserId], [DateCreated]) VALUES (N'b7742000-3f0a-4857-e052-08dc44c47c8d', N'Web Developer', N'Web Development là quá trình xây dựng các trang web và ứng dụng trực tuyến. Web Development có thể được chia thành ba hạng mục chính: Client-side (Frontend), Server-side (Backend) và Công nghệ cơ sở dữ liệu', N'web-developer', 1, 0, N'web-developer', N'/media/images/posts/032024/1.jpg', N'<p><strong>Web Development</strong>&nbsp;(hay Phát Triển Web, Lập Trình Web) là quá trình xây dựng các trang web và ứng dụng trực tuyến. Đây là một quá trình phức tạp, bao gồm một chuỗi bước đa dạng, từ việc thiết kế giao diện người dùng, phát triển phần máy chủ, tích hợp dữ liệu, cho đến việc kiểm thử và triển khai sản phẩm cuối cùng.</p><p><strong>Web Development</strong>&nbsp;có thể được chia thành ba hạng mục chính: Client-side (Frontend), Server-side (Backend) và Công nghệ cơ sở dữ liệu. Mỗi loại đều có nhiệm vụ và kỹ năng riêng, tuy nhiên, tất cả đều đóng vai trò quan trọng trong việc tạo ra một trang web hoàn chỉnh</p>', N'00000000-0000-0000-0000-000000000000', CAST(N'2024-03-15T14:56:14.0462475' AS DateTime2))
GO
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'cd647d84-0d5f-4b39-9e3b-02312d442a5d', N'vue', N'vue')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'9848bb0b-f7a4-4a60-8429-030c71b436c5', N'devops', N'devops')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'c4b648ae-38ee-4df6-855d-04137838e582', N'.net core', N'net-core')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'ade19097-b8fe-457a-b7ef-45db53c2e5be', N'Kubernetes', N'Kubernetes')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'4585ac1c-6e22-418d-8b96-5386ae6ebd03', N'angular', N'angular')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'a6dd0150-695b-44f5-ac29-5af9e6b2d969', N'docker', N'docker')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'e3b7ab8a-2c15-4648-bc00-5afd5888a081', N'k8s', N'k8s')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'07d53b57-0ed3-4688-bda8-806164b81a23', N'golang', N'golang')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'95a151b9-e1ff-47d1-8cc5-d6eeab663557', N'c#', N'c')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'6ac43f7a-c4e6-46d3-8312-dd3f061a5eb2', N'backend', N'backend')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'c2574e00-125d-4a1a-a37d-e407c3fd25ba', N'react', N'react')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'a857b948-ee1f-48f4-b973-f6f3acbb9b21', N'frontend', N'frontend')
INSERT [dbo].[Tags] ([Id], [Name], [Slug]) VALUES (N'9d2aae47-104c-4f98-80ee-ff10638c41df', N'nodejs', N'nodejs')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PostCategories_Slug]    Script Date: 3/15/2024 3:54:46 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PostCategories_Slug] ON [dbo].[PostCategories]
(
	[Slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Posts_Slug]    Script Date: 3/15/2024 3:54:46 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Posts_Slug] ON [dbo].[Posts]
(
	[Slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Series_Slug]    Script Date: 3/15/2024 3:54:46 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Series_Slug] ON [dbo].[Series]
(
	[Slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppUsers] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [RoyaltyAmountPerPost]
GO
ALTER TABLE [dbo].[PostActivityLogs] ADD  DEFAULT (N'') FOR [UserName]
GO
ALTER TABLE [dbo].[Posts] ADD  DEFAULT (N'') FOR [AuthorName]
GO
ALTER TABLE [dbo].[Posts] ADD  DEFAULT (N'') FOR [AuthorUserName]
GO
ALTER TABLE [dbo].[Posts] ADD  DEFAULT (N'') FOR [CategoryName]
GO
ALTER TABLE [dbo].[Posts] ADD  DEFAULT ('') FOR [CategorySlug]
GO
ALTER TABLE [dbo].[Tags] ADD  DEFAULT (N'') FOR [Slug]
GO
USE [master]
GO
ALTER DATABASE [DevBlog] SET  READ_WRITE 
GO
