use Quan_Ly_TKB_va_Diem_Danh
go



-----Them du lieu cho mon hoc -----
-----------------------------------
Insert dbo.Mon_Hoc(MaMon,TenMon,SoTC)
Values (N'A01',
        N'THDC',
         3)
Insert dbo.Mon_Hoc (MaMon,TenMon,SoTC)
Values (N'A02',
        N'CSDL',
         3)
Insert dbo.Mon_Hoc (MaMon,TenMon,SoTC)
Values (N'A03',
        N'PTTKTT',
         3)
		 Insert dbo.Mon_Hoc (MaMon,TenMon,SoTC)
Values (N'A04',
        N'KTCT',
         2)
		 Insert dbo.Mon_Hoc (MaMon,TenMon,SoTC)
Values (N'A05',
        N'XSTK',
         2)
-----Them du lieu cho khoa-----
-------------------------------
Insert dbo.Khoa (MaKhoa,TenKhoa,DTKhoa)
Values (N'MK01',
        N'CNTT',
		N'0123022')
Insert dbo.Khoa (MaKhoa,TenKhoa,DTKhoa)
Values (N'MK02',
        N'CNTT2',
		N'0123023')
Insert dbo.Khoa (MaKhoa,TenKhoa,DTKhoa)
Values (N'MK03',
        N'CNTT3',
		N'00123025')
Insert dbo.Khoa (MaKhoa,TenKhoa,DTKhoa)
Values (N'MK04',
        N'CNTT4',
		N'0123023')
Insert dbo.Khoa (MaKhoa,TenKhoa,DTKhoa)
Values (N'MK05',
        N'CNTT5',
		N'00123025')
-----Them du lieu cho phong-----
--------------------------------
Insert dbo.Phong (MaPhong,SucChua,ChucNang)
Values (N'P01',
		200,
		N'Ly thuyet')
Insert dbo.Phong (MaPhong,SucChua,ChucNang)
Values (N'P02',
		100,
		N'Thuc hanh')
		Insert dbo.Phong (MaPhong,SucChua,ChucNang)
Values (N'P03',
		150,
		N'Ly thuyet')
Insert dbo.Phong (MaPhong,SucChua,ChucNang)
Values (N'P04',
		200,
		N'Ly thuyet')
Insert dbo.Phong (MaPhong,SucChua,ChucNang)
Values (N'P05',
		100,
		N'Thuc hanh')

-----Them du lieu cho buoi hoc-----
-----------------------------------
Insert dbo.Buoi_Hoc (MaBuoi,TuTiet,DenTiet,Thu)
Values (N'B01',
        1,
		4,
		N'nam')
Insert dbo.Buoi_Hoc (MaBuoi,TuTiet,DenTiet,Thu)
Values (N'B02',
        6,
		9,
		N'hai')
Insert dbo.Buoi_Hoc (MaBuoi,TuTiet,DenTiet,Thu)
Values (N'B03',
        1,
		5,
		N'ba')
Insert dbo.Buoi_Hoc (MaBuoi,TuTiet,DenTiet,Thu)
Values (N'B04',
        6,
		10,
		N'sau')
		Insert dbo.Buoi_Hoc (MaBuoi,TuTiet,DenTiet,Thu)
Values (N'B05',
        1,
		4,
		N'nam')
----- Them du lieu cho lop-----
-------------------------------
Insert dbo.Lop (MaLop,SiSo,MaKhoa)
values (N'L01',
        120,
		N'MK01')
Insert dbo.Lop (MaLop,SiSo,MaKhoa)
values (N'L02',
        50,
		N'MK02')
Insert dbo.Lop (MaLop,SiSo,MaKhoa)
values (N'L03',
        87,
		N'MK03')
Insert dbo.Lop (MaLop,SiSo,MaKhoa)
values (N'L04',
        100,
		N'MK02')
