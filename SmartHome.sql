USE [master]
GO
/****** Object:  Database [SmartHome]    Script Date: 6/28/2023 4:45:19 PM ******/
CREATE DATABASE [SmartHome]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartHome', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SmartHome.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SmartHome_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SmartHome_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SmartHome] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartHome].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartHome] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartHome] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartHome] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartHome] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartHome] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartHome] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SmartHome] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartHome] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartHome] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartHome] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartHome] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartHome] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartHome] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartHome] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartHome] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SmartHome] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartHome] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartHome] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartHome] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartHome] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartHome] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartHome] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartHome] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SmartHome] SET  MULTI_USER 
GO
ALTER DATABASE [SmartHome] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartHome] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartHome] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartHome] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmartHome] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SmartHome] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SmartHome] SET QUERY_STORE = OFF
GO
USE [SmartHome]
GO
/****** Object:  Table [dbo].[danh_gia]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_gia](
	[madg] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_sua] [date] NULL,
	[ngay_tao] [date] NULL,
	[noi_dung] [nvarchar](max) NULL,
	[xep_hang] [int] NOT NULL,
	[masp] [bigint] NULL,
	[tennd] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[madg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danh_muc]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_muc](
	[madm] [bigint] IDENTITY(1,1) NOT NULL,
	[tendm] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[madm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hinh_anh]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hinh_anh](
	[maha] [bigint] IDENTITY(1,1) NOT NULL,
	[hinh_anh] [varchar](255) NULL,
	[masp] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[maha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[mahd] [bigint] IDENTITY(1,1) NOT NULL,
	[ghi_chu] [nvarchar](max) NULL,
	[ngay_sua] [date] NULL,
	[ngay_tao] [date] NULL,
	[thanh_toan] [int] NOT NULL,
	[trang_thai] [int] NOT NULL,
	[tennd] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[mahdct] [bigint] IDENTITY(1,1) NOT NULL,
	[vat] [float] NOT NULL,
	[don_gia] [float] NOT NULL,
	[giam_gia] [float] NOT NULL,
	[so_luong] [int] NOT NULL,
	[mahd] [bigint] NULL,
	[masp] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[mahdct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyen_mai]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyen_mai](
	[makm] [bigint] IDENTITY(1,1) NOT NULL,
	[giam_gia] [int] NOT NULL,
	[ngay_sua] [date] NULL,
	[ngay_tao] [date] NULL,
	[masp] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[makm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nha_cung_cap]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nha_cung_cap](
	[mancc] [bigint] IDENTITY(1,1) NOT NULL,
	[logo] [varchar](255) NULL,
	[mo_ta] [nvarchar](max) NULL,
	[tenncc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phan_quyen]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phan_quyen](
	[mapq] [bigint] IDENTITY(1,1) NOT NULL,
	[tennd] [varchar](255) NULL,
	[mavt] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[mapq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[masp] [bigint] IDENTITY(1,1) NOT NULL,
	[gia] [float] NOT NULL,
	[hinh_anh] [varchar](255) NULL,
	[mo_ta] [nvarchar](max) NULL,
	[ngay_sua] [date] NULL,
	[ngay_tao] [date] NULL,
	[so_luong] [int] NOT NULL,
	[tensp] [nvarchar](max) NULL,
	[madm] [bigint] NULL,
	[mancc] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[tennd] [varchar](255) NOT NULL,
	[auth_provider] [varchar](255) NULL,
	[cmnd] [varchar](255) NULL,
	[dia_chi] [nvarchar](150) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gioi_tinh] [bit] NOT NULL,
	[hinh_anh] [varchar](255) NULL,
	[ho_ten] [nvarchar](50) NOT NULL,
	[mavt] [varchar](255) NULL,
	[mat_khau] [varchar](255) NOT NULL,
	[sdt] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[tennd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vai_tro]    Script Date: 6/28/2023 4:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vai_tro](
	[mavt] [varchar](255) NOT NULL,
	[tenvt] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mavt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[danh_gia] ON 

INSERT [dbo].[danh_gia] ([madg], [ngay_sua], [ngay_tao], [noi_dung], [xep_hang], [masp], [tennd]) VALUES (1, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), NULL, 1, 1, N'teonv')
INSERT [dbo].[danh_gia] ([madg], [ngay_sua], [ngay_tao], [noi_dung], [xep_hang], [masp], [tennd]) VALUES (2, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), NULL, 1, 1, N'teonv')
INSERT [dbo].[danh_gia] ([madg], [ngay_sua], [ngay_tao], [noi_dung], [xep_hang], [masp], [tennd]) VALUES (3, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), NULL, 1, 1, N'teonv')
INSERT [dbo].[danh_gia] ([madg], [ngay_sua], [ngay_tao], [noi_dung], [xep_hang], [masp], [tennd]) VALUES (4, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), NULL, 1, 1, N'teonv')
INSERT [dbo].[danh_gia] ([madg], [ngay_sua], [ngay_tao], [noi_dung], [xep_hang], [masp], [tennd]) VALUES (5, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), NULL, 1, 1, N'teonv')
SET IDENTITY_INSERT [dbo].[danh_gia] OFF
GO
SET IDENTITY_INSERT [dbo].[danh_muc] ON 

INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (1, N'Thiết bị gia dụng')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (2, N'Robot hút bụi')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (3, N'Quạt + Sưởi thông minh')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (4, N'Móc lọc không khí')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (5, N'Thiết bị sức khỏe')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (6, N'Nhà cửa đời sống')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (7, N'Phụ kiện điện thoại')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (8, N'Đèn thông minh')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (9, N'Thiết bị nhà thông minh')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (10, N'Phụ kiện ô tô + xe điện')
INSERT [dbo].[danh_muc] ([madm], [tendm]) VALUES (11, N'Thiết bị mạng')
SET IDENTITY_INSERT [dbo].[danh_muc] OFF
GO
SET IDENTITY_INSERT [dbo].[hinh_anh] ON 

INSERT [dbo].[hinh_anh] ([maha], [hinh_anh], [masp]) VALUES (1, NULL, 1)
INSERT [dbo].[hinh_anh] ([maha], [hinh_anh], [masp]) VALUES (2, NULL, 1)
INSERT [dbo].[hinh_anh] ([maha], [hinh_anh], [masp]) VALUES (3, NULL, 1)
INSERT [dbo].[hinh_anh] ([maha], [hinh_anh], [masp]) VALUES (4, NULL, 1)
INSERT [dbo].[hinh_anh] ([maha], [hinh_anh], [masp]) VALUES (5, NULL, 1)
SET IDENTITY_INSERT [dbo].[hinh_anh] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don] ON 

INSERT [dbo].[hoa_don] ([mahd], [ghi_chu], [ngay_sua], [ngay_tao], [thanh_toan], [trang_thai], [tennd]) VALUES (1, NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1, 1, N'teonv')
INSERT [dbo].[hoa_don] ([mahd], [ghi_chu], [ngay_sua], [ngay_tao], [thanh_toan], [trang_thai], [tennd]) VALUES (2, NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1, 1, N'teonv')
INSERT [dbo].[hoa_don] ([mahd], [ghi_chu], [ngay_sua], [ngay_tao], [thanh_toan], [trang_thai], [tennd]) VALUES (3, NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1, 4, N'teonv')
INSERT [dbo].[hoa_don] ([mahd], [ghi_chu], [ngay_sua], [ngay_tao], [thanh_toan], [trang_thai], [tennd]) VALUES (4, NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1, 1, N'teonv')
INSERT [dbo].[hoa_don] ([mahd], [ghi_chu], [ngay_sua], [ngay_tao], [thanh_toan], [trang_thai], [tennd]) VALUES (5, NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1, 1, N'teonv')
INSERT [dbo].[hoa_don] ([mahd], [ghi_chu], [ngay_sua], [ngay_tao], [thanh_toan], [trang_thai], [tennd]) VALUES (6, NULL, CAST(N'2022-12-03' AS Date), CAST(N'2022-12-03' AS Date), 0, 4, N'nott')
SET IDENTITY_INSERT [dbo].[hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] ON 

INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [vat], [don_gia], [giam_gia], [so_luong], [mahd], [masp]) VALUES (1, 10, 15000, 50, 1, 1, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [vat], [don_gia], [giam_gia], [so_luong], [mahd], [masp]) VALUES (2, 10, 15000, 50, 1, 1, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [vat], [don_gia], [giam_gia], [so_luong], [mahd], [masp]) VALUES (3, 10, 15000, 50, 1, 1, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [vat], [don_gia], [giam_gia], [so_luong], [mahd], [masp]) VALUES (4, 10, 15000, 50, 1, 1, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [vat], [don_gia], [giam_gia], [so_luong], [mahd], [masp]) VALUES (5, 10, 15000, 50, 1, 1, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [vat], [don_gia], [giam_gia], [so_luong], [mahd], [masp]) VALUES (6, 0, 50000, 0, 3, 6, 1)
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[khuyen_mai] ON 

INSERT [dbo].[khuyen_mai] ([makm], [giam_gia], [ngay_sua], [ngay_tao], [masp]) VALUES (1, 50, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[khuyen_mai] ([makm], [giam_gia], [ngay_sua], [ngay_tao], [masp]) VALUES (2, 50, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[khuyen_mai] ([makm], [giam_gia], [ngay_sua], [ngay_tao], [masp]) VALUES (3, 50, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[khuyen_mai] ([makm], [giam_gia], [ngay_sua], [ngay_tao], [masp]) VALUES (4, 50, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[khuyen_mai] ([makm], [giam_gia], [ngay_sua], [ngay_tao], [masp]) VALUES (5, 50, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 1)
SET IDENTITY_INSERT [dbo].[khuyen_mai] OFF
GO
SET IDENTITY_INSERT [dbo].[nha_cung_cap] ON 

INSERT [dbo].[nha_cung_cap] ([mancc], [logo], [mo_ta], [tenncc]) VALUES (1, N'xiaomi-logo.jpg', NULL, N'Xiaomi')
INSERT [dbo].[nha_cung_cap] ([mancc], [logo], [mo_ta], [tenncc]) VALUES (2, N'yeelight-logo.png', NULL, N'YeeLight')
INSERT [dbo].[nha_cung_cap] ([mancc], [logo], [mo_ta], [tenncc]) VALUES (3, N'Google-Logo.png', NULL, N'Google')
INSERT [dbo].[nha_cung_cap] ([mancc], [logo], [mo_ta], [tenncc]) VALUES (4, N'Amazon-logo.jpg', NULL, N'Amazon')
SET IDENTITY_INSERT [dbo].[nha_cung_cap] OFF
GO
SET IDENTITY_INSERT [dbo].[phan_quyen] ON 

INSERT [dbo].[phan_quyen] ([mapq], [tennd], [mavt]) VALUES (2, N'nott', N'KH')
INSERT [dbo].[phan_quyen] ([mapq], [tennd], [mavt]) VALUES (3, N'pheocc', N'GD')
INSERT [dbo].[phan_quyen] ([mapq], [tennd], [mavt]) VALUES (1, N'teonv', N'NV')
SET IDENTITY_INSERT [dbo].[phan_quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON 

INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (1, 50000, N'1.png', N'a
b', CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Camera hành trình ô tô 70MAI Dash Cam M300/M500', 10, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (2, 60000, N'2.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Cây lau nhà thông minh Xiaomi Deerma TB500', 6, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (3, 70000, N'3.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Camera hành trình trước + sau 70MAI A500S/A500S-1 2K', 9, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (4, 80000, N'4.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy massage mắt Xiaomi Jeeback E9', 5, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (5, 90000, N'5.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Bộ dụng cụ công cụ cầm tay Xiaomi Jiuxun 60', 6, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (10, 100000, N'6.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Đèn bàn tích điện đa năng 4 trong 1 Yeelight, 5W, PIN 1800MAH', 8, 2)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (13, 110000, N'7.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Cân điện tử thông minh Xiaomi Mi Scale 2', 5, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (14, 120000, N'8.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Nồi cơm điện thông minh Xiaomi Mijia 1.6L', 1, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (15, 130000, N'9.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Bàn phím và chuột không dây Xiaomi Miiiw', 6, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (16, 140000, N'10.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy tạo ẩm, phun sương Deerma F628S', 6, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (17, 150000, N'11.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Bộ tua vít điện kèm 24 đầu Xiaomi Mijia', 6, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (18, 160000, N'12.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Bơm lốp ô tô thông minh Xiaomi 70MAI Midrive TP03', 10, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (19, 170000, N'13.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Bàn chải điện kèm đầu massage mặt Soocas X3S Xiaomi', 6, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (20, 180000, N'14.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy xay sinh tố cầm tay Xiaomi Deerma NU9', 1, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (21, 190000, N'15.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy xay sinh tố cầm tay Xiaomi PINLO/MIJIA Gen 2', 1, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (22, 200000, N'16.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy làm sạch vật dụng cá nhân Xiaomi Lofans CS-602', 5, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (24, 210000, N'17.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Loa ngoài trời bluetooth Xiaomi Miportable Speaker', 6, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (25, 220000, N'18.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy hút bụi cầm tay Xiaomi Deerma DX115C/DX700', 1, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (26, 230000, N'19.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Ấm đun nước siêu tốc Xiaomi Mijia Gen 2 1.7L', 1, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (27, 240000, N'20.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Ấm đun nước pha trà đa năng Xiaomi Mijia MYSH0E1ACM', 1, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (28, 250000, N'21.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Loa trợ lý ảo thông minh Amazon Echo Show 5', 6, 4)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (29, 260000, N'22.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Hút bụi giường nệm cầm tay Deerma CM800/CM1900', 1, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (30, 270000, N'23.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Bộ kích sóng Wifi Xiaomi AC1200 Mi Wifi Fange Extender', 11, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (31, 280000, N'24.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Tăm nước vệ sinh răng miệng Xiaomi Mijia Water Flosser', 5, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (32, 290000, N'25.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy massage cổ thông minh Xiaomi Jeeback, G5/G6', 5, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (33, 300000, N'25.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Đế giữ tự động kiêm sạc không dây cho ô tô Xiaomi 20W WCJ02ZM', 10, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (34, 310000, N'44.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Quạt tích điện để bàn Xiaomi Solove F5', 3, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (35, 320000, N'45.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Đèn ngủ đê bàn thông minh Xiaomi Yeelight D2', 8, 2)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (36, 330000, N'53.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Robot hut bụi lau nhà Dreame Bot W10/W10 Pro', 2, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (37, 340000, N'54.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Robot hút bụi lau nhà Roborock G10 - Bản Quốc Tế', 2, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (38, 350000, N'55.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Xe đạp điện trợ lực Xiaomi Himo Z20', 10, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (39, 360000, N'56.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Google Assistant tích trợ lý ảo Google Nest Wifi Gen 2 3 Pack', 6, 3)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (40, 370000, N'66.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Quạt không cánh kiêm máy lọc không khí Xiaomi Keheal A2', 4, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (41, 380000, N'64.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Robot hút bụi lau nhà Xiaomi Vacuum Mop 2 Lite', 2, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (42, 390000, N'81.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Bộ phát wifi router Xiaomi AX6000/AX3600/AX3200', 11, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (43, 400000, N'88.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy lọc không khí cho ô tô Xiaomi SmartMi Car Air Purifier', 4, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (44, 410000, N'96.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy lọc không khí Xiaomi SmartMi Air Purifier', 4, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (45, 420000, N'97.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Sạc dự phòng 10.000MAH Xiaomi Mi 18W', 7, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (46, 430000, N'98.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Quạt tích điện thông minh SmartMi Gen 3', 3, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (47, 440000, N'99.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Quạt cầm tay mini, tích điện 3 cấp độ Xiaomi VH', 3, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (48, 450000, N'103.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Sạc dự phòng Xiaomi Gen 3 20.000MAH', 7, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (49, 460000, N'131.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Máy lọc không khí Xiaomi SmartMi Air Purifier 4 Lite', 4, 1)
INSERT [dbo].[san_pham] ([masp], [gia], [hinh_anh], [mo_ta], [ngay_sua], [ngay_tao], [so_luong], [tensp], [madm], [mancc]) VALUES (50, 470000, N'135.png', NULL, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-10' AS Date), 100, N'Robot hút bụi lau nhà Roborock S7', 2, 1)
SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO
INSERT [dbo].[tai_khoan] ([tennd], [auth_provider], [cmnd], [dia_chi], [email], [gioi_tinh], [hinh_anh], [ho_ten], [mavt], [mat_khau], [sdt]) VALUES (N'nott', NULL, NULL, N'Đà Nẵng', N'no@gmail.com', 1, NULL, N'Trương Thị Nở', NULL, N'123', N'0123456789')
INSERT [dbo].[tai_khoan] ([tennd], [auth_provider], [cmnd], [dia_chi], [email], [gioi_tinh], [hinh_anh], [ho_ten], [mavt], [mat_khau], [sdt]) VALUES (N'pheocc', NULL, N'123456789', N'Quảng Nam', N'pheo@gmail.com', 1, N'user.jpg', N'Cao Chí Phèo', N'GD', N'123', N'0123456789')
INSERT [dbo].[tai_khoan] ([tennd], [auth_provider], [cmnd], [dia_chi], [email], [gioi_tinh], [hinh_anh], [ho_ten], [mavt], [mat_khau], [sdt]) VALUES (N'teonv', NULL, NULL, N'Quảng Nam', N'teo@gmail.com', 1, NULL, N'Nguyễn Văn Tèo', NULL, N'123', N'0123456789')
GO
INSERT [dbo].[vai_tro] ([mavt], [tenvt]) VALUES (N'GD', N'Giám Đốc')
INSERT [dbo].[vai_tro] ([mavt], [tenvt]) VALUES (N'KH', N'Khách hàng')
INSERT [dbo].[vai_tro] ([mavt], [tenvt]) VALUES (N'NV', N'Nhân Viên')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK2lh6unmynnqb078ll2wgh4ciw]    Script Date: 6/28/2023 4:45:20 PM ******/
ALTER TABLE [dbo].[phan_quyen] ADD  CONSTRAINT [UK2lh6unmynnqb078ll2wgh4ciw] UNIQUE NONCLUSTERED 
(
	[tennd] ASC,
	[mavt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[danh_gia]  WITH CHECK ADD  CONSTRAINT [FK6ngu0jah0wdv2nk6bsxcwygh9] FOREIGN KEY([masp])
REFERENCES [dbo].[san_pham] ([masp])
GO
ALTER TABLE [dbo].[danh_gia] CHECK CONSTRAINT [FK6ngu0jah0wdv2nk6bsxcwygh9]
GO
ALTER TABLE [dbo].[danh_gia]  WITH CHECK ADD  CONSTRAINT [FKoiyan42p7b13sy3v3i9dneddl] FOREIGN KEY([tennd])
REFERENCES [dbo].[tai_khoan] ([tennd])
GO
ALTER TABLE [dbo].[danh_gia] CHECK CONSTRAINT [FKoiyan42p7b13sy3v3i9dneddl]
GO
ALTER TABLE [dbo].[hinh_anh]  WITH CHECK ADD  CONSTRAINT [FKcqfg7qfhtitpgljmrv1s6q56h] FOREIGN KEY([masp])
REFERENCES [dbo].[san_pham] ([masp])
GO
ALTER TABLE [dbo].[hinh_anh] CHECK CONSTRAINT [FKcqfg7qfhtitpgljmrv1s6q56h]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK4cxmpydd2mtxwf1fh5b1tj3ki] FOREIGN KEY([tennd])
REFERENCES [dbo].[tai_khoan] ([tennd])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK4cxmpydd2mtxwf1fh5b1tj3ki]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK2pi2i842snyv536wietkwb318] FOREIGN KEY([masp])
REFERENCES [dbo].[san_pham] ([masp])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK2pi2i842snyv536wietkwb318]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK86rqhm9olw0d44tvm6thhhmc7] FOREIGN KEY([mahd])
REFERENCES [dbo].[hoa_don] ([mahd])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK86rqhm9olw0d44tvm6thhhmc7]
GO
ALTER TABLE [dbo].[khuyen_mai]  WITH CHECK ADD  CONSTRAINT [FKds6j0w25bvqg4ydfxmu88dewu] FOREIGN KEY([masp])
REFERENCES [dbo].[san_pham] ([masp])
GO
ALTER TABLE [dbo].[khuyen_mai] CHECK CONSTRAINT [FKds6j0w25bvqg4ydfxmu88dewu]
GO
ALTER TABLE [dbo].[phan_quyen]  WITH CHECK ADD  CONSTRAINT [FKkemxmtmyre7hhq17fxdsja446] FOREIGN KEY([mavt])
REFERENCES [dbo].[vai_tro] ([mavt])
GO
ALTER TABLE [dbo].[phan_quyen] CHECK CONSTRAINT [FKkemxmtmyre7hhq17fxdsja446]
GO
ALTER TABLE [dbo].[phan_quyen]  WITH CHECK ADD  CONSTRAINT [FKrnkd4s4xp0jds85qwjn0jy7mi] FOREIGN KEY([tennd])
REFERENCES [dbo].[tai_khoan] ([tennd])
GO
ALTER TABLE [dbo].[phan_quyen] CHECK CONSTRAINT [FKrnkd4s4xp0jds85qwjn0jy7mi]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK5wavgec206es4cr9yeibf0jnx] FOREIGN KEY([madm])
REFERENCES [dbo].[danh_muc] ([madm])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK5wavgec206es4cr9yeibf0jnx]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FKhp2k7qqhwp3hb66f900uc5gg1] FOREIGN KEY([mancc])
REFERENCES [dbo].[nha_cung_cap] ([mancc])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FKhp2k7qqhwp3hb66f900uc5gg1]
GO
USE [master]
GO
ALTER DATABASE [SmartHome] SET  READ_WRITE 
GO
