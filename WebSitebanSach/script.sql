USE [master]
GO
/****** Object:  Database [QuanLyBanSach]    Script Date: 4/26/2019 11:02:08 PM ******/
CREATE DATABASE [QuanLyBanSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanSach', FILENAME = N'D:\@DATABASE\source code\Database\QuanLyBanSach.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyBanSach_log', FILENAME = N'D:\@DATABASE\source code\Database\QuanLyBanSach_log.ldf' , SIZE = 3840KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyBanSach] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyBanSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanSach] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanSach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyBanSach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanSach] SET QUERY_STORE = OFF
GO
USE [QuanLyBanSach]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 4/26/2019 11:02:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 4/26/2019 11:02:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaChuDe] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaChuDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/26/2019 11:02:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayGiao] [datetime] NULL,
	[NgayDat] [datetime] NULL,
	[DaThanhToan] [nvarchar](50) NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/26/2019 11:02:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DienThoai] [varchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 4/26/2019 11:02:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 4/26/2019 11:02:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](100) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayCapNhat] [datetime] NULL,
	[AnhBia] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[MaChuDe] [int] NULL,
	[MaNXB] [int] NULL,
	[Moi] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 4/26/2019 11:02:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [int] IDENTITY(1,1) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[TieuSu] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 4/26/2019 11:02:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGia](
	[MaSach] [int] NOT NULL,
	[MaTacGia] [int] NOT NULL,
	[VaiTro] [nvarchar](50) NULL,
	[ViTri] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThamGia] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (2, 1, 1, CAST(85000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (2, 2, 2, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (2, 3, 1, CAST(55000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (2, 5, 1, CAST(62000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (3, 1, 1, CAST(85000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (3, 2, 2, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (3, 3, 1, CAST(55000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSach], [SoLuong], [DonGia]) VALUES (3, 5, 1, CAST(62000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (1, N'Công nghệ thông tin')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (2, N'Ngoại ngữ')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (3, N'Phật Giáo')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (4, N'Sách học làm người')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (5, N'Văn học nước ngoài')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (6, N'Kinh Tế')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (7, N'Khoa học Vật lý')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (8, N'Khoa học Xã hội')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (9, N'Luật')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (10, N'Từ điển')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (11, N'Lịch sử, địa lý')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (12, N'Vật nuôi - Cây cảnh')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (13, N'Khoa học kỹ thuật')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (14, N'Mỹ thuật')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (15, N'Nghệ thuật')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (16, N'Âm nhạc')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (17, N'Sách giáo khoa')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (18, N'Sách tham khảo')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (19, N'Danh nhân')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (20, N'Tâm lý giáo dục')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (21, N'Thể thao - Võ thuật')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (22, N'Văn hóa - Xã hội')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (23, N'Nữ công gia chánh')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (24, N'Nghệ thuật làm đẹp')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (25, N'Du lịch')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (26, N'Y Học dân tộc vn')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [DaThanhToan], [TinhTrangGiaoHang], [MaKH]) VALUES (1, NULL, CAST(N'2014-11-20T01:29:55.143' AS DateTime), NULL, NULL, 5)
INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [DaThanhToan], [TinhTrangGiaoHang], [MaKH]) VALUES (2, NULL, CAST(N'2014-11-20T01:34:05.900' AS DateTime), NULL, NULL, 5)
INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [DaThanhToan], [TinhTrangGiaoHang], [MaKH]) VALUES (3, NULL, CAST(N'2014-11-20T01:35:43.047' AS DateTime), NULL, NULL, 5)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (2, N'a', CAST(N'1992-02-01T00:00:00.000' AS DateTime), N'332', N'3', N'321dsds', N'dd', N'dsa@dsad.com', N'sadsa     ')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (4, N'a', CAST(N'1995-11-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (5, N'dddddddsadsa', CAST(N'1992-01-01T00:00:00.000' AS DateTime), N'Nam', N'32321321321', N'myclass', N'123123', N'123@yahoo.com', N'32132321  ')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (1, N'Nhà xuất bản Trẻ', N'124 Nguyễn Văn Cừ Q.1 Tp.HCM', N'1900156045')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (2, N'NXB Thống kê', N'Biên Hòa-Đồng Nai', N'1900151112')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (3, N'Kim đồng', N'Tp.HCM', N'1900157090')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (4, N'Đại học quốc gia', N'Tp.HCM', N'0908419981')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (5, N'Văn hóa nghệ thuật', N'Đà Nẵng', N'0903118833')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (6, N'Văn hóa', N'Bình Dương', N'0913336677')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (7, N'NXB Lao động - Xã hội', N'Tp.HCM', N'0989888888')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (8, N'Khoa Học & Kỹ Thuật', N'Hà Nội', N'0903118824')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (9, N'Thanh Niên', N'Tp.HCM', N'0903118811')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (10, N'NXB Tài Chính', N'Huế', N'0903118833')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (11, N'NXB Phụ Nữ', N'Tp.HCM', N'0989888885')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (12, N'NXB Hồng Đức ', N'Tp.HCM', N'0989888885')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (13, N'NXB Phương Đông', N'Tp.HCM', N'0989888889')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (14, N'NXB Thời Đại', N'Tp.HCM', N'0903118865')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (15, N'NXB Tổng hợp TP.HCM', N'Tp.HCM', N'0903118878')
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (1, N'Sketchup & Vray Trong Thiết Kế 1 Kiến Trúc', CAST(85000 AS Decimal(18, 0)), N'Nội dung sách bao gồm 2 phần - 17 bài tập:

Phần 1: Gồm 2 bài tập hướng dẫn thực hành với SKETCHUP PRO 7.0, các công cụ troongSketchup trình bày sâu hơn giúp bạn đọc khai thác có hiệu quả Sketchup trong công việc.

Phần 2: Gồm 5 bài tập hướng dẫn thục hành với Sketchup Pro phiên bản mới nhất 8.0 cùng chương trình V- Ray chuyên dùng để render (diễn hoạt) mà trong tập 1 chưa trình bày.', CAST(N'2014-11-09T00:00:00.000' AS DateTime), N'000001.jpg', 100, 1, 1, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (2, N'3DS Max-Thủ Thuật Render Phối Cảnh kiến Trúc Ban Ngày Và Đêm Với V-Ray 1.50 RC3', CAST(75000 AS Decimal(18, 0)), N'Cuốn sách 3DS Max giới thiệu đến các bạn những kỹ năng sử dụng phần mềm hỗ trợ V-ray mới nhất đang được nhiều người trên thế giới quan tâm. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000002.jpg', 50, 1, 2, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (3, N'Tự Học InDesign CS3', CAST(55000 AS Decimal(18, 0)), N'InDesign CS3 là chương trình dàn trang rất hiện đại và tiện dụng dành cho việc trình bày sách, báo, tạp chí...', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000003.jpg', 10, 1, 3, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (4, N'Đắc Nhân Tâm - Cuốn Sách Hay Nhất Của Mọi Thời Đại Đưa Bạn Đến Thành Công!', CAST(60000 AS Decimal(18, 0)), N'Đắc nhân tâm – How to win friends and Influence People của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000004.jpg', 10, 4, 4, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (5, N'Tự Học Photoshop CS5 Qua Hình Ảnh Minh Họa (Sách Kèm CD)', CAST(62000 AS Decimal(18, 0)), N'Nhằm đáp ứng nhu cầu tự học Photoshop, một phần mềm xử lý ảnh ngày càng nhiều. Sách " Tự Học Photoshop CS5 Qua Hình Ảnh Minh Họa" được chia thành 11 chương kèm với hình ảnh minh họa và CD bài tập được kèm theo sách. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000005.jpg', 10, 1, 1, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (6, N'180 Thủ Thuật Và Mẹo Hay Trong Flash CS4', CAST(71000 AS Decimal(18, 0)), N'Adobe Flash Professional CS4 là phiên bản mới nhất của công cụ thiết kế Web đang rất thịnh hành hiện nay. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000006.jpg', 10, 1, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (7, N'Microsoft Office 2010 - Dành Cho Người Tự Học', CAST(18000 AS Decimal(18, 0)), N'Trong lĩnh vực tin học văn phòng, Microsoft Word, Excel, PowerPoint, Visio là những chương trình thuộc bộ Microsoft Office đã và đang được ứng dụng rộng rãi trong nhiều lĩnh vực: kinh tế, kế toán, thương mại, quản lý, vẽ kỹ thuật và nhiều hơn nữa. Với Office 2010, bạn có trong tay đầy đủ các công cụ và lệnh để thực hiện các tiện ích trong diện toán văn phòng .', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000007.jpg', 10, 1, 6, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (8, N'Tự học Microsoft Excel 2010', CAST(37000 AS Decimal(18, 0)), N'Sách được chia thành 11 bài, từ căn bản đến nâng cao kèm theo CD bài tập thực hành nhằm giúp bạn học một cách nhanh chóng và dễ hiểu như:', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000008.jpg', 10, 1, 7, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (9, N'C# Dành Cho Người Tự Học - Tập 1', CAST(67000 AS Decimal(18, 0)), N'Sách được chia thành 11 bài, từ căn bản đến nâng cao kèm theo CD bài tập thực hành nhằm giúp bạn học một cách nhanh chóng và dễ hiểu như:', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000009.jpg', 10, 1, 8, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (10, N'C# Dành Cho Người Tự Học - Tập 2', CAST(69000 AS Decimal(18, 0)), N'Trong tập 2 này, các bạn sẽ tìm hiểu ứng dụng C# trong Windows Form qua 2 phần, mỗi phần là một bài tập lớn xây dựng lên ứng dụng Quản lý bán hàng và Quản lý tuyển sinh để bạn đọc hiểu rõ và khai thác có hiệu quả những công cụ và lệnh của C# đã trình bày trong tập 1.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000010.jpg', 10, 1, 2, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (11, N'Nghệ Thuật Sống An Lạc ', CAST(69000 AS Decimal(18, 0)), N'"Nghệ thuật sống An lạc là tuyển tập các bài giảng liên quan tới chủ đề nghệ thuật sống của Đức Nhiếp Chính Vương Khamtrul Rinpoche đời thứ IX Jigme Pema Nyinjadh . ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000011.jpg', 10, 3, 3, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (12, N'Phương Pháp Quản Lý Nhân Sự Trong Công Ty', CAST(69000 AS Decimal(18, 0)), N'Những người sử dụng lao động đã hiểu dần các giá trị mà con người tạo ra cho tổ chức của họ. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000012.jpg', 10, 6, 8, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (13, N'Ngọc Sáng Trong Hoa Sen', CAST(69000 AS Decimal(18, 0)), N'Trong nửa thế kỷ qua, số người phương Tây thăm viếng phương Đông không phải là ít nhưng đã có mấy ai lĩnh hội được tinh hoa của phương Đông? ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000013.jpg', 10, 3, 7, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (14, N'Hành Trình Về Phương Đông', CAST(18000 AS Decimal(18, 0)), N'"Hành trình về phương đông" kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu về huyền học và những khả năng siêu nhiên của con người. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000014.jpg', 10, 3, 6, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (15, N'Lập Bản Đồ Tư Duy - Công Cụ Tư Duy Tối Ưu Sẽ Làm Thay Đổi Cuộc Sống Của Bạn', CAST(18000 AS Decimal(18, 0)), N'Lập Bản Đồ Tư Duy - Công Cụ Tư Duy Tối Ưu Sẽ Làm Thay Đổi Cuộc Sống Của Bạn:', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000015.jpg', 10, 4, 3, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (16, N'Đơn Giản Và Thuần Khiết', CAST(18000 AS Decimal(18, 0)), N'Giới thiệu về nội dung Tác phẩm này là tổng hợp của nhiều bài Pháp được giảng từ những năm 1954 đến 1977 của Upasika Kee Nanayon. Mỗi phần có thể là một bài giảng ở một thời điểm khác nhau, vì thế khi tập hợp lại, điều này tạo cho chúng ta cảm tưởng của sự lặp đi lặp lại nhiều ý tưởng. Đó có thể là lý do khiến cho một số độc giả thiếu kiên nhẫn khi theo dõi, riêng đối với những người sơ cơ thì điều đó lại là một ân huệ. Ngoài ra văn phong của Upasika Kee Nanayon rất giản dị, chân tình. Đôi khi chúng ta sẽ có cảm giác như đang nghe những lời nhắc nhở, dạy dỗ của một người thầy, người mẹ, dầu hơi nghiêm khắc, nhưng luôn tràn đầy tâm từ bi, muốn cho người nghe, người đọc phải tinh tấn thêm lên, gấp rút thêm lên trên con đường tu học của mình.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000016.jpg', 10, 3, 8, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (17, N'Cách Sống - Từ Bình Thường Trở Nên Phi Thường', CAST(18000 AS Decimal(18, 0)), N'Inamori Kazuo một doanh nhân hết sức thành đạt trong việc sáng lập và điều hành tập đoàn Kyocera lớn mạnh của Nhật Bản. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000017.jpg', 50, 6, 7, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (18, N'Những Quy Luật Mới Trong Bán Lẻ', CAST(18000 AS Decimal(18, 0)), N'Ngành bán lẻ đang chứng kiến một sự thay đổi trọng đại. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000018.jpg', 50, 6, 6, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (19, N'Lavina Và Hầu Tước Elswick (Cuộc Chạy Trốn Nữ Hoàng)', CAST(75000 AS Decimal(18, 0)), N'Khi Hoàng tử Stanislaus của xứ Balkan yêu cầu có một cô dâu của Anh quốc, Nữ hoàng Victoria đã quyết định chọn tiểu thư Lavina gửi cho hắn. Gia đình nàng có quan hệ họ hàng xa với hoàng tộc.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000019.jpg', 50, 5, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (20, N'Hành Vi Tổ Chức - Organizational Behavior', CAST(75000 AS Decimal(18, 0)), N'"Vũ trụ cũng không khó hiểu bằng hành động của con người." Marcel Proust Tiến sĩ Timothy A. Judge từng là giáo sư giảng dạy tại trường Đại Học Cornell và đại học Lowa. Ông nghiên cứu chuyên sâu vào các lĩnh vực liên quan đến sự khác biệt cá nhân, thuật lãnh đạo và ảnh hưởng hành vi con người...Ông đã được trao nhiều giải thưởng quan trọng như Emest J.McCormick Award, Larry L. Cummings Award...', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000020.jpg', 50, 6, 2, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (21, N'17 Nguyên Tắc Vàng Trong Làm Việc Nhóm', CAST(75000 AS Decimal(18, 0)), N'Khi trở thành thành viên của một nhóm nào đó thì vấn đề bạn cần băn khoăn không phải là “Có nên tham gia các hoạt động của nhóm không?” mà là “Những đóng góp của bạn có mang lại thành công cho nhóm không?” Các cá nhân không thể gắn kết với nhau là nguyên nhân làm tan rã nhóm. Một số người nghĩ rằng chìa khoá để thành công là nguyên tắc làm việc rõ ràng. Nhưng trên thực tế, có nhiều người rất siêng năng, khả năng làm việc độc lập rất tốt nhưng lại không thể làm việc cùng nhau để phát huy hết tiềm lực của họ. Thực chất, nhóm phải là nhóm những cá nhân luôn tương trợ, giúp đỡ lẫn nhau, tạo động lực cho nhau phát triển. Giữa các cá nhân phải có sự tương tác với nhau như một chuỗi phản ứng hoá học. Đó là cách thức để xây dựng nhóm của riêng bạn. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000021.jpg', 50, 6, 3, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (22, N'Essential Words For The IELTS (Kèm 1 Đĩa CD)', CAST(75000 AS Decimal(18, 0)), N'Extensive practice in vocabulary building and correct English usage, with emphasis on 600 words that appear frequently on the IELTS.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000022.jpg', 50, 2, 1, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (23, N'Tiếng Hàn Trong Giao Tiếp Hàng Ngày', CAST(75000 AS Decimal(18, 0)), N'Extensive practice in vocabulary building and correct English usage, with emphasis on 600 words that appear frequently on the IELTS.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000023.jpg', 50, 2, 6, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (24, N'80 Chiêu Thức Kinh Doanh Thành Công', CAST(75000 AS Decimal(18, 0)), N'Làm sao để nắm bắt và khai thác cơ hội kinh doanh hiệu quả nhất, doanh số tăng, lợi nhuận cao nhưng chi phí giảm? Làm sao để tạo được ấn tượng trong trí nhớ khách hàng? Làm sao để thị trường công nhận rằng bạn cung cấp các sản phẩm tốt nhất, có dịch vụ hậu mãi hoàn hảo nhất? Làm sao để tạo nên một tập thể nhân viên làm việc tích cực và sáng tạo?... Những câu hỏi đó luôn làm trăn trở các nhà quản trị doanh nghiệp, và bí mật sẽ được tiết lộ trong cuốn sách này', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000024.jpg', 50, 6, 4, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (25, N'Những Công Cụ Thiết Yếu Trong Phân Tích Kỹ Thuật Thị Trường Tài Chính ', CAST(48000 AS Decimal(18, 0)), N'Một cuốn sách nghiêm túc thiết thực, sự giới thiệu tuyệt vời về phát triển kỹ thuật. Chen mang lại cho những người mới bắt đầu những ví dụ rõ ràng về các phương pháp và kinh tế, từ đó người đọc có thể chọn ra một hướng chuyên môn hóa', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000025.jpg', 50, 5, 4, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (26, N'Nàng Lọ Lem Và Đàn Chuột Mất Tích', CAST(75000 AS Decimal(18, 0)), N'Những chú chuột nhỏ đã trải qua một đêm lạnh cóng trên gác mái của lâu đài, chúng tìm vào phòng Lọ Lem mong được sưởi ấm. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000026.jpg', 50, 5, 8, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (27, N'Công Chúa Aurora Và Chú Rồng Nhỏ', CAST(48000 AS Decimal(18, 0)), N'Hãy thử tưởng tượng xem mình sẽ làm gì nếu kết bạn với một chú rồng nhỏ? Chắc chắn sẽ có những điều rất thú vị phải không? Vậy công chúa Aurora đã làm những gì khi tình cờ gặp chú rồng nhỏ trên đường đi dạo cùng hoàng tử ?', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000027.jpg', 50, 1, 6, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (28, N'3ds Max 2009 ', CAST(48000 AS Decimal(18, 0)), N'Bộ sách “Dựng Các Mô Hình Kiến Trúc Phức Tạp Và Mô Phỏng Nội Thất - Ngoại Thất 3D” được biên soạn nhằm mục đích hướng dẫn những bạn đọc yêu thích đồ họa 3D thực hiện dễ dàng với chương trình 3ds Max 2009 Pro. Đây là chương trình có nhiều tính năng thiết kế 3D tuyệt vời mà bạn có thể ứng dụng trong kiến trúc xây dựng và trang trí nội ngoại thất.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000028.jpg', 50, 1, 2, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (29, N'Công Nghệ Mạng Máy Tính', CAST(48000 AS Decimal(18, 0)), N'Cuốn sách gồm các nội dung chính sau:', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000029.jpg', 50, 1, 1, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (30, N'Tính Toán Thiết Kế Kết Cấu Với SAP 14', CAST(48000 AS Decimal(18, 0)), N'Extensive practice in vocabulary building and correct English usage, with emphasis on 600 words that appear frequently on the IELTS.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000030.jpg', 50, 1, 2, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (31, N'Revit Architecture 2011 Từ A Đến Z - Tập 2', CAST(48000 AS Decimal(18, 0)), N'Revit Architecture 2011 từ A đến Z (Tập 2) là 1 trong những chuyên đề thuộc họ sách CAD trong kiến trúc-xây dựng do nhà sách STK biên soạn dùng làm tài liệu tham khảo, chủ yếu là thực hành hướng dẫn sử dụng chương trình Revit Architecture đã và đang sử dụng rộng rãi trong các trường Cao đẳng, Đại học khối công nghệ chuyên ngành, cũng như tại các văn phòng thiết kế. Nó cung cấp cho học sinh, sinh viên, giáo viên, kiến trúc sư, họa viên những kiến thức và kỹ năng cơ bản nhất về ứng dụng CAD trong thiết kế kiến trúc.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000031.jpg', 50, 1, 5, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (32, N'CoreIDraw X5 - Dành Cho Người Tự Học', CAST(48000 AS Decimal(18, 0)), N'Coreldraw X5 dành cho người tự học được biên soạn cho người mới bắt đầu sử dụng coreldraw trong thiết kế, học tập và nhiều hơn nữa. Quyển sách này được minh họa bằng hình ảnh cả lý thuyết lẫn thực hành sẽ giúp bạn dễ dàng tìm hiểu và khám phá các đặc tính của Coreldraw x5 để ứng dụng trong công việc thực tế và hiệu quả nhất.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000032.jpg', 50, 1, 6, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (33, N'Chế Bản Điện Tử Với Ilustrator CS5', CAST(15000 AS Decimal(18, 0)), N'Sách cần thiết cho học sinh, sinh viên, những bạn đã biết hoặc chua từng tiếp xúc với chương trình Illustrator cũng như các giáo viên dạy thực hành tại các trung tâm chuyên đồ họa, multimedia, mỹ thuật công nghiệp ...', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000033.jpg', 50, 1, 7, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (34, N'Cẩm Nang Tin Học Văn Phòng', CAST(15000 AS Decimal(18, 0)), N'Với những tiến bộ của khoa học kỹ thuật, máy vi tính ra đời và được sử dụng trong khắp các văn phòng, công sở, gia đình... đã trở thành công cụ không thể thiếu đối với mỗi người', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000034.jpg', 50, 1, 8, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (35, N'Xử Lý Ảnh Photoshop CS5 Dành Cho Người Tự Học - Tập 1', CAST(15000 AS Decimal(18, 0)), N'Bộ sách được chia làm nhiều chuyên đề đi sâu vào từng tính năng quan trọng của Photoshop. Chuyên đề đâu tiên này sẽ tập trung trình bày cách tạo vùng chọn. Đây là phần cơ bản nhưng rất quan trọng sách khi sử dụng Photoshop. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000035.jpg', 50, 1, 5, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (36, N'71 Kỹ Thuật Thâm Nhập Windows Vista Pro', CAST(74000 AS Decimal(18, 0)), N'71 Kỹ Thuật Thâm Nhập Windows Vista Pro:', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000036.jpg', 50, 1, 2, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (37, N'Hướng Dẫn Học Từng Bước Excel 2010 Dành Cho Người Tự Học', CAST(15000 AS Decimal(18, 0)), N'Nội dung sách trình bày những kiến thức không quá sâu, nhằm phục vụ cho những người mới bắt đầu làm quen với điện toán văn phòng, đồng thời là tài liệu tham khảo để giảng dạy liên quan đến chương trình Excel.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000037.jpg', 50, 11, 1, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (38, N'SQL Server 2005 - Xây Dựng Ứng Dụng Quản Lý Kế Toán Bằng C# 2005 ', CAST(74000 AS Decimal(18, 0)), N'Giáo trình bao gồm 10 chương và phần phụ lục tham khảo được nhấn mạnh xuyên suốt từ giao diện, hàm, phát biểu SQL động, phát biểu SQL phức tạp, phát biểu điều khiển, thủ tục nội tại, trigger, giúp cho bạn sử dụng chúng trong ứng dụng kế toán cùng với sự kết hợp hoàn hảo bằng ngôn ngữ lập trình C# 2005.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000038.jpg', 50, 1, 4, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (39, N'Lập Trình Web Bằng ASP.Net Với Macromedia Dreamweaver MX - Tập 2', CAST(74000 AS Decimal(18, 0)), N'ASP.NET khác biệt rất nhiều so với các công nghệ Web đi trước. Macromedia Dreamweaver MX tuy vẫn duy trì sức mạnh của công cụ thiết kế trang nhã, nhưng đã chuyển từ công nghệ cổ điển sang ASP.NET bằng cách cung cấp nhiều công cụ đơn giản bớt quá trình tự động hoá ứng dụng Web. Nhờ kết hợp sức mạnh của ASP.NET với Dreamweaver, các nhà phát triển sẽ nắm bắt được ASP.NET chỉ trong nháy mắt.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000039.jpg', 50, 1, 5, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (40, N'Tạo Website Hướng Database Bằng PHP Và MYSQL - Tập 2', CAST(74000 AS Decimal(18, 0)), N'Nội dung là yếu tố quyết định tất cả! Ừm… nghe thì hơi “kêu” thật, nhưng không thể nào đúng hơn. Chỉ cần nắm vững HTML và học thêm vài bí quyết cơ bản về JavaScript và Dynamic HTML là ta đã có thể thiết kế một Website đầy ấn tượng được rồi. Nhưng muốn thu hút một lượng fan đông đảo thì nội dung của Website phải mới mẻ và liên tục được cập nhật. Trong thiết kế Web truyền thống, nội dung được quyết định bở tập tin HTML…', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000040.jpg', 50, 1, 4, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (41, N'Tạo Bản Thuyết Trình Trong Microsoft Office PowerPoint 2007 For Windows', CAST(74000 AS Decimal(18, 0)), N'Tạo bản thuyết trình trong Microsoft Office PowerPoint 2007 for Windows mang lại cho bạn phương pháp nghiên cứu công nghệ mới độc đáo nhất từ trước đến nay. Thay vì làm nản lòng độc giả bằng những giải thích dông dài mang nặng tính lý thuyết, tập sách sử dụng hình ảnh minh họa đi kèm hướng dẫn cụ thể hầu giúp bạn hoàn thành dự án chỉ trong nháy mắt', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000041.jpg', 50, 1, 2, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (42, N'Shambhala - Vùng Đất Tây Tạng Huyền Bí Hay Cuộc Hành Trình Tìm Về Bản Thể', CAST(74000 AS Decimal(18, 0)), N'Tu viện Tashilumbo thuộc thành phố Phật giáo Shigatze, nằm ở miền Tây của Tây Tạng. Nơi đây, gió thường thổi xuyên qua các hành lang rải đầy đá, để lại những luồng không khí mát rượu giữa cái nóng dịu nhẹ của buổi chiều tà. Vào thời khắc này, người ta thường cảm thấy trào dâng niềm cảm xúc động khi ngắm nhìn những tia sáng chói lòa chiếu rọi qua cao nguyên Himalaya. Cảm xúc ấy càng trở nên mãnh liệt hơn khi mặt trời dần khuất bóng.Shambhala là bản kinh cổ xưa viết bằng tay, được lưu giữ tại Tu viện Tashilumbo. Kinh Shambhala miêu tả những noi như "Hồ Độc Dược", "Hồ Ác Quỷ" và cả hiện tượng quầng cực quang ở dãy núi Himalaya, khi "Một trăm ngọn núi cùng phát sáng sau khi màn đêm buông xuống". Tất cả những nơi này đều có thực. Chúng nằm ở Ngari, một vùng xa xôi hẻo lánh ở cực tây của Tây Tạng.Ở một góc độ khác, bản kinh không chỉ đơn thuần là một cuốn sách dẫn đường theo nghĩa đen nữa, nó còn có thể là một tấm bản đồ chỉ dẫn thiền định cho mỗi cá nhân trên con đường khám phá nội tâm của chính mình. Ở góc độ này, Kinh Shambhala mang ý nghĩa phức tạp hơn. Nó dạy chúng ta cách khống chế những năng lượng tiêu cực và chuyển hóa chúng thành năng lượng tiêu cực và chuyển hóa chúng thành năng lượng tích cực....', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000042.jpg', 50, 3, 6, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (43, N'Sức Mạnh Của Đạo Phật - Để Sống Tốt Hơn Trong Thế Giới Ngày Nay', CAST(74000 AS Decimal(18, 0)), N'Nói đến Đạo Phật là nói đến giác ngộ, chủ trương của Đạo Phật là giác ngộ. Đạo Phật có mặt trên thế giới đến nay là 2556 năm (tính đến thời điểm hiện tại năm 2008). ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000043.jpg', 50, 3, 8, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (44, N'Điều Trị Bệnh Tận Gốc - Năng Lực Của Tâm Bi Mẫn ', CAST(74000 AS Decimal(18, 0)), N'"Điều trị bệnh tận gốc" không chỉ là một cuốn sách với những lời cầu nguyện cho bệnh tật cơ thể được giảm bớt. Nội dung của cuốn sách này còn chứa đựng nhiều hơn thế nữa. Các phần lý thuyết và thực hành chứa đựng trong sách này có tác dụng dẫn dắt tâm chúng ta đến chỗ thấu hiểu sâu xa hơn về sự sống và cái chết, về vô thường và khổ đau. Sự thấu hiểu sâu sắc như thế sẽ cho phép chúng ta bắt đầu nhìn ngắm cơn đau và bệnh tật bằng một tầm nhìn bao quát hơn. Với tầm nhìn này thì khái niệm về nghiệp quả, về tái sinh và về phẩm chất của sự tái sinh, tát cả những khái niệm đó sẽ mang những ý nghĩa mới có năng lực làm dịu cơn đau và chữa lành tận gốc các căn bệnh của chúng ta', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000044.jpg', 50, 3, 7, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (45, N'Nhập Môn Windows Vista Tập 1', CAST(32000 AS Decimal(18, 0)), N'Nhập Môn Windows Vista - Tập 1 gồm những nôi dung sau:', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000045.jpg', 50, 1, 2, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (46, N'Hành Trình Tâm Linh Siêu Việt', CAST(32000 AS Decimal(18, 0)), N'Một cuốn sách của tác giả Gyalwang Drukpa, một bậc thầy về tâm linh, người đang dẫn dắt dòng truyền thừa Drukpa, một dòng truyền thừa với những hành giả thực hành tâm linh trải khắp Ấn Độ và các nước tại Châu Á, Châu Âu và Châu Mỹ. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000046.jpg', 50, 3, 11, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (47, N'Nghiệp Lực - Nhìn Lại Quá Khứ & Nhận Biết Tương Lai', CAST(32000 AS Decimal(18, 0)), N'Nỗi hoang mang bối rối của con người về nghiệp không khiến bà ngạc nhiên. Hỏi mười người ý nghĩa của từ này, bạn sẽ nhận được mười câu trả lời khác nhau. ', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000047.jpg', 50, 3, 10, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (48, N'Tỉnh Thức', CAST(32000 AS Decimal(18, 0)), N'"Con người còn luôn mãi khổ đau một khi chưa tỉnh thức."', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000048.jpg', 50, 3, 2, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (49, N'13 Nguyên Tắc Nghĩ Giàu, Làm Giàu - Think And Grow Rich', CAST(32000 AS Decimal(18, 0)), N'"Think and Grow Rich - 13 nguyên tắc nghĩ giàu, làm giàu" là cuốn sách "chỉ dẫn" duy nhất chỉ ra những nguồn lực bạn phải có để thành công. Cuốn sách sẽ giúp bạn trở nên giàu có, làm giàu thêm cho cuộc sống của bạn trên tất cả các phương diện của cuộc sống chứ không chỉ về tài chính và vật chất. Những ý tưởng trong sách "Think and Grow Rich - 13 nguyên tắc nghĩ giàu, làm giàu" bắt nguồn từ những động lực tốt đẹp: "Thành công cá nhân" và "Quan điểm suy nghĩ tích cực".', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000049.jpg', 50, 6, 7, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (50, N'Đạo Kỷ Nguyên Mới', CAST(32000 AS Decimal(18, 0)), N'"Think and Grow Rich - 13 nguyên tắc nghĩ giàu, làm giàu" là cuốn sách "chỉ dẫn" duy nhất chỉ ra những nguồn lực bạn phải có để thành công. Cuốn sách sẽ giúp bạn trở nên giàu có, làm giàu thêm cho cuộc sống của bạn trên tất cả các phương diện của cuộc sống chứ không chỉ về tài chính và vật chất. Những ý tưởng trong sách "Think and Grow Rich - 13 nguyên tắc nghĩ giàu, làm giàu" bắt nguồn từ những động lực tốt đẹp: "Thành công cá nhân" và "Quan điểm suy nghĩ tích cực".', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000050.jpg', 50, 3, 12, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (51, N'The Power Of Compassion - Sức mạnh của lòng từ', CAST(32000 AS Decimal(18, 0)), N'Từ ngày 11 đến ngày 11 tháng 6 năm 2008 này, Đức Đạt Lai Lạt Ma sẽ viếng thăm Úc Châu, đây là chuyến thăm Úc lần thứ năm của Ngài để giảng dạy Phật Pháp. Mọi người đang trông đợi sự xuất hiện của ngài.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000051.jpg', 50, 3, 12, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (52, N'Con Đường Mây Trắng - DER WEG DER WEISSEN WOLKEN', CAST(32000 AS Decimal(18, 0)), N'Trong thế kỷ hai muơi này, phương Tây có hai người tìm hiểu đất nước Tây Tạng rất sâu sắc, đó là bà Alexandra David Nesel và ông Anagarika Govinda. Cả hai vị này đã từng sống nhiều năm tại tây Tạng, từng tu tập thiền định và đi khắp nơi trong xứ sở huyền bí này hơn bất cứ người nước ngoài nào khác. Có thế nói họ hiểu tây Tạng với tất cả những khía cạnh tâm linh, tâm lý, địa lý nhiều hơn cả phần đông người tây Tạng.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000052.jpg', 50, 3, 13, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (53, N'Đức Đạt Lai Lạt Ma Tại Harvard', CAST(43000 AS Decimal(18, 0)), N'Đức Đạt lai Lạt ma tại Harvard là một loạt bài thuyết giảng tại Đại Học Harvard do Viện nghiên cứu Phật học Hoa Kỳ (AIRS) và Trung tâm nghiên cứu các tôn giáo bảo trợ. Các bài thuyết giảng của Đức Đạt-lai-Lạt-ma, chủ yếu do giáo sư Robert Thurman sắp xếp, đã được thực hiện tại Giảng đường Emerson trong khuôn viên của Havard.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000053.jpg', 50, 3, 1, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (54, N'Những Con Đường Của Ánh Sáng - Tập 1', CAST(43000 AS Decimal(18, 0)), N'Những Con Đường Của Ánh Sáng - Tập 1: Vật Lý Siêu Hình Học Của Ánh Sáng Và Bóng Tối (Tái Bản)', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000054.jpg', 50, 7, 1, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (55, N'Những Con Đường Của Ánh Sáng - Tập 2', CAST(43000 AS Decimal(18, 0)), N'Những con đường của ánh sáng được coi là bản sử thi về cuộc hành trình của con người đi vào vương quốc ánh sáng và giải mã những bí mật của nó. Và trong cuốn sách này tác giả đã thảo luận về ánh sáng, và liên qua tới nó là bóng tối, trên nhiều phương diện bao gồm tầm quan trọng của nó đối với sự sống, đối với khoa học, sự diễn giải ánh sáng của bộ não, nghệ thuật của các họa sĩ thuộc trường phái ấn tượng, việc sử dụng ánh sáng trong kiến trúc và các khía cạnh tâm linh của ánh sáng....', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000055.jpg', 50, 7, 1, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (56, N'Cái Vô Hạn Trong Lòng Bàn Tay (Từ Big Bang Đến Giác Ngộ)', CAST(43000 AS Decimal(18, 0)), N'Cái Vô Hạn Trong Lòng Bàn Tay (Từ Big Bang Đến Giác Ngộ):', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000056.jpg', 50, 3, 14, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (57, N'Nghệ Thuật Thiền Định', CAST(43000 AS Decimal(18, 0)), N'Nếu như học thiền là một con đường mà các bậc cao minh nhất đã theo đuổi trong suốt cuộc đời thì thực hành thiền trong cuộc sống hằng ngày sẽ làm thay đổi cách nhìn của chúng ta về chính bản thân mình và thế giới. Đó là thông điệp mà cuốn sách Nghệ thuật thiền định muốn gửi đến chúng ta. Cuốn sách vừa như người dẵn dắt cụ thể cho chúng ta cách thực hành thiền.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000057.jpg', 50, 3, 14, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (58, N'Bàn Về Hạnh Phúc', CAST(43000 AS Decimal(18, 0)), N'Tất cả chúng ta đều khát khao hạnh phúc, song làm cách nào để có được, giữ gìn nó và thậm chí để định nghĩa nó? Trước câu hỏi mang đầy tính triết lý đang bị giằng xé giữa chủ nghĩa bi quan và thái độ giễu cợt trong tư tưởng phương Tây này, Matthieu Ricard đã mang lại lời giải đáp của đạo Phật: một câu trả lời rất khắt khe, song làm chúng ta yên lòng, lạc quan và ai cũng có thể chấp nhận được.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000058.jpg', 50, 3, 15, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (59, N'Lượng tử hoa và sen', CAST(43000 AS Decimal(18, 0)), N'Lưỡng Tử và Hoa Sen là sự khai phá mở rộng tri thức, tầm nhìn về những tương đương thú vị giữa tư tưởng sắc sảo về vật lý học và Phật giáo - một cuộc trò chuyện mà bất kỳ ai có suy nghĩ đều thích thú dù chỉ tình cờ nghe thấy.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000059.jpg', 50, 3, 15, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (60, N'Đối Thoại Giữa Triết Học Và Phật Giáo', CAST(43000 AS Decimal(18, 0)), N'Dựa theo quan niệm cũ kỹ lâu đời, phương Tây hình dung Phật giáo như là một sự minh triết nhưng thụ động và tiêu cực, và xem Niết Bàn như là một sự quay về sống với nội tâm, không màng đến thế sự bên ngoài, kể cả sinh hoạt trong các thành phố.', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000060.jpg', 50, 3, 12, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (61, N'Phật giáo truyền thống Đại Thừa', CAST(43000 AS Decimal(18, 0)), N'... Cái tâm cảm thấy mình gần gũi với tất cả mọi chúng sinh như thế chính là tâm từ vô thượng. Một người có được tình yêu này đối với tất cả hữu tình không phân biệt, thì không phải là một người thường. Chắc chắn một con người như vậy đang nắm giữ những thực chứng nội tâm trong tâm thức họ. Khi một người nào có được thứ tình yêu này gặp hoặc nhìn thấy người khác, thì một cảm giác hạnh phúc hồn nhiên sinh khởi. Một người như thế không bao giờ sinh tâm giận dữ hay ganh tị, và do hậu quả của điều này, mọi người sẽ trở thành bạn của vị ấy, có niềm kính trọng lớn lao đối với vị ấy. Một người thực tập tâm từ thuần tịnh thì kết quả cũng sẽ có nội tâm rất an bình', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000061.jpg', 50, 3, 12, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (62, N'Tình Yêu Phổ Quát', CAST(43000 AS Decimal(18, 0)), N'...Tất cả chúng sinh đều có hạt giống Phật hay Phật tính. Phương pháp khiến cho hạt giống này nảy nở chính là thực hành những chỉ giáo về pháp luyện tâm. Những kinh nghiệm hay thực chứng trong pháp luyện tâm chính là con đường đến giác ngộ, bởi thế điểm thiết yếu là tất cả chúng sinh cần đạt được kinh nghiệm về pháp tu này. Kết thúc kinh Tiểu phẩm Bát-nhã, đức Phật đã dạy:', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000062.jpg', 50, 3, 12, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (63, N'Rộng Mở Tâm Hồn - Tu Tập Từ Bi Trong Đời Sống Hàng Ngày', CAST(43000 AS Decimal(18, 0)), N'Rộng Mở Tâm Hồn - Tu Tập Từ Bi Trong Đời Sống Hàng Ngày', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000063.jpg', 50, 3, 12, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [SoLuongTon], [MaChuDe], [MaNXB], [Moi]) VALUES (64, N'Cuộc Đời Là Vô Thường', CAST(43000 AS Decimal(18, 0)), N'Cuộc Đời Là Vô Thường', CAST(N'2012-03-31T00:00:00.000' AS DateTime), N'000064.jpg', 50, 3, 12, NULL)
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (1, N'Tenzin Gyatso - Đức Đạt Lai Lạt Ma 14', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (2, N'Trịnh Xuân Thuận', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Trịnh Xuân Thuận (1948- ) là một khoa học gia người Mỹ gốc Việt trong lĩnh vực vật lý thiên văn, là một nhà văn đã viết nhiều quyển sách có giá trị cao về vũ trụ học và về những suy nghĩ của ông trong tương quan giữa khoa học và Phật giáo. Ông còn là một nhà thơ, một triết gia, một Phật tử và một nhà hoạt động cho môi trường và hòa bình. Ông đã nhận lãnh nhiều giải thưởng trong lĩnh vực thiên văn và trong lĩnh vực văn hoá xã hội.', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (3, N'Matthieu Ricard', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Matthieu-Ricard', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (4, N'Kyabje Khamtrul Rinpoche', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (5, N'Đức Pháp Vương GYALWANG DRUKPA XII', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (6, N'Nguyên Phong', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (7, N'Lama Zopa Rinpoche', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (8, N'Lama Anagarika Govinda', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (9, N'Ni sư Thích Nữ Trí Hải', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Phó viện trưởng viện Nghiên cứu Phật học Việt Nam', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (10, N'Ngọc Bích', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (11, N'Quỳnh Nga', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (12, N'Edward Peppitt', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (13, N'Nhân Văn', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (14, N'Blair T.Spalding', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (15, N'FPT Polytechnic', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Kyabje-Khamtrul-Rinpoche', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (16, N'Upasika Kee Nanayon', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (17, N'Inamori Kazuo', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (18, N'Robin Lewis', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (19, N'Michael Dart', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (20, N'Mary T.Browne', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (21, N'Minh Đức', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (22, N'John C.Maxwell', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (23, N'Dr. Lin Lougheed, Ed.D', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (24, N'Đổ Thái Hòa', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (25, N'Barbara Bazaldua', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (26, N'Th.S Nguyễn Nam Thuận', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (27, N'Lê Thuận', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (28, N'Trần Tuấn Mẫn', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (29, N'Dr. Prashant Kakode', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (30, N'John Blofeld', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (31, N'Nguyễn Bá Tiến', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (32, N'Vô Úy', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (33, N'Quang Hiển', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (34, N'Tường Thụy', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (35, N'Huyền Cơ', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (36, N'Phương Thảo', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (37, N'Tony Buzan', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (38, N'Dale Carnegie ', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (39, N'Stephen P. Robbins .Timothy A. Judge', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (40, N'Vương Chí Cương', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (41, N'James Chen. Lê Đạt Chí', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (42, N'Th.S Nguyễn Công Minh', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (43, N'TS. Phạm Thế Quế', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (44, N'Phạm Quang Hiển', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (45, N'Phạm Hữu Khang', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (46, N'Laurence J. Brahm', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (47, N'Nguyễn Tường Bách', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (48, N'Thích Nguyên Tạng', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (49, N'Thanh Tâm', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (50, N'Trần Hà', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (51, N'Phan Lê Nhật Hý', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (52, N'Quang Huy', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (53, N'Geshe Kelsang Gyatso', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (54, N'Nguyễn Minh Tiến', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (55, N'Ngọc Cầm', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là "Người bảo vệ đức tin" (Defender of the Faith), "Biển lớn của trí tuệ" (Ocean of Wisdom), "Vua của Chánh Pháp" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', N'123456789')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (1, 33, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (1, 34, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (2, 51, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (3, 50, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (4, 38, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (5, 31, N'Chủ biên', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (5, 50, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (6, 26, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (7, 27, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (7, 49, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (7, 52, N'Tác giả', N'3')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (8, 49, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (9, 10, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (9, 11, N'Tác giả', N'3')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (9, 34, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (10, 10, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (10, 11, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (10, 34, N'Tác giả', N'3')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (11, 4, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (11, 32, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (12, 12, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (12, 13, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (13, 6, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (13, 30, N'Dịch giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (14, 6, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (14, 14, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (15, 37, N'Dịch giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (16, 16, N'Chủ biên', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (17, 17, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (18, 18, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (18, 19, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (19, 25, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (20, 15, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (20, 39, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (21, 22, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (22, 23, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (23, 24, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (24, 40, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (25, 41, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (26, 25, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (27, 25, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (28, 42, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (29, 43, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (30, 44, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (31, 49, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (31, 52, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (32, 27, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (32, 49, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (32, 52, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (33, 27, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (33, 49, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (33, 52, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (34, 27, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (34, 49, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (34, 52, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (35, 27, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (35, 49, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (35, 52, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (36, 36, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (37, 26, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (38, 45, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (39, 10, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (39, 34, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (40, 26, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (41, 26, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (42, 46, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (43, 1, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (44, 7, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (45, 46, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (46, 5, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (46, 21, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (47, 20, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (47, 21, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (48, 29, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (49, 35, N'Dịch giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (49, 36, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (50, 1, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (51, 1, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (51, 48, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (52, 8, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (52, 47, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (53, 1, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (53, 28, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (54, 2, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (55, 2, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (56, 2, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (56, 3, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (57, 3, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (58, 3, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (59, 3, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (60, 3, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (61, 9, N'Dịch giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (61, 53, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (62, 9, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (62, 53, N'Tác giả', N'1')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (63, 1, N'Tác giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (63, 35, N'Dịch giả', N'2')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (63, 54, N'Dịch giả', N'3')
INSERT [dbo].[ThamGia] ([MaSach], [MaTacGia], [VaiTro], [ViTri]) VALUES (63, 55, N'Tác giả', N'2')
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Sach]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChuDe] FOREIGN KEY([MaChuDe])
REFERENCES [dbo].[ChuDe] ([MaChuDe])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_ChuDe]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_Sach]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_TacGia]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanSach] SET  READ_WRITE 
GO