Insert dbo.Lop (MaLop,SiSo,MaKhoa)
values (N'L05',
        97,
		N'MK03')
----- Them du lieu cho Chuc vu-----
-----------------------------------
Insert dbo.Chuc_Vu(MaChucVu,TenChucVu)
Values(N'BM01',
       N'Co van')
Insert dbo.Chuc_Vu(MaChucVu,TenChucVu)
Values(N'BM03',
       N'Truong Bo Mon')
Insert dbo.Chuc_Vu(MaChucVu,TenChucVu)
Values(N'BM02',
       N'GiangVien')
Insert dbo.Chuc_Vu(MaChucVu,TenChucVu)
Values(N'BM04',
       N'Pho Bo Mon')
-----them su lieu cho dia chi------
-----------------------------------
Insert dbo.Dia_Chi(SoNha,Duong,Phuong,Quan,ThanhPho)
Values (N'450',
        N'Le Van Viet',
        N'Tang Nhon Phu A',
        N'Quan 9',
        N'Thu Duc')
Insert dbo.Dia_Chi(SoNha,Duong,Phuong,Quan,ThanhPho)
Values (N'449',
        N'Le Van Viet',
        N'Tang Nhon Phu A',
        N'Quan 9',
        N'Thu Duc')
Insert dbo.Dia_Chi(SoNha,Duong,Phuong,Quan,ThanhPho)
Values (N'451',
        N'Le Van Viet',
        N'Tang Nhon Phu A',
        N'Quan 9',
        N'Thu Duc')
Insert dbo.Dia_Chi(SoNha,Duong,Phuong,Quan,ThanhPho)
Values (N'430',
        N'Le Van Viet',
        N'Tang Nhon Phu A',
        N'Quan 9',
        N'Thu Duc')
Insert dbo.Dia_Chi(SoNha,Duong,Phuong,Quan,ThanhPho)
Values (N'400',
        N'Le Van Viet',
        N'Tang Nhon Phu A',
        N'Quan 9',
        N'Thu Duc')
----- Them du lieu cho giang vien-----
--------------------------------------
Insert dbo.Giang_Vien (MaGV,HoTen,GioiTinh,MucLuong,SDT,SoNha,MaChucVu,MaKhoa)
Values (N'GV01',
       N'Pham A',
       N'Nam',
       10000,
       N'0123045',
	   N'400',
	   N'BM01',
	   N'MK01')
Insert dbo.Giang_Vien (MaGV,HoTen,GioiTinh,MucLuong,SDT,SoNha,MaChucVu,MaKhoa)
Values (N'GV02',
        N'Nguyen Thi B',
        N'Nu',
        10000,
        N'012045',
	    N'450',
	    N'BM01',
	    N'MK02')
Insert dbo.Giang_Vien (MaGV,HoTen,GioiTinh,MucLuong,SDT,SoNha,MaChucVu,MaKhoa)
Values (N'GV03',
        N'Pham B',
        N'Nam',
        100000,
		N'0123013',
		N'430',
	    N'BM02',
	    N'MK03')
Insert dbo.Giang_Vien (MaGV,HoTen,GioiTinh,MucLuong,SDT,SoNha,MaChucVu,MaKhoa)
Values (N'GV04',
        N'Pham B',
        N'Nam',
        30000,
		N'0123013',
		 N'450',
	   N'BM03',
	   N'MK03')
----- Them du lieu cho sinh vien-----
-------------------------------------
Insert dbo.Sinh_Vien (MSSV,HoTen,Email,NgaySinh,GioiTinh,SDT,MaLop,SoNha)
Values (N'61510A',
		N'Nguyen Van B',
		N'B@gmail.com',
		'20021002',
		N'Nam',
		N'01234322',
		N'L01',
		N'449'
		)
