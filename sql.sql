USE [QL_TiecCuoi]
GO
/****** Object:  Table [dbo].[ChiTietDatTiec]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatTiec](
	[MaChiTietDacTiet] [int] NOT NULL,
	[MaDatTiec] [int] NULL,
	[MaSanh] [int] NULL,
	[MaKhachHang] [int] NULL,
	[MaThucDon] [int] NULL,
	[MaThucDonKHChon] [int] NULL,
	[MaTiec] [int] NULL,
	[MaNhanVien] [int] NULL,
	[MaGoiDichVu] [int] NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDacTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietGoiDichVu]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGoiDichVu](
	[MaChiTietGoiDV] [int] NOT NULL,
	[MaGoiDichVu] [int] NULL,
	[MaDichVu] [int] NULL,
 CONSTRAINT [PK_ChiTietGoiDichVu] PRIMARY KEY CLUSTERED 
(
	[MaChiTietGoiDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietGoiDichVuKHChon]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGoiDichVuKHChon](
	[MaChiTiet] [int] NOT NULL,
	[MaGoiDichVuKHChon] [int] NULL,
	[MaDichVu] [int] NULL,
 CONSTRAINT [PK_ChiTietGoiDichVuKHChon] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietThongTinSanh]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThongTinSanh](
	[MaChiTietSanh] [int] IDENTITY(1,1) NOT NULL,
	[MaSanh] [int] NULL,
	[Ten] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChiTietThongTinSanh] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietThucDon]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThucDon](
	[MaChiTietThucDon] [int] IDENTITY(1,1) NOT NULL,
	[MaMonAn] [int] NULL,
	[MaThucDon] [int] NULL,
 CONSTRAINT [PK_ChiTietCombo] PRIMARY KEY CLUSTERED 
(
	[MaChiTietThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietThucDonKHChon]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThucDonKHChon](
	[MaChiTietThucDonKhChon] [int] IDENTITY(1,1) NOT NULL,
	[MaThucDon] [int] NULL,
	[MaMonAn] [int] NULL,
 CONSTRAINT [PK_ChiTietThucDonKHChon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietThucDonKhChon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatTiec]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTiec](
	[MaDacTiec] [int] IDENTITY(1,1) NOT NULL,
	[TongTien] [nvarchar](100) NULL,
	[NgayToChuc] [nvarchar](100) NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaDacTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDichVu] [int] IDENTITY(1,1) NOT NULL,
	[LoaiDichVu] [int] NULL,
	[TenDichVu] [nvarchar](100) NULL,
	[GiaTien] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](100) NULL,
	[MoTa] [nvarchar](100) NULL,
	[HinhAnh] [image] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoiDichVu]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoiDichVu](
	[MaGoiDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenGoiDichVu] [int] NULL,
	[SoLuong] [int] NULL,
	[TongTien] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_GoiDichVu] PRIMARY KEY CLUSTERED 
(
	[MaGoiDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GoiDichVuKHChon]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoiDichVuKHChon](
	[MaGoiDichVuKHChon] [int] IDENTITY(1,1) NOT NULL,
	[TenGoi] [nvarchar](100) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[TongTien] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_GoiDichVuKHChon] PRIMARY KEY CLUSTERED 
(
	[MaGoiDichVuKHChon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaDatTiec] [int] NOT NULL,
	[MaNhanVien] [int] NULL,
	[TongTien] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](100) NULL,
	[TienCoc] [nvarchar](100) NULL,
	[MaGiamGia] [nvarchar](100) NULL,
	[NhanCocLan1] [nvarchar](100) NULL,
	[NhanCocLan2] [nvarchar](100) NULL,
	[ChiPhiPhatSinh] [nvarchar](100) NULL,
 CONSTRAINT [PK__ThongTin__3213E83FABF8E819] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LapBaoCao]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LapBaoCao](
	[MaBaoCao] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[MaNhanVien] [int] NULL,
	[Thang] [int] NULL,
	[SoLuongTiec] [int] NULL,
	[DoanhThu] [int] NULL,
 CONSTRAINT [PK__LapBaoCa__3213E83FBEF8F4C0] PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDichVu]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDichVu](
	[MaLoaiDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDichVu] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiDichVu] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiMonAn]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonAn](
	[MaLoaiMonAn] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiMonAn] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiMonAn] PRIMARY KEY CLUSTERED 
(
	[MaLoaiMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mon_An]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon_An](
	[MaMonAn] [int] IDENTITY(1,1) NOT NULL,
	[TenMonAn] [nvarchar](100) NULL,
	[LoaiMonAn] [int] NULL,
	[GiaTien] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[MoTa] [nvarchar](500) NULL,
	[HinhAnh] [nvarchar](100) NULL,
 CONSTRAINT [PK_Mon_An] PRIMARY KEY CLUSTERED 
(
	[MaMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(5,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[TenNhanVien] [nvarchar](100) NOT NULL,
	[SoDienThoai] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[ChucVu] [nvarchar](100) NOT NULL,
	[TinhTrang] [nvarchar](100) NULL,
 CONSTRAINT [PK__NhanVien__3213E83F20DA616E] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](1000) NOT NULL,
	[LoaiTaiKhoan] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinkhachHang]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinkhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[NgayLap] [date] NOT NULL,
	[TenKhachHang] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__ThongTin__3213E83F6868B81B] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinSanh]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinSanh](
	[MaSanh] [int] IDENTITY(1,1) NOT NULL,
	[LoaiSanh] [nvarchar](100) NULL,
	[TenSanh] [nvarchar](100) NOT NULL,
	[SoLuongBan] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](100) NULL,
	[HinhAnh] [image] NULL,
	[MoTa] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDon](
	[MaThucDon] [int] IDENTITY(1,1) NOT NULL,
	[TenThucDon] [nvarchar](100) NULL,
	[SoLuongMon] [int] NULL,
	[TongDonGia] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_Combo] PRIMARY KEY CLUSTERED 
(
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThucDonKHChon]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDonKHChon](
	[MaThucDon] [int] IDENTITY(1,1) NOT NULL,
	[TenThucDon] [nchar](100) NULL,
	[TongTien] [nvarchar](100) NULL,
	[SoLuongMon] [int] NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_ThucDonKHChon] PRIMARY KEY CLUSTERED 
(
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tiec]    Script Date: 12/28/2020 11:08:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tiec](
	[MaTiec] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGian] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](100) NULL,
 CONSTRAINT [PK_Tiec] PRIMARY KEY CLUSTERED 
(
	[MaTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[LoaiMonAn] ON 

INSERT [dbo].[LoaiMonAn] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (1, N'Khai vị')
INSERT [dbo].[LoaiMonAn] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (2, N'Món chính')
INSERT [dbo].[LoaiMonAn] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (3, N'Tráng miệng')
INSERT [dbo].[LoaiMonAn] ([MaLoaiMonAn], [TenLoaiMonAn]) VALUES (4, N'Món thêm')
SET IDENTITY_INSERT [dbo].[LoaiMonAn] OFF
SET IDENTITY_INSERT [dbo].[Mon_An] ON 

INSERT [dbo].[Mon_An] ([MaMonAn], [TenMonAn], [LoaiMonAn], [GiaTien], [TrangThai], [GhiChu], [MoTa], [HinhAnh]) VALUES (1, N'Cơm chiên', 1, N'20000', N'1', NULL, N'Đây là món ăn được làm từ cơm', N'')
INSERT [dbo].[Mon_An] ([MaMonAn], [TenMonAn], [LoaiMonAn], [GiaTien], [TrangThai], [GhiChu], [MoTa], [HinhAnh]) VALUES (2, N'Mực xào', 1, N'30000', N'1', NULL, N'Đây là món ăn cực kì bổ dưỡng', N'')
INSERT [dbo].[Mon_An] ([MaMonAn], [TenMonAn], [LoaiMonAn], [GiaTien], [TrangThai], [GhiChu], [MoTa], [HinhAnh]) VALUES (3, N'Gà rán', 2, N'15000', N'1', NULL, N'Đây là món ăn có rất nhiều dầu mỡ', N'')
INSERT [dbo].[Mon_An] ([MaMonAn], [TenMonAn], [LoaiMonAn], [GiaTien], [TrangThai], [GhiChu], [MoTa], [HinhAnh]) VALUES (5, N'dsds', 1, N'èdf', N'1', N'dsd', N'sđs', N'')
INSERT [dbo].[Mon_An] ([MaMonAn], [TenMonAn], [LoaiMonAn], [GiaTien], [TrangThai], [GhiChu], [MoTa], [HinhAnh]) VALUES (6, N'ccc', 1, N'123', N'1', N'cdcsd', N'ds', N'fds')
SET IDENTITY_INSERT [dbo].[Mon_An] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [LoaiTaiKhoan], [TrangThai]) VALUES (2, N'cc', N'123', NULL, 1)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [LoaiTaiKhoan], [TrangThai]) VALUES (3, N'vinh2', N'123', NULL, 1)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [LoaiTaiKhoan], [TrangThai]) VALUES (4, N'vinh3', N'123', NULL, 0)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [LoaiTaiKhoan], [TrangThai]) VALUES (9, N'ad', N'123', NULL, 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[ThongTinSanh] ON 

INSERT [dbo].[ThongTinSanh] ([MaSanh], [LoaiSanh], [TenSanh], [SoLuongBan], [DonGia], [GhiChu], [TrangThai], [HinhAnh], [MoTa]) VALUES (1, N'Loai A', N'Kim Cương', 500, 50000000.0000, N'Không', NULL, NULL, NULL)
INSERT [dbo].[ThongTinSanh] ([MaSanh], [LoaiSanh], [TenSanh], [SoLuongBan], [DonGia], [GhiChu], [TrangThai], [HinhAnh], [MoTa]) VALUES (2, N'Loai B', N'Bạch Kim', 450, 45000000.0000, N'Không', NULL, NULL, NULL)
INSERT [dbo].[ThongTinSanh] ([MaSanh], [LoaiSanh], [TenSanh], [SoLuongBan], [DonGia], [GhiChu], [TrangThai], [HinhAnh], [MoTa]) VALUES (3, N'Loai C', N'Vàng', 400, 40000000.0000, N'Không', NULL, NULL, NULL)
INSERT [dbo].[ThongTinSanh] ([MaSanh], [LoaiSanh], [TenSanh], [SoLuongBan], [DonGia], [GhiChu], [TrangThai], [HinhAnh], [MoTa]) VALUES (4, N'Loai D', N'Bạc', 350, 35000000.0000, N'Không', NULL, NULL, NULL)
INSERT [dbo].[ThongTinSanh] ([MaSanh], [LoaiSanh], [TenSanh], [SoLuongBan], [DonGia], [GhiChu], [TrangThai], [HinhAnh], [MoTa]) VALUES (5, N'Loai E', N'Đồng', 300, 30000000.0000, N'Không', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThongTinSanh] OFF
ALTER TABLE [dbo].[ThongTinSanh] ADD  DEFAULT (N'Chưa Đặt Tên') FOR [TenSanh]
GO
ALTER TABLE [dbo].[ThongTinSanh] ADD  DEFAULT (N'Trống') FOR [GhiChu]
GO
ALTER TABLE [dbo].[Tiec] ADD  CONSTRAINT [DF__Tiec__TrangThai__5BE2A6F2]  DEFAULT (N'Chưa săn sàng') FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietDatTiec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatTiec_DatTiec] FOREIGN KEY([MaDatTiec])
REFERENCES [dbo].[DatTiec] ([MaDacTiec])
GO
ALTER TABLE [dbo].[ChiTietDatTiec] CHECK CONSTRAINT [FK_ChiTietDatTiec_DatTiec]
GO
ALTER TABLE [dbo].[ChiTietDatTiec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatTiec_GoiDichVu] FOREIGN KEY([MaGoiDichVu])
REFERENCES [dbo].[GoiDichVu] ([MaGoiDichVu])
GO
ALTER TABLE [dbo].[ChiTietDatTiec] CHECK CONSTRAINT [FK_ChiTietDatTiec_GoiDichVu]
GO
ALTER TABLE [dbo].[ChiTietDatTiec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatTiec_GoiDichVuKHChon] FOREIGN KEY([MaGoiDichVu])
REFERENCES [dbo].[GoiDichVuKHChon] ([MaGoiDichVuKHChon])
GO
ALTER TABLE [dbo].[ChiTietDatTiec] CHECK CONSTRAINT [FK_ChiTietDatTiec_GoiDichVuKHChon]
GO
ALTER TABLE [dbo].[ChiTietDatTiec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatTiec_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiTietDatTiec] CHECK CONSTRAINT [FK_ChiTietDatTiec_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietDatTiec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatTiec_ThongTinSanh] FOREIGN KEY([MaSanh])
REFERENCES [dbo].[ThongTinSanh] ([MaSanh])
GO
ALTER TABLE [dbo].[ChiTietDatTiec] CHECK CONSTRAINT [FK_ChiTietDatTiec_ThongTinSanh]
GO
ALTER TABLE [dbo].[ChiTietDatTiec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatTiec_ThucDon] FOREIGN KEY([MaThucDon])
REFERENCES [dbo].[ThucDon] ([MaThucDon])
GO
ALTER TABLE [dbo].[ChiTietDatTiec] CHECK CONSTRAINT [FK_ChiTietDatTiec_ThucDon]
GO
ALTER TABLE [dbo].[ChiTietDatTiec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatTiec_ThucDonKHChon] FOREIGN KEY([MaThucDon])
REFERENCES [dbo].[ThucDonKHChon] ([MaThucDon])
GO
ALTER TABLE [dbo].[ChiTietDatTiec] CHECK CONSTRAINT [FK_ChiTietDatTiec_ThucDonKHChon]
GO
ALTER TABLE [dbo].[ChiTietDatTiec]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatTiec_Tiec] FOREIGN KEY([MaTiec])
REFERENCES [dbo].[Tiec] ([MaTiec])
GO
ALTER TABLE [dbo].[ChiTietDatTiec] CHECK CONSTRAINT [FK_ChiTietDatTiec_Tiec]
GO
ALTER TABLE [dbo].[ChiTietGoiDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGoiDichVu_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DichVu] ([MaDichVu])
GO
ALTER TABLE [dbo].[ChiTietGoiDichVu] CHECK CONSTRAINT [FK_ChiTietGoiDichVu_DichVu]
GO
ALTER TABLE [dbo].[ChiTietGoiDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGoiDichVu_GoiDichVu] FOREIGN KEY([MaGoiDichVu])
REFERENCES [dbo].[GoiDichVu] ([MaGoiDichVu])
GO
ALTER TABLE [dbo].[ChiTietGoiDichVu] CHECK CONSTRAINT [FK_ChiTietGoiDichVu_GoiDichVu]
GO
ALTER TABLE [dbo].[ChiTietGoiDichVuKHChon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGoiDichVuKHChon_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DichVu] ([MaDichVu])
GO
ALTER TABLE [dbo].[ChiTietGoiDichVuKHChon] CHECK CONSTRAINT [FK_ChiTietGoiDichVuKHChon_DichVu]
GO
ALTER TABLE [dbo].[ChiTietGoiDichVuKHChon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGoiDichVuKHChon_GoiDichVuKHChon] FOREIGN KEY([MaGoiDichVuKHChon])
REFERENCES [dbo].[GoiDichVuKHChon] ([MaGoiDichVuKHChon])
GO
ALTER TABLE [dbo].[ChiTietGoiDichVuKHChon] CHECK CONSTRAINT [FK_ChiTietGoiDichVuKHChon_GoiDichVuKHChon]
GO
ALTER TABLE [dbo].[ChiTietThongTinSanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThongTinSanh_ThongTinSanh] FOREIGN KEY([MaSanh])
REFERENCES [dbo].[ThongTinSanh] ([MaSanh])
GO
ALTER TABLE [dbo].[ChiTietThongTinSanh] CHECK CONSTRAINT [FK_ChiTietThongTinSanh_ThongTinSanh]
GO
ALTER TABLE [dbo].[ChiTietThucDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThucDon_Mon_An] FOREIGN KEY([MaMonAn])
REFERENCES [dbo].[Mon_An] ([MaMonAn])
GO
ALTER TABLE [dbo].[ChiTietThucDon] CHECK CONSTRAINT [FK_ChiTietThucDon_Mon_An]
GO
ALTER TABLE [dbo].[ChiTietThucDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThucDon_ThucDon] FOREIGN KEY([MaThucDon])
REFERENCES [dbo].[ThucDon] ([MaThucDon])
GO
ALTER TABLE [dbo].[ChiTietThucDon] CHECK CONSTRAINT [FK_ChiTietThucDon_ThucDon]
GO
ALTER TABLE [dbo].[ChiTietThucDonKHChon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThucDonKHChon_Mon_An] FOREIGN KEY([MaMonAn])
REFERENCES [dbo].[Mon_An] ([MaMonAn])
GO
ALTER TABLE [dbo].[ChiTietThucDonKHChon] CHECK CONSTRAINT [FK_ChiTietThucDonKHChon_Mon_An]
GO
ALTER TABLE [dbo].[ChiTietThucDonKHChon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThucDonKHChon_ThucDonKHChon] FOREIGN KEY([MaThucDon])
REFERENCES [dbo].[ThucDonKHChon] ([MaThucDon])
GO
ALTER TABLE [dbo].[ChiTietThucDonKHChon] CHECK CONSTRAINT [FK_ChiTietThucDonKHChon_ThucDonKHChon]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD  CONSTRAINT [FK_DichVu_LoaiDichVu] FOREIGN KEY([LoaiDichVu])
REFERENCES [dbo].[LoaiDichVu] ([MaLoaiDichVu])
GO
ALTER TABLE [dbo].[DichVu] CHECK CONSTRAINT [FK_DichVu_LoaiDichVu]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DatTiec] FOREIGN KEY([MaDatTiec])
REFERENCES [dbo].[DatTiec] ([MaDacTiec])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DatTiec]
GO
ALTER TABLE [dbo].[LapBaoCao]  WITH CHECK ADD  CONSTRAINT [FK_LapBaoCao_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[LapBaoCao] CHECK CONSTRAINT [FK_LapBaoCao_NhanVien]
GO
ALTER TABLE [dbo].[Mon_An]  WITH CHECK ADD  CONSTRAINT [FK_Mon_An_LoaiMonAn] FOREIGN KEY([LoaiMonAn])
REFERENCES [dbo].[LoaiMonAn] ([MaLoaiMonAn])
GO
ALTER TABLE [dbo].[Mon_An] CHECK CONSTRAINT [FK_Mon_An_LoaiMonAn]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[ThongTinkhachHang]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinkhachHang_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[ThongTinkhachHang] CHECK CONSTRAINT [FK_ThongTinkhachHang_TaiKhoan]
GO
