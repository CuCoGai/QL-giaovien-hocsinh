USE [QuanLyGiaoVienVaHocSinh]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [varchar](10) NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](100) NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BanPhuTrachMonHoc]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanPhuTrachMonHoc](
	[MaBan] [varchar](10) NOT NULL,
	[MaMonHoc] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[CMT] [int] NOT NULL,
	[TenGV] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [varchar](11) NULL,
	[Email] [nchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[QueQuan] [nvarchar](100) NULL,
	[DanToc] [nvarchar](20) NULL,
	[TonGiao] [nvarchar](20) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[CMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoVienDayLopMH]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVienDayLopMH](
	[MaGiaoVien] [int] NOT NULL,
	[MaLopMH] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoVienThuocBan]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVienThuocBan](
	[MaGiaoVien] [int] NOT NULL,
	[MaBan] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHS] [int] IDENTITY(1,1) NOT NULL,
	[TenHS] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[QueQuan] [nvarchar](100) NULL,
	[DanToc] [nvarchar](20) NULL,
	[TonGiao] [nvarchar](20) NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khoi]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoi](
	[MaKhoi] [varchar](10) NOT NULL,
	[TenKhoi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoi] PRIMARY KEY CLUSTERED 
(
	[MaKhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LopHocLopMonHoc]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocLopMonHoc](
	[MaLop] [varchar](10) NOT NULL,
	[MaLopMH] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LopMonHoc]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopMonHoc](
	[MaLopMH] [varchar](10) NOT NULL,
	[TenLopMH] [nvarchar](50) NULL,
 CONSTRAINT [PK_LopMonHoc] PRIMARY KEY CLUSTERED 
(
	[MaLopMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [varchar](10) NOT NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[NDMonHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TenDN] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanGiaoVienCN]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanGiaoVienCN](
	[MaGiaoVien] [int] NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_PhanGiaoVienCN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanKhoi]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanKhoi](
	[MaLop] [varchar](10) NOT NULL,
	[MaKhoi] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanLMH]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLMH](
	[MaMH] [varchar](10) NOT NULL,
	[MaLopMH] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanLop]    Script Date: 30/05/2017 3:32:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLop](
	[MaHS] [int] NOT NULL,
	[MaLop] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Ban] ([MaBan], [TenBan], [NoiDung]) VALUES (N'PH', N'Phụ Họa', NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [NoiDung]) VALUES (N'TN', N'Tự Nhiên', NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [NoiDung]) VALUES (N'VH', N'Văn Hóa', NULL)
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'TN', N'TOAN')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'TN', N'SINH')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'TN', N'LY')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'TN', N'HOA')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'VH', N'VAN')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'VH', N'TA')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'VH', N'SU')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'VH', N'DIA')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'PH', N'TD')
INSERT [dbo].[BanPhuTrachMonHoc] ([MaBan], [MaMonHoc]) VALUES (N'PH', N'TH')
INSERT [dbo].[GiaoVien] ([CMT], [TenGV], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (12374847, N'Phạm Như Quỳnh', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GiaoVien] ([CMT], [TenGV], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (12473582, N'Hoàng Ngọc Bách', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GiaoVien] ([CMT], [TenGV], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (12847283, N'Mai Ngọc Anh', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GiaoVien] ([CMT], [TenGV], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (13426428, N'Đỗ Văn Thanh', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GiaoVien] ([CMT], [TenGV], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (14151234, N'Nguyễn Văn Hoàng', CAST(N'1991-04-23' AS Date), 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GiaoVien] ([CMT], [TenGV], [NgaySinh], [GioiTinh], [SDT], [Email], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (14353632, N'Nguyễn Minh Trang', CAST(N'1990-02-04' AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HocSinh] ON 

INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (2, N'Nguyễn Văn Nam', CAST(N'1996-12-12' AS Date), 0, N'Hoàng Quốc Việt', N'Hải Dương', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (3, N'Nguyễn Văn Nam 1', CAST(N'1996-01-02' AS Date), 0, N'Hoàng Quốc Việt', N'Ninh Bình', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (4, N'Nguyễn Văn Nam 2', CAST(N'1996-04-12' AS Date), 0, N'Hoàng Quốc Việt', N'Hà Nội', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (5, N'Nguyễn Văn Nam 3', CAST(N'1996-09-30' AS Date), 0, N'Hoàng Quốc Việt', N'Ninh Bình', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (6, N'Nguyễn Văn Nam 4', CAST(N'1996-08-04' AS Date), 0, N'Hoàng Quốc Việt', N'Ninh Bình', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (7, N'Nguyễn Văn Nam 5', CAST(N'1996-02-09' AS Date), 0, N'Hoàng Quốc Việt', N'Nam Định', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (8, N'Nguyễn Văn Nam 6', CAST(N'1996-11-09' AS Date), 0, N'Hoàng Quốc Việt', N'Nam Định', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (9, N'Nguyễn Văn Nam 7', CAST(N'1996-04-04' AS Date), 0, N'Nguyễn Trãi', N'Hải Dương', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (10, N'Nguyễn Văn Nam 8', CAST(N'1995-09-05' AS Date), 0, N'Nguyễn Trãi', N'Hà Nội', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (11, N'Nguyễn Văn Nam 9', CAST(N'1995-04-01' AS Date), 0, N'Nguyễn Trãi', N'Hà Nội', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (12, N'Nguyễn Văn Nam 10', CAST(N'1996-12-12' AS Date), 0, N'Phạm Văn Đồng', N'Quảng Ninh', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (13, N'Nguyễn Văn Nam 11', CAST(N'1995-09-05' AS Date), 0, N'Phạm Văn Đồng', N'Hải Dương', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (14, N'Nguyễn Văn Nam 12', CAST(N'1996-04-12' AS Date), 0, N'Trần Cung', N'Ninh Bình', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (15, N'Nguyễn Văn Nam 13', CAST(N'1995-09-05' AS Date), 0, N'Phạm Văn Đồng', N'Quảng Ninh', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (16, N'Nguyễn Văn Nam 14', CAST(N'1996-01-02' AS Date), 0, N'Phạm Văn Đồng', N'Nam Định', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (17, N'Nguyễn Văn Nam 15', CAST(N'1996-11-09' AS Date), 0, N'Phạm Văn Đồng', N'Nam Định', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (18, N'Nguyễn Văn Nam 16', CAST(N'1996-04-04' AS Date), 0, N'Trần Cung', N'Hải Dương', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (19, N'Nguyễn Văn Nam 17', CAST(N'1996-04-04' AS Date), 0, N'Cổ Nhuế', N'Hà Nội', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (20, N'Nguyễn Văn Nam 18', CAST(N'1995-09-05' AS Date), 0, N'Trần Cung', N'Nam Định', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (21, N'Nguyễn Văn Nam 19', CAST(N'1996-01-02' AS Date), 0, N'Cổ Nhuế', N'Hải Phòng', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (22, N'Nguyễn Văn Nam 20', CAST(N'1996-12-12' AS Date), 0, N'Cổ Nhuế', N'Hải Phòng', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (23, N'Hoàng Mai Anh ', CAST(N'1996-12-12' AS Date), 1, N'Cổ Nhuế', N'Hải Phòng', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (24, N'Hoàng Mai Anh 1', CAST(N'1996-04-04' AS Date), 1, N'Trần Cung', N'Hải Dương', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (25, N'Hoàng Mai Anh 2', CAST(N'1996-01-02' AS Date), 1, N'Cổ Nhuế', N'Hải Phòng', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (26, N'Hoàng Mai Anh 3', CAST(N'1996-11-09' AS Date), 1, N'Cổ Nhuế', N'Hải Phòng', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (27, N'Hoàng Mai Anh 4', CAST(N'1995-09-05' AS Date), 1, N'Cổ Nhuế', N'Hà Nội', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (28, N'Hoàng Mai Anh 5', CAST(N'1996-04-04' AS Date), 1, N'Nguyễn Trãi', N'Quảng Ninh', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (29, N'Hoàng Mai Anh 6', CAST(N'1996-12-12' AS Date), 1, N'Cổ Nhuế', N'Hà Nội', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (30, N'Hoàng Mai Anh 7', CAST(N'1995-09-05' AS Date), 1, N'Cổ Nhuế', N'Hải Dương', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (31, N'Hoàng Mai Anh 8', CAST(N'1996-04-12' AS Date), 1, N'Nguyễn Trãi', N'Quảng Ninh', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (32, N'Hoàng Mai Anh 9', CAST(N'1996-04-04' AS Date), 1, N'Cổ Nhuế', N'Quảng Ninh', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (33, N'Hoàng Mai Anh 10', CAST(N'1996-12-12' AS Date), 1, N'Cổ Nhuế', N'Hải Dương', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (34, N'Hoàng Mai Anh 10', CAST(N'1996-04-12' AS Date), 1, N'Nguyễn Trãi', N'Hải Phòng', N'Kinh', N'ko')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [DanToc], [TonGiao]) VALUES (39, N'Nguyễn Văn Nam 13', CAST(N'1995-09-05' AS Date), 0, N'Phạm Văn Đồng', N'Quảng Ninh', N'Kinh', N'ko')
SET IDENTITY_INSERT [dbo].[HocSinh] OFF
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi]) VALUES (N'1', N'Khối 10')
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi]) VALUES (N'2', N'Khối 11')
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi]) VALUES (N'3', N'Khối 12')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'0', N'Chưa có lớp')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'10A', N'Lớp 10A')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'10B', N'Lớp 10B')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'10C', N'Lớp 10C')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'11A', N'Lớp 11A')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'11B', N'Lớp 11B')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'11C', N'Lớp 11C')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'12A', N'Lớp 12A')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'12B', N'Lớp 12A')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'12C', N'Lớp 12C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL1', N'Địa Lí 10A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL2', N'Địa Lí 10B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL3', N'Địa Lí 10C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL4', N'Địa Lí 11A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL5', N'Địa Lí 11B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL6', N'Địa Lí 11C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL7', N'Địa Lí 12A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL8', N'Địa Lí 12B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'DL9', N'Địa Lí 12C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH1', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH2', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH3', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH4', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH5', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH6', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH7', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH8', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'HH9', N'Hóa Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S1', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S2', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S3', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S4', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S5', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S6', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S7', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S8', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'S9', N'Lịch sử ')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI1', N'Sinh Học 10A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI2', N'Sinh Học 10B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI3', N'Sinh Học 10C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI4', N'Sinh Học 11A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI5', N'Sinh Học 11B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI6', N'Sinh Học 11C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI7', N'Sinh Học 12A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI8', N'Sinh Học 12B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'SI9', N'Sinh Học 12C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T1', N'Toán 10A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T2', N'Toán 10B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T3', N'Toán 10C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T4', N'Toán 11A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T5', N'Toán 11B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T6', N'Toán 11C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T7', N'Toán 12A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T8', N'Toán 12B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'T9', N'Toán 12C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA1', N'Tiếng Anh 10A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA2', N'Tiếng Anh 10B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA3', N'Tiếng Anh 10C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA4', N'Tiếng Anh 11A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA5', N'Tiếng Anh 11B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA6', N'Tiếng Anh 11C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA7', N'Tiếng Anh 12A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA8', N'Tiếng Anh 12B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TA9', N'Tiếng Anh 12C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD1', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD2', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD3', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD4', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD5', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD6', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD7', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD8', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TD9', N'Thể Dục')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH1', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH2', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH3', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH4', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH5', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH6', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH7', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH8', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'TH9', N'Tin Học')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V1', N'Văn 10A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V2', N'Văn 10B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V3', N'Văn 10C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V4', N'Văn 11A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V5', N'Văn 11B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V6', N'Văn 11C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V7', N'Văn 12A')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V8', N'Văn 12B')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'V9', N'Văn 12C')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL1', N'Vật Lý')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL2', N'Vật Lý')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL3', N'Vật Lý')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL4', N'Vật Lý')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL5', N'Vật Lý')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL6', N'Vật Lý')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL7', N'Vật Lý')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL8', N'Vật Lý')
INSERT [dbo].[LopMonHoc] ([MaLopMH], [TenLopMH]) VALUES (N'VL9', N'Vật Lý')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'DIA', N'Địa Lí', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'HOA', N'Hóa Học', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'LY', N'Vật Lý', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'SINH', N'Sinh Học', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'SU', N'Lịch Sử', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'TA', N'Tiếng Anh', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'TD', N'Thể Dục', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'TOAN', N'Toán', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'TH', N'Tin Học', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [NDMonHoc]) VALUES (N'VAN', N'Văn', NULL)
INSERT [dbo].[NguoiDung] ([TenDN], [MatKhau]) VALUES (N'admin', N'admin')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'10A', N'1')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'10B', N'1')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'10C', N'1')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'11A', N'2')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'11B', N'2')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'11C', N'2')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'12A', N'3')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'12B', N'3')
INSERT [dbo].[PhanKhoi] ([MaLop], [MaKhoi]) VALUES (N'12C', N'3')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N'T1')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N'T2')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N'T3')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N'T4')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N't5')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N'T6')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N'T7')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N'T8')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TOAN', N'T9')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V1')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V2')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V3')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V4')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V5')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V6')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V7')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V8')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'VAN', N'V9')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA1')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA2')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA3')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA4')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA5')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA6')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA7')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA8')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TA', N'TA9')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL1')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL2')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL3')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL4')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL5')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL6')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL7')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL8')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'DIA', N'DL9')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI1')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI2')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI3')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI4')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI5')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI6')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI7')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI8')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'SINH', N'SI9')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD1')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD2')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD3')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD4')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD5')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD6')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD7')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD8')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TD', N'TD9')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH1')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH2')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH3')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH4')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH5')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH6')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH7')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH8')
INSERT [dbo].[PhanLMH] ([MaMH], [MaLopMH]) VALUES (N'TH', N'TH9')
ALTER TABLE [dbo].[BanPhuTrachMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_BanPhuTrachMonHoc_Ban1] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[BanPhuTrachMonHoc] CHECK CONSTRAINT [FK_BanPhuTrachMonHoc_Ban1]
GO
ALTER TABLE [dbo].[BanPhuTrachMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_BanPhuTrachMonHoc_MonHoc1] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[BanPhuTrachMonHoc] CHECK CONSTRAINT [FK_BanPhuTrachMonHoc_MonHoc1]
GO
ALTER TABLE [dbo].[GiaoVienDayLopMH]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVienDayLopMH_GiaoVien1] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([CMT])
GO
ALTER TABLE [dbo].[GiaoVienDayLopMH] CHECK CONSTRAINT [FK_GiaoVienDayLopMH_GiaoVien1]
GO
ALTER TABLE [dbo].[GiaoVienDayLopMH]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVienDayLopMH_LopMonHoc] FOREIGN KEY([MaLopMH])
REFERENCES [dbo].[LopMonHoc] ([MaLopMH])
GO
ALTER TABLE [dbo].[GiaoVienDayLopMH] CHECK CONSTRAINT [FK_GiaoVienDayLopMH_LopMonHoc]
GO
ALTER TABLE [dbo].[GiaoVienThuocBan]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVienThuocBan_Ban1] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[GiaoVienThuocBan] CHECK CONSTRAINT [FK_GiaoVienThuocBan_Ban1]
GO
ALTER TABLE [dbo].[GiaoVienThuocBan]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVienThuocBan_GiaoVien1] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([CMT])
GO
ALTER TABLE [dbo].[GiaoVienThuocBan] CHECK CONSTRAINT [FK_GiaoVienThuocBan_GiaoVien1]
GO
ALTER TABLE [dbo].[LopHocLopMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHocLopMonHoc_Lop1] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[LopHocLopMonHoc] CHECK CONSTRAINT [FK_LopHocLopMonHoc_Lop1]
GO
ALTER TABLE [dbo].[LopHocLopMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHocLopMonHoc_LopMonHoc1] FOREIGN KEY([MaLopMH])
REFERENCES [dbo].[LopMonHoc] ([MaLopMH])
GO
ALTER TABLE [dbo].[LopHocLopMonHoc] CHECK CONSTRAINT [FK_LopHocLopMonHoc_LopMonHoc1]
GO
ALTER TABLE [dbo].[PhanGiaoVienCN]  WITH CHECK ADD  CONSTRAINT [FK_PhanGiaoVienCN_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([CMT])
GO
ALTER TABLE [dbo].[PhanGiaoVienCN] CHECK CONSTRAINT [FK_PhanGiaoVienCN_GiaoVien]
GO
ALTER TABLE [dbo].[PhanGiaoVienCN]  WITH CHECK ADD  CONSTRAINT [FK_PhanGiaoVienCN_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[PhanGiaoVienCN] CHECK CONSTRAINT [FK_PhanGiaoVienCN_Lop]
GO
ALTER TABLE [dbo].[PhanKhoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanKhoi_Khoi] FOREIGN KEY([MaKhoi])
REFERENCES [dbo].[Khoi] ([MaKhoi])
GO
ALTER TABLE [dbo].[PhanKhoi] CHECK CONSTRAINT [FK_PhanKhoi_Khoi]
GO
ALTER TABLE [dbo].[PhanKhoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanKhoi_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[PhanKhoi] CHECK CONSTRAINT [FK_PhanKhoi_Lop]
GO
ALTER TABLE [dbo].[PhanLMH]  WITH CHECK ADD  CONSTRAINT [FK_PhanLMH_LopMonHoc] FOREIGN KEY([MaLopMH])
REFERENCES [dbo].[LopMonHoc] ([MaLopMH])
GO
ALTER TABLE [dbo].[PhanLMH] CHECK CONSTRAINT [FK_PhanLMH_LopMonHoc]
GO
ALTER TABLE [dbo].[PhanLMH]  WITH CHECK ADD  CONSTRAINT [FK_PhanLMH_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[PhanLMH] CHECK CONSTRAINT [FK_PhanLMH_MonHoc]
GO
ALTER TABLE [dbo].[PhanLop]  WITH CHECK ADD  CONSTRAINT [FK_PhanLop_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[PhanLop] CHECK CONSTRAINT [FK_PhanLop_HocSinh]
GO
ALTER TABLE [dbo].[PhanLop]  WITH CHECK ADD  CONSTRAINT [FK_PhanLop_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[PhanLop] CHECK CONSTRAINT [FK_PhanLop_Lop]
GO
