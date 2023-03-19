USE [master]
GO
/****** Object:  Database [InventoryAppIdentity]    Script Date: 18/03/2023 11:30:50 a. m. ******/
CREATE DATABASE [InventoryAppIdentity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InventoryAppIdentity', FILENAME = N'/var/opt/mssql/data/InventoryAppIdentity.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InventoryAppIdentity_log', FILENAME = N'/var/opt/mssql/data/InventoryAppIdentity_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [InventoryAppIdentity] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InventoryAppIdentity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InventoryAppIdentity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET ARITHABORT OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InventoryAppIdentity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InventoryAppIdentity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InventoryAppIdentity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InventoryAppIdentity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET RECOVERY FULL 
GO
ALTER DATABASE [InventoryAppIdentity] SET  MULTI_USER 
GO
ALTER DATABASE [InventoryAppIdentity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InventoryAppIdentity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InventoryAppIdentity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InventoryAppIdentity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InventoryAppIdentity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [InventoryAppIdentity] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'InventoryAppIdentity', N'ON'
GO
ALTER DATABASE [InventoryAppIdentity] SET QUERY_STORE = ON
GO
ALTER DATABASE [InventoryAppIdentity] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [InventoryAppIdentity]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/03/2023 11:30:50 a. m. ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 18/03/2023 11:30:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18/03/2023 11:30:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18/03/2023 11:30:50 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18/03/2023 11:30:51 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18/03/2023 11:30:51 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18/03/2023 11:30:51 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 18/03/2023 11:30:51 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230302224315_SecurityMigration', N'7.0.2')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'07ad9f15-af57-44be-b6a7-17faeb924b14', N'Administrator', N'ADMINISTRATOR', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'02879884-d2e6-4184-880f-ac372009a3de', N'07ad9f15-af57-44be-b6a7-17faeb924b14')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0afa5c64-17e9-4462-8359-2e81e2a8f30c', N'07ad9f15-af57-44be-b6a7-17faeb924b14')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'17cc612c-3115-4b15-b763-ee0101456da2', N'07ad9f15-af57-44be-b6a7-17faeb924b14')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c369397-7a45-40ac-a047-b10442b9249a', N'07ad9f15-af57-44be-b6a7-17faeb924b14')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'572bb7ed-8d08-4a56-8bf1-dd6fd358266f', N'07ad9f15-af57-44be-b6a7-17faeb924b14')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9268f6de-f692-4c0e-a485-40dbba802af1', N'07ad9f15-af57-44be-b6a7-17faeb924b14')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae718866-eeac-40f9-8172-b0da22e03649', N'07ad9f15-af57-44be-b6a7-17faeb924b14')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'02879884-d2e6-4184-880f-ac372009a3de', N'jaime david', N'mastrodomenico lopez', N'dasd@dasd.com', N'DASD@DASD.COM', N'dasd@dasd.com', N'DASD@DASD.COM', 1, N'AQAAAAIAAYagAAAAEKsLDk5bfqUOSpoBkh5n4nA/gtNhxEkqRpSj9njWFUprbFaGj9IsRg+mL6jdISMIzg==', N'ZCZE4WBUDDC7MY5OZ3Z3Y3Y7BOO32DGW', N'97131d79-834e-4652-91e2-576b02f872cc', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0afa5c64-17e9-4462-8359-2e81e2a8f30c', N'test', N'test test', N'test@email.com', N'TEST@EMAIL.COM', N'test@email.com', N'TEST@EMAIL.COM', 1, N'AQAAAAIAAYagAAAAEIgJ+xEMRJsZaZN/4R/Ew8EHAz8OFkE7qKXtlRLml6zb49Sp6SzZSZETA1ZM4baOkw==', N'36XC4G6L5US77DE73SCZZBNESSFTZRON', N'11f33cd4-879f-4a3c-b629-69a47fc72dc4', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'17cc612c-3115-4b15-b763-ee0101456da2', N'Jaime', N'Mastrodomenico Lopez', N'jdml', N'JDML', N'admin@localhost.com', N'ADMIN@LOCALHOST.COM', 1, N'AQAAAAIAAYagAAAAEOjUzI0ommPuwVdqKZW8Fy+jnmZRE4ChqZ5u/Fw0wrRpCmQScyJLHK56bJw/Hysi+A==', N'90110015-ac9b-486f-9315-23db4cf4e51d', N'0b48aa22-9e54-4980-9339-4dd6e93fa504', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4c369397-7a45-40ac-a047-b10442b9249a', N'jaime david', N'mastrodomenico lopez', N'jdmlmastro9506@gmail.com', N'JDMLMASTRO9506@GMAIL.COM', N'jdmlmastro9506@gmail.com', N'JDMLMASTRO9506@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEDu6IUKCSGfckiXrJIjLcQ2ufL9yFQtJSxmF7Cdn40gAqKlkxnxAZ6no95qv9crEeA==', N'KGGQ6HOX4GWN6WAGGHZF55JXVQQLI2DY', N'ea4a4302-d740-4c0a-b633-858210bc9a73', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'572bb7ed-8d08-4a56-8bf1-dd6fd358266f', N'test35', N'test35', N'admin2235@localhost.com', N'ADMIN2235@LOCALHOST.COM', N'admin2235@localhost.com', N'ADMIN2235@LOCALHOST.COM', 1, N'AQAAAAIAAYagAAAAEJMDkhMlV+uwKA1Iga9ux7cHVMlhhF81nhSudXIgpk/O2G8lhNB7nFx5iUNc3D2tug==', N'UTBJMRDHFSIEVCXROBYIGRRKPZTT37AJ', N'8a009b01-96a0-4a47-93d6-0a5c2d55e288', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9268f6de-f692-4c0e-a485-40dbba802af1', N'sebastian', N'Mastrodomenico Lopez', N'sml', N'SML', N'secretary@localhost.com', N'SECRETARY@LOCALHOST.COM', 1, N'AQAAAAIAAYagAAAAEAaDXeSTk2+4/6rQjP4OIvu1ZfNCOPwBS+3Nh3mjObYdKyYrtf+Egp4HHZ+v2dFP6Q==', N'ff42bb07-8651-423e-9d79-4ea49567b803', N'5f187afa-3fea-4e8e-8d46-3eb385792168', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ae718866-eeac-40f9-8172-b0da22e03649', N'moises', N'Mastrodomenico Lopez', N'meml', N'MEML', N'driver@localhost.com', N'DRIVER@LOCALHOST.COM', 1, N'AQAAAAIAAYagAAAAEJqxkKn+J7LHYOMPRo5lWK1p1puVdGUWZbfqUZNEIThzxhHkoIrTyambsRXof/ZuqQ==', N'baea6862-a322-4e10-bbde-100a64b53d3e', N'67188fd4-6411-4958-b4f8-618e5f7c90ac', NULL, 0, 0, NULL, 0, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 18/03/2023 11:30:51 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 18/03/2023 11:30:51 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 18/03/2023 11:30:51 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 18/03/2023 11:30:51 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 18/03/2023 11:30:51 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 18/03/2023 11:30:51 a. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 18/03/2023 11:30:51 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [InventoryAppIdentity] SET  READ_WRITE 
GO