Insert dbo.Sinh_Vien (MSSV,HoTen,Email,NgaySinh,GioiTinh,SDT,MaLop,SoNha)
Values (N'61510B',
		N'Nguyen Van A',
		N'A@gmail.com',
		'20011013',
		N'Nam',
		N'01234324',
		N'L01',
		N'450'
		)
Insert dbo.Sinh_Vien (MSSV,HoTen,Email,NgaySinh,GioiTinh,SDT,MaLop,SoNha)
Values (N'61510C',
		N'Nguyen Thu C',
		N'C@gmail.com',
		'20031205',
		N'Nu',
		N'01234321',
		N'L01',
		N'430'
		)
Insert dbo.Sinh_Vien (MSSV,HoTen,Email,NgaySinh,GioiTinh,SDT,MaLop,SoNha)
Values (N'61510D',
		N'Pham D',
		N'D@gmail.com',
		'19990713',
		N'nam',
		N'01234328',
		N'L01',
		N'450'
		)
Insert dbo.Sinh_Vien (MSSV,HoTen,Email,NgaySinh,GioiTinh,SDT,MaLop,SoNha)
Values (N'61510E',
		N'Nguyen Tan H',
		N'H@gmail.com',
		'20021111',
		N'nam',
		N'01234327',
		N'L02',
		N'430'
		)
Insert dbo.Sinh_Vien (MSSV,HoTen,Email,NgaySinh,GioiTinh,SDT,MaLop,SoNha)
Values (N'61510F',
		N'Nguyen Van J',
		N'J@gmail.com',
		'20001001',
		N'nam',
		N'01234300',
		N'L03',
		N'451'
		)
Insert dbo.Sinh_Vien (MSSV,HoTen,Email,NgaySinh,GioiTinh,SDT,MaLop,SoNha)
Values (N'61510K',
		N'Pham Van K',
		N'K@gmail.com',
		'20001001',
		N'nam',
		N'012343212',
		N'L01',
		N'450'
		)
-----Them du lieu cho lop mon-----
----------------------------------
Insert dbo.Lop_Mon (MaLopMon, TenLopMon,NgayBatDau,NgayKetThuc,LopTruongMon,MaBuoi,MaMon,MaPhong,MaGV,HocKy,Nam)
Values (N'ML01',
        N'XSTK',
       '20210216',
       '20220621',
       N'Nguyen Van A',
       N'B01',
       N'A05',
       N'P01',
       N'GV02',
       N'Mot',
       2022)
Insert dbo.Lop_Mon (MaLopMon, TenLopMon,NgayBatDau,NgayKetThuc,  LopTruongMon,MaBuoi,MaMon,MaPhong,MaGV,HocKy,Nam)
Values (N'ML02',
        N'THDC',
        '20210216',
        '20220621',
        N'Nguyen Van J',
        N'B02',
        N'A01',
        N'P02',
        N'GV01',
        N'Mot',
        2022)
Insert dbo.Lop_Mon (MaLopMon, TenLopMon,NgayBatDau,NgayKetThuc,  LopTruongMon,MaBuoi,MaMon,MaPhong,MaGV,HocKy,Nam)
Values (N'ML03',
        N'CSDL',
       '20210216',
       '20220621',
        N'Nguyen Thu C',
        N'B01',
        N'A03',
        N'P02',
        N'GV02',
		N'Mot',
		2022)
Insert dbo.Lop_Mon (MaLopMon, TenLopMon,NgayBatDau,NgayKetThuc,  LopTruongMon,MaBuoi,MaMon,MaPhong,MaGV,HocKy,Nam)
Values (N'ML04',
		N'PTTKTT',
		'20210216',
		'20220621',
		N'Nguyen Thu C',
		N'B01',
		N'A03',
		N'P03',
		N'GV03',
		N'Mot',
		2022)
