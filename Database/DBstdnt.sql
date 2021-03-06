USE [master]
GO
/****** Object:  Database [DBstdnt]    Script Date: 2.05.2022 02:51:06 ******/
CREATE DATABASE [DBstdnt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBstdnt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBstdnt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBstdnt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBstdnt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBstdnt] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBstdnt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBstdnt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBstdnt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBstdnt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBstdnt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBstdnt] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBstdnt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBstdnt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBstdnt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBstdnt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBstdnt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBstdnt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBstdnt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBstdnt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBstdnt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBstdnt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBstdnt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBstdnt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBstdnt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBstdnt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBstdnt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBstdnt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBstdnt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBstdnt] SET RECOVERY FULL 
GO
ALTER DATABASE [DBstdnt] SET  MULTI_USER 
GO
ALTER DATABASE [DBstdnt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBstdnt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBstdnt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBstdnt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBstdnt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBstdnt] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBstdnt', N'ON'
GO
ALTER DATABASE [DBstdnt] SET QUERY_STORE = OFF
GO
USE [DBstdnt]
GO
/****** Object:  Table [dbo].[TBLBASVURU]    Script Date: 2.05.2022 02:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLBASVURU](
	[BasvuruID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciID] [int] NULL,
	[DersID] [int] NULL,
 CONSTRAINT [PK_TBLBASVURU] PRIMARY KEY CLUSTERED 
(
	[BasvuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLDERSLER]    Script Date: 2.05.2022 02:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLDERSLER](
	[DersID] [int] IDENTITY(1,1) NOT NULL,
	[DersAd] [varchar](50) NULL,
	[DersMinKontenjan] [tinyint] NULL,
	[DersMaxKontenjan] [tinyint] NULL,
 CONSTRAINT [PK_TBLDERSLER] PRIMARY KEY CLUSTERED 
(
	[DersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLOGRENCI]    Script Date: 2.05.2022 02:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLOGRENCI](
	[OgrenciID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciAd] [varchar](50) NULL,
	[OgrenciSoyad] [varchar](50) NULL,
	[OgrenciNo] [varchar](10) NULL,
	[OgrenciMail] [varchar](500) NULL,
	[OgrenciSifre] [varchar](10) NULL,
	[OgrenciBakiye] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TBLOGRENCİ] PRIMARY KEY CLUSTERED 
(
	[OgrenciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLOGRETMEN]    Script Date: 2.05.2022 02:51:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLOGRETMEN](
	[OgretmenID] [int] IDENTITY(1,1) NOT NULL,
	[OgretmenAdSoyad] [varchar](50) NULL,
	[OgretmenBrans] [int] NULL,
 CONSTRAINT [PK_TBLOGRETMEN] PRIMARY KEY CLUSTERED 
(
	[OgretmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBLBASVURU] ON 

INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (1, 1, 2)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (2, 1, 5)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (3, 1, 7)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (4, 2, 3)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (5, 2, 15)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (6, 2, 4)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (7, 3, 7)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (8, 3, 6)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (9, 3, 16)
INSERT [dbo].[TBLBASVURU] ([BasvuruID], [OgrenciID], [DersID]) VALUES (10, 4, 4)
SET IDENTITY_INSERT [dbo].[TBLBASVURU] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLDERSLER] ON 

INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (1, N'Fizik 1', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (2, N'Fizik 2', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (3, N'Matematik 1', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (4, N'Matematik 2', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (5, N'Veri Yapıları', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (6, N'Nesneye Dayalı Programlama', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (7, N'Diferansiyel Denklemler', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (8, N'Lineer Cebir', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (9, N'BİLGİSAYAR MÜHENDİSLİĞİNE GİRİŞ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (10, N'TÜRK DİLİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (11, N'PROGRAMLAMAYA GİRİŞ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (12, N'OLASILIK VE İSTATİSTİK', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (13, N'WEB TEKNOLOJİLERİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (14, N'ATATÜRK İLKELERİ VE İNKILÂP TARİHİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (15, N'SAYISAL ANALİZ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (16, N'VERİTABANI YÖNETİM SİSTEMLERİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (17, N'MANTIK DEVRELERİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (18, N'ELEKTRONİK DEVRELER VE LABORATUVARI', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (19, N'AYRIK İŞLEMSEL YAPILAR', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (20, N'MİKROİŞLEMCİLİ SİSTEMLER VE LABORATUVARI', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (21, N'NESNE YÖNELİMLİ ANALİZ VE TASARIM', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (22, N'PROGRAMLAMA DİLLERİNİN PRENSİPLERİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (23, N'BİLGİSAYAR ORGANİZASYONU', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (24, N'İŞLETİM SİSTEMLERİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (25, N'İŞARETLER VE SİSTEMLER', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (26, N'VERİ İLETİŞİMİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (27, N'WEB PROGRAMLAMA', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (28, N'NESNELERİN İNTERNETİ VE UYGULAMALARI', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (29, N'BİLGİSAYAR AĞLARI', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (30, N'YAZILIM MÜHENDİSLİĞİ', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (31, N'YAPAY ZEKA', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (32, N'ALGORİTMA ANALİZİ VE TASARIMI', 10, 30)
INSERT [dbo].[TBLDERSLER] ([DersID], [DersAd], [DersMinKontenjan], [DersMaxKontenjan]) VALUES (33, N'SİSTEM PROGRAMLAMA', 10, 30)
SET IDENTITY_INSERT [dbo].[TBLDERSLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLOGRENCI] ON 

INSERT [dbo].[TBLOGRENCI] ([OgrenciID], [OgrenciAd], [OgrenciSoyad], [OgrenciNo], [OgrenciMail], [OgrenciSifre], [OgrenciBakiye]) VALUES (1, N'Ahmet', N'Can', N'B147258360', N'B147258369@gmail.com', N'159750', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OgrenciID], [OgrenciAd], [OgrenciSoyad], [OgrenciNo], [OgrenciMail], [OgrenciSifre], [OgrenciBakiye]) VALUES (2, N'Mehmet', N'Turan', N'B211346778', N'B211346778@gmail.com', N'789244', CAST(140.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OgrenciID], [OgrenciAd], [OgrenciSoyad], [OgrenciNo], [OgrenciMail], [OgrenciSifre], [OgrenciBakiye]) VALUES (3, N'Yaren', N'Irmak', N'B456789123', N'B456789123@gmail.com', N'789452', CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OgrenciID], [OgrenciAd], [OgrenciSoyad], [OgrenciNo], [OgrenciMail], [OgrenciSifre], [OgrenciBakiye]) VALUES (4, N'Yağmur', N'Yılmaz', N'B215487365', N'B215487365@gmail.com', N'648319', CAST(150.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[TBLOGRENCI] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLOGRETMEN] ON 

INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (1, N'Mustafa Kara', 1)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (2, N'Sevinç Ak', 2)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (3, N'Cihan Akarpınar', 3)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (4, N'Mehmetcan Akay', 4)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (5, N'Servet Akçay', 5)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (6, N'Berker Akkoyun', 6)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (7, N'Senem Akyıldız', 7)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (8, N'Ömer Alparslan', 8)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (9, N'Buğra Kaya', 9)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (10, N'Mazlum Altan', 10)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (11, N'Fethullah  Altınöz', 11)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (12, N'Merve Altıok', 12)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (13, N'Ece Altıparmak', 13)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (14, N'Nebahat Ansen', 14)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (15, N'Şükrü Arıcan', 15)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (16, N'Yasin Arpacı', 16)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (17, N'Sevtap Paksoy', 17)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (18, N'Zeynep Nihan', 18)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (19, N'Osman Aysan', 19)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (20, N'Demircan Baydil', 20)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (21, N'Kubilay Barış Begiç', 21)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (22, N'Hulki Çağlar', 22)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (23, N'Sena Demırören', 23)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (24, N'Enver Durmuş', 24)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (25, N'Alphan Egeli', 25)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (26, N'Hüseyin Erbay', 26)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (27, N'Selman Erkoç', 27)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (28, N'Berrak Hamarat', 28)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (29, N'Sude İlgezdi', 29)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (30, N'Dursun İşgören', 30)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (31, N'Şahan Kalfaoğlu', 31)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (32, N'Gül Karabulut', 32)
INSERT [dbo].[TBLOGRETMEN] ([OgretmenID], [OgretmenAdSoyad], [OgretmenBrans]) VALUES (33, N'Emir Doğan', 33)
SET IDENTITY_INSERT [dbo].[TBLOGRETMEN] OFF
GO
ALTER TABLE [dbo].[TBLOGRENCI] ADD  CONSTRAINT [DF_TBLOGRENCİ_OgrenciBakiye]  DEFAULT ((0)) FOR [OgrenciBakiye]
GO
ALTER TABLE [dbo].[TBLBASVURU]  WITH CHECK ADD  CONSTRAINT [FK_TBLBASVURU_TBLDERSLER] FOREIGN KEY([DersID])
REFERENCES [dbo].[TBLDERSLER] ([DersID])
GO
ALTER TABLE [dbo].[TBLBASVURU] CHECK CONSTRAINT [FK_TBLBASVURU_TBLDERSLER]
GO
ALTER TABLE [dbo].[TBLBASVURU]  WITH CHECK ADD  CONSTRAINT [FK_TBLBASVURU_TBLOGRENCİ] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[TBLOGRENCI] ([OgrenciID])
GO
ALTER TABLE [dbo].[TBLBASVURU] CHECK CONSTRAINT [FK_TBLBASVURU_TBLOGRENCİ]
GO
ALTER TABLE [dbo].[TBLOGRETMEN]  WITH CHECK ADD  CONSTRAINT [FK_TBLOGRETMEN_TBLDERSLER] FOREIGN KEY([OgretmenBrans])
REFERENCES [dbo].[TBLDERSLER] ([DersID])
GO
ALTER TABLE [dbo].[TBLOGRETMEN] CHECK CONSTRAINT [FK_TBLOGRETMEN_TBLDERSLER]
GO
USE [master]
GO
ALTER DATABASE [DBstdnt] SET  READ_WRITE 
GO