/****** Object:  Database [InventoryApp]    Script Date: 18/03/2023 11:34:12 a. m. ******/
CREATE DATABASE [InventoryApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InventoryApp', FILENAME = N'/var/opt/mssql/data/InventoryApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InventoryApp_log', FILENAME = N'/var/opt/mssql/data/InventoryApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [InventoryApp] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InventoryApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InventoryApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InventoryApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InventoryApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InventoryApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InventoryApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [InventoryApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InventoryApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InventoryApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InventoryApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InventoryApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InventoryApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InventoryApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InventoryApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InventoryApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InventoryApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InventoryApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InventoryApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InventoryApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InventoryApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InventoryApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InventoryApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InventoryApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InventoryApp] SET RECOVERY FULL 
GO
ALTER DATABASE [InventoryApp] SET  MULTI_USER 
GO
ALTER DATABASE [InventoryApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InventoryApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InventoryApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InventoryApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InventoryApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [InventoryApp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'InventoryApp', N'ON'
GO
ALTER DATABASE [InventoryApp] SET QUERY_STORE = ON
GO
ALTER DATABASE [InventoryApp] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [InventoryApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/03/2023 11:34:13 a. m. ******/
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
/****** Object:  Table [dbo].[Company]    Script Date: 18/03/2023 11:34:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Nit] [nvarchar](450) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyUsers]    Script Date: 18/03/2023 11:34:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_CompanyUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18/03/2023 11:34:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserIdentity] [nvarchar](450) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230214010509_Initial', N'7.0.2')
GO
SET IDENTITY_INSERT [dbo].[Company] ON 
GO
INSERT [dbo].[Company] ([Id], [Name], [Nit], [Address], [City], [Country], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (1, N'TESTNAME', N'TESTNIT', N'TestAddress', N'TestCity', N'TestCountry', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([Id], [Name], [Nit], [Address], [City], [Country], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (2, N'TESTNAME2', N'TESTNIT2', N'TestAddress2', N'TestCity2', N'TestCountry2', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyUsers] ON 
GO
INSERT [dbo].[CompanyUsers] ([Id], [UserId], [CompanyId], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (1, 1, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[CompanyUsers] ([Id], [UserId], [CompanyId], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (2, 2, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[CompanyUsers] ([Id], [UserId], [CompanyId], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (3, 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[CompanyUsers] ([Id], [UserId], [CompanyId], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (4, 3, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[CompanyUsers] ([Id], [UserId], [CompanyId], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (5, 4, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CompanyUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [UserIdentity], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (1, N'17cc612c-3115-4b15-b763-ee0101456da2', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserIdentity], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (2, N'105ee73f-457b-43f6-b072-76b938d17032', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserIdentity], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (3, N'9268f6de-f692-4c0e-a485-40dbba802af1', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserIdentity], [CreatedDate], [CreatedBy], [LastModifiedDate], [LastModifiedBy]) VALUES (4, N'ae718866-eeac-40f9-8172-b0da22e03649', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Company_Name]    Script Date: 18/03/2023 11:34:13 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Company_Name] ON [dbo].[Company]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Company_Nit]    Script Date: 18/03/2023 11:34:13 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Company_Nit] ON [dbo].[Company]
(
	[Nit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyUsers_CompanyId]    Script Date: 18/03/2023 11:34:13 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_CompanyUsers_CompanyId] ON [dbo].[CompanyUsers]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyUsers_UserId]    Script Date: 18/03/2023 11:34:13 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_CompanyUsers_UserId] ON [dbo].[CompanyUsers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_UserIdentity]    Script Date: 18/03/2023 11:34:13 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_UserIdentity] ON [dbo].[Users]
(
	[UserIdentity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompanyUsers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyUsers_Company_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyUsers] CHECK CONSTRAINT [FK_CompanyUsers_Company_CompanyId]
GO
ALTER TABLE [dbo].[CompanyUsers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyUsers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyUsers] CHECK CONSTRAINT [FK_CompanyUsers_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [InventoryApp] SET  READ_WRITE 
GO