Insert dbo.Lop_Mon (MaLopMon, TenLopMon,NgayBatDau,NgayKetThuc,  LopTruongMon,MaBuoi,MaMon,MaPhong,MaGV,HocKy,Nam)
Values (N'ML05',
		N'KTCT',
		'20210216',
		'20220621',
		N'Nguyen Thu C',
		N'B01',
		'A04',
		N'P04',
		N'GV04',
		N'Hai',
		2022)
-----Them du lieu cho Thoi khoa bieu va diem danh -----
-------------------------------------------------------
--SinhVien a----
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB01',
		N'LyThuyet',
		'20220210',
		N'61510A',
		N'ML01',0)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB07',
		N'LyThuyet',
		'20220210',
		N'61510A',
		N'ML03',
		1)
		Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB08',
		N'LyThuyet',
		'20220210',
		N'61510A',
		N'ML04',0)
--SinhVien B
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB02',
		N'Thuc Hanh',
		'20220210',
		N'61510B',
		N'ML02',0)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB09',
		N'Thuc Hanh',
		'20220210',
		N'61510B',
		N'ML01',1)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB10',
		N'Thuc Hanh',
		'20220210',
		N'61510B',
		N'ML04',1)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB11',
		N'Thuc Hanh',
		'20220210',
		N'61510B',
		N'ML05'
		1)
--- Sinh vien c-----
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB03',
		N'LyThuyet',
		'20220210',
		N'61510C',
		N'ML03',0
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB012',
		N'LyThuyet',
		'20220210',
		N'61510C',
		N'ML01',1
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB013',
		N'LyThuyet',
		'20220210',
		N'61510C',
		N'ML02',1
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB14',
		N'LyThuyet',
		'20220210',
		N'61510C',
		N'ML04',1
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB15',
		N'LyThuyet',
		'20220210',
		N'61510C',
		N'ML05',1
)

--Sinh vien D---
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB04',
		N'LyThuyet',
		'20220210',
		N'61510D',
		N'ML02',1
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB16',
		N'LyThuyet',
		'20220210',
		N'61510D',
		N'ML01',0
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB17',
		N'LyThuyet',
		'20220210',
		N'61510D',
		N'ML03',1
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMonDiemDanh)
Values (N'TKB18',
		N'LyThuyet',
		'20220210',
		N'61510D',
		N'ML04',1
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB19',
		N'LyThuyet',
		'20220210',
		N'61510D',
		N'ML05',1
)
----Sinh vien E-------
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB05',
		N'LyThuyet',
		'20220210',
		N'61510E',
		N'ML01',0
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB20',
		N'LyThuyet',
		'20220210',
		N'61510E',
		N'ML05',1
)
--Sinh Vien F---------
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB06',
		N'LyThuyet',
		'20220210',
		N'61510F',
		N'ML02',
		1
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB21',
		N'LyThuyet',
		'20220210',
		N'61510F',
		N'ML01',
		1
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB22',
		N'LyThuyet',
		'20220210',
		N'61510F',
		N'ML05',
		0
)
Insert Thoi_Khoa_Bieu_Diem_Danh (MaTKB,MoTa,NgayDuyet,MSSV,MaLopMon,DiemDanh)
Values (N'TKB023',
		N'Ly Thuyet',
		'20220210',
		N'61510B',
		N'ML02',
		1)
--Lenh xoa toan bo bang (dk :Where,Update set(cap nhat du lieu))
delete  from dbo.Sinh_Vien 
delete dbo.Buoi_Hoc
delete dbo.Chuc_Vu
delete dbo.Dia_Chi
delete dbo.Giang_Vien
delete dbo.Phong
delete dbo.Lop
delete dbo.Lop_Mon
delete dbo.Thoi_Khoa_Bieu_Diem_Danh 
delete dbo.Khoa
delete dbo.Mon_Hoc
--Update--
----------
UPDATE dbo.Sinh_Vien SET Email = 'K@gmail.com'
where MSSV ='61510K' 
UpDate dbo.Chuc_Vu Set TenChucVu='Truong Bo Mon'
where MaChucVu ='BM03'

