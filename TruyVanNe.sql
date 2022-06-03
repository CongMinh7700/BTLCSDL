use Quan_Ly_TKB_va_Diem_Danh
go
-----1.Vi du Lay thong tin  ------
--------------------------------
Select * from dbo.Sinh_Vien
Select * from dbo.Mon_Hoc
Select * from dbo.Giang_Vien
----- 2.Vi du Doi ten cot ------
------------------------------
Select MSSV AS 'MASO' ,HoTen AS 'TEN' from dbo.Sinh_Vien
----- 3.lay ho ten mssv va dia chi cua sinh vien------
----------------------------------------------------
Select SV.MSSV ,SV.HoTen,L.* from dbo.Sinh_Vien AS SV ,dbo.Dia_Chi AS L
------ 4.Lay ten Giang Vien Luong >10000000 va gioi tinh la nu-----
--------------------------------------------------------------------
Select GV.HoTen ,GV.MucLuong from dbo.Giang_Vien AS GV
Where MucLuong>100 and GioiTinh ='nu'
------- 5.Lay ra ten va ngay sinh cua sinh vien >20 tuoi-------
-----------------------------------------------------------
Select SV.HoTen ,SV.NgaySinh from dbo.Sinh_Vien AS SV
where year(GetDate())-year(NgaySinh) >20
-------6.Dem so luong sinh vien------
-----------------------------------
Select count(*) AS N'So luong SV' from dbo.Sinh_Vien
-------7.Lay ra HoTen,MaGV la truong bo mon------
-----------------------------------------------
Select GV.HoTen ,GV.MaGV ,CV.MaChucVu from Giang_Vien As GV,Chuc_Vu AS CV
where GV.MaChucVu = 'BM03' and GV.MaChucVu = CV.MaChucVu
-------8.Xuat thong tin giao vien bat dau bang chu P --------
----------------------------------------------------------
Select * from dbo.Giang_Vien
Where  HoTen like 'P%'
-------9.Xuat thong tin giang vien sang mot bang khac -------
-----------------------------------------------------------
Select * into GV
from dbo.Giang_Vien
------10.Xuat thong tin giang vien sang mot bang khac co dieu kien------
----------------------------------------------------------------------
Select GV.MaGV,GV.HoTen into TruongBoMon
from dbo.Giang_Vien AS GV,dbo.Chuc_Vu AS CV
where CV.MaChucVu= 'BM03'
and CV.MaChucVu= GV.MaChucVu
------11.Xuat thong ten khoa,ma khoa  va so luong giang vien trong do------
------------------------------------------------------------------------
Select K.MaKhoa,K.TenKhoa ,Count(GV.MaGV) As 'So Luong'
from Khoa AS K,Giang_Vien AS GV
where  GV.MaKhoa = K.MaKhoa
group by TenKhoa,K.MaKhoa
------12.Xuat ra luon trung binh cua cac giang vien------
-------------------------------------------------------
select MucLuong AS 'Luong Trung Binh'
from dbo.Giang_Vien
where MucLuong>((select Sum(MucLuong) from dbo.Giang_Vien)/(select count(*) from dbo.Giang_Vien)) 
------ 13.Xuat thong ten khoa,ma khoa  va so luong giang vien voi muc luong >1000------
------------------------------------------------------------------------------------
Select K.MaKhoa,K.TenKhoa ,GV.HoTen,GV.MucLuong, Count(GV.MaGV) As 'So Luong'
from Khoa AS K,Giang_Vien AS GV
where  GV.MaKhoa = K.MaKhoa and
       GV.GioiTinh='Nu'
group by K.TenKhoa,K.MaKhoa,GV.MucLuong,GV.HoTen
having GV.MucLuong>3000
------14.Xuat ra ten top 5 sinh vien dau tien-------
-------------------------------------------------
select  top 5 *
from dbo.Sinh_Vien
------15.Xuat ra 30% sinh vien co trong danh sach -----
-------------------------------------------------------
select  top 30 percent *
from dbo.Sinh_Vien
------16. Lay ra ho ten cua sinh vien trong khoang tuoi tu 20-22------
-------------------------------------------------------------------
select HoTen,MSSV,year(getdate())-year(NgaySinh) AS Tuoi
from dbo.Sinh_Vien
where year(getdate())-year(NgaySinh) between 20 and 22
----- 17.Lay ra sinh vien theo ma so-------
----------------------------------------
select * 
from dbo.Sinh_Vien
where MSSV IN ('61510A','61510B','61510E')
------18.Sap xep Sinh vien giam dan theo ngay sinh--------
-------------------------------------------------------
select * 
from dbo.Sinh_Vien
order by NgaySinh DESC
------19.Tim Sinh Vien Trung ngay sinh voi Nguyen Van J------
----------------------------------------------------------
select b.*
from dbo.Sinh_Vien a,dbo.Sinh_Vien b
Where  a.HoTen='Nguyen Van J' and  
      a.NgaySinh=b.NgaySinh  and 
	  a.MSSV<>b.MSSV
-----20.Lay ra sinh vien hoc nhieu mon nhat----
-------------------------------------------
select  top 1 count(TKB.MaTKB) AS SoMonHoc  ,SV.HoTen,SV.MSSV,SV.NgaySinh 
from dbo.Sinh_Vien AS SV,dbo.Thoi_Khoa_Bieu_Diem_Danh AS TKB
where SV.MSSV=TKB.MSSV 
Group by SV.HoTen,SV.MSSV,SV.NgaySinh 
order by count(TKB.MaTKB) DESC

--------21.Lay Ra sinh vien hoc it mon nhat----
--------------------------------------------
select  top 1 count(TKB.MaTKB) AS SoMonHoc  ,SV.HoTen,SV.MSSV,SV.NgaySinh 
from dbo.Sinh_Vien AS SV,dbo.Thoi_Khoa_Bieu_Diem_Danh AS TKB
where SV.MSSV=TKB.MSSV 
Group by SV.HoTen,SV.MSSV,SV.NgaySinh 
order by count(TKB.MaTKB) ASC	
--------22.Lay ra Sinh vien diem danh------
-------------------------------------------
Select SV.HoTen,SV.MSSV 
from dbo.Sinh_Vien AS SV,dbo.Thoi_Khoa_Bieu_Diem_Danh AS TKB,dbo.Lop_Mon AS lm
where SV.MSSV =TKB.MSSV and TKB.DiemDanh=1  and TKB.MaLopMon=lm.MaLopMon and lm.MaLopMon ='ML01'
group by SV.HoTen,SV.MSSV 
-------232.Lay ra sinh vien ko co hoc vao lop -----
--------------------------------------------------
Select SV.HoTen,SV.MSSV 
from dbo.Sinh_Vien AS SV,dbo.Thoi_Khoa_Bieu_Diem_Danh AS TKB,dbo.Lop_Mon AS lm
where SV.MSSV =TKB.MSSV and TKB.DiemDanh=0  and TKB.MaLopMon=lm.MaLopMon and lm.MaLopMon ='ML01'
group by SV.HoTen,SV.MSSV 

