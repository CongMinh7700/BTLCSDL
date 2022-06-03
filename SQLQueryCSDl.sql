create database Quan_Ly_TKB_va_Diem_Danh
go
use Quan_Ly_TKB_va_Diem_Danh
go
Create table Mon_Hoc(
        MaMon varchar(20) not null,
		TenMon varchar (20) not null,
		SoTC  integer,
		primary key(MaMon),
);
go

Create table Khoa(
     MaKhoa varchar(20) not null,
	 TenKhoa varchar(20),
	 DTKhoa varchar(50),
	 primary key(MaKhoa)
);
go

Create table Phong(
     MaPhong varchar(20) not null ,
	 SucChua integer,
	 ChucNang varchar(20),
	 primary key (MaPhong)
);
go
Create table Buoi_Hoc(
	MaBuoi varchar(20) not null,
	TuTiet integer,
	DenTiet integer,
	Thu varchar(20),
	primary key (MaBuoi)
);
go
Create table Lop(
     MaLop varchar(20) not null,
	 SiSo integer ,
	 MaKhoa varchar(20),
	 primary key(MaLop),
	 Foreign key (MaKhoa) references Khoa(MaKhoa)
);
go
Create table Chuc_Vu(
     MaChucVu varchar(20) not null,
	 TenChucVu varchar(20),
	 primary key(MaChucVu)
);
go
Create table Dia_Chi(
      SoNha varchar(20) not null ,
	  Duong nvarchar(100),
	  Phuong nvarchar(100),
	  Quan nvarchar(100),
	  ThanhPho nvarchar(100),
	   primary key(SoNha)
);
go
Create table Sinh_Vien(
      MSSV varchar(20) not null,
      HoTen varchar(50) not null,
	  Email varchar(100),
	  NgaySinh date,
	  GioiTinh char(10),
	  SDT varchar(50),
	  MaLop varchar(20),
	  SoNha varchar(20),
	  primary key(MSSV),
	  Foreign key (MaLop) references Lop(MaLop),
	  Foreign key (SoNha) references  Dia_Chi(SoNha)
);
go
Create table Giang_Vien(
        MaGV varchar(20) not null,
		HoTen varchar(50) not null ,
		GioiTinh char(10),
		MucLuong real,
		SDT varchar(50),
		SoNha varchar(20),
		MaChucVu varchar (20),
		MaKhoa varchar (20),
		  primary key(MaGV),
	Foreign key (SoNha) references Dia_Chi(SoNha),
	  Foreign key (MaChucVu) references Chuc_Vu(MaChucVu),
	  Foreign key (MaKhoa) references Khoa(MaKhoa)
	 
);
go
Create table Lop_Mon(
      MaLopMon varchar(20),
	  TenLopMon varchar(20),
	  NgayBatDau date,
	  NgayKetThuc date,
	  MaGV varchar(20),
	  MaBuoi varchar(20),
	  MaMon varchar(20),
	  MaPhong varchar(20),
      HocKy varchar(20),
      Nam integer,
	  LopTruongMon varchar(50),
	  primary key (MaLopMon),
	  Foreign key (MaBuoi) references Buoi_Hoc(MaBuoi),
	  Foreign key (MaMon) references Mon_Hoc(MaMon),
	  Foreign key (MaPhong) references Phong(MaPhong),
	  Foreign key (MaGV) references Giang_Vien(MaGV)
);
go
Create table Thoi_Khoa_Bieu_Diem_Danh(
      MaTKB varchar(20) not null ,
	  MoTa nvarchar(200),
	  NgayDuyet Date,
	  MSSV varchar(20),
	  MaLopMon varchar(20),
	  MaBuoi varchar(20),
	  DiemDanh bit
	  primary key(MaTKB),
      Foreign key (MSSV) references Sinh_Vien(MSSV),
	  Foreign key (MaLopMon) references Lop_Mon(MaLopMon),
	    Foreign key (MaBuoi) references Buoi_Hoc(MaBuoi)

);
go







