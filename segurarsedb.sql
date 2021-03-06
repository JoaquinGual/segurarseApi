USE [master]
GO
/****** Object:  Database [Segurarse]    Script Date: 29/4/2022 01:50:55 ******/
CREATE DATABASE [Segurarse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Segurarse', FILENAME = N'D:\SQLServer2019\Microsoft SQL Server\MSSQL15.JOAQUIN\MSSQL\DATA\Segurarse.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Segurarse_log', FILENAME = N'D:\SQLServer2019\Microsoft SQL Server\MSSQL15.JOAQUIN\MSSQL\DATA\Segurarse_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Segurarse] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Segurarse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Segurarse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Segurarse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Segurarse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Segurarse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Segurarse] SET ARITHABORT OFF 
GO
ALTER DATABASE [Segurarse] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Segurarse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Segurarse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Segurarse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Segurarse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Segurarse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Segurarse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Segurarse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Segurarse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Segurarse] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Segurarse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Segurarse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Segurarse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Segurarse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Segurarse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Segurarse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Segurarse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Segurarse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Segurarse] SET  MULTI_USER 
GO
ALTER DATABASE [Segurarse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Segurarse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Segurarse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Segurarse] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Segurarse] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Segurarse] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Segurarse] SET QUERY_STORE = OFF
GO
USE [Segurarse]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 29/4/2022 01:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [int] IDENTITY(0,1) NOT NULL,
	[nombre] [varchar](80) NOT NULL,
	[apellido] [varchar](80) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [pk_usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (43, N'joaquin', N'gual', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (44, N'pedro', N'capo', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (45, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (46, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (47, N'mmm', N'mmm', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (48, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (49, N'asdasd', N'asdasd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (50, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (51, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (52, N'Nicolas', N'Rodriguez', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (53, N'Nicolas', N'Pedrosa', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (54, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (55, N'asdas', N'asdas', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (56, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (57, N'asdasd', N'asdasda', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (58, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (59, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (60, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (61, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (62, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (63, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (64, N'fads', N'sdf', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (65, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (66, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (67, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (68, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (69, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (70, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (71, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (72, N'Nicolas', N'ass', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (73, N'joita', N'joita', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (74, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (75, N'ddd', N'ddd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (76, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (77, N'asasd', N'assd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (78, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (79, N'aaa', N'aaa', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (80, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (81, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (82, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (83, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (84, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (85, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (86, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (87, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (88, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (89, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (90, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (91, N'ddd', N'ddd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (92, N'asdasdas', N'dasdasdasd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (93, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (94, N'asdadas', N'asdasd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (95, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (96, N'asdasd', N'asdasdas', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (97, N'asd', N'asdas', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (98, N'asdasd', N'asdasd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (99, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (100, N'asdasdasdasd', N'asdasdasdasdas', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (101, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (102, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (103, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (104, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (105, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (106, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (107, N'sss', N'asss', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (108, N'asdsd', N'asdasd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (109, N'sadas', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (110, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (111, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (112, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (113, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (114, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (115, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (116, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (117, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (118, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (119, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (120, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (121, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (122, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (123, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (124, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (125, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (126, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (127, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (128, N'asdasdasdasd', N'asdasdasd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (129, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (130, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (131, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (132, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (133, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (134, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (135, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (136, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (137, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (138, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (139, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (140, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (141, N'asd', N'asd', 1)
GO
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (142, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (143, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (144, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (145, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (146, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (147, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (148, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (149, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (150, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (151, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (152, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (153, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (154, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (155, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (156, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (157, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (158, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (159, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (160, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (161, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (162, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (163, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (164, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (165, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (166, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (167, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (168, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (169, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (170, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (171, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (172, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (173, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (174, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (175, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (176, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (177, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (178, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (179, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (180, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (181, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (182, N'asd', N'asd', 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido], [estado]) VALUES (183, N'asd', N'asd', 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
USE [master]
GO
ALTER DATABASE [Segurarse] SET  READ_WRITE 
GO
