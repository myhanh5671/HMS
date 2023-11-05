create database HMS;
use HMS;

/*==============================================================*/
/* Table: NHAN_VIEN                                                */
/*==============================================================*/
create table NHAN_VIEN 
(
   IDNV                 char(8)                        not null,
   HoTenNV              varchar(45)                    not null,
   GioiTinhNV           boolean                        not null,
   NgaySinhNV           date                           not null,
   DiaChiNV             varchar(100)                   not null,
   SdtNV                char(10)                       not null,
   Email                varchar(45)                    not null,
   ChucVu               varchar(45)                    not null,
   ChuyenMon            varchar(100)                   not null,
   constraint PK_NHANVIEN primary key (IDNV)
);

/*==============================================================*/
/* Table: BENH_AN                                               */
/*==============================================================*/
create table BENH_AN 
(
   IDBA                 char(10)                       not null,
   NgayKham             date                           not null,
   ChanDoan             varchar(100)                   not null,
   IDBN                 char(10)                       not null,
   SoThe                char(10)                       null,
   IDNV                 char(8)                        not null,
   constraint PK_BENHAN primary key (IDBA)
);

/*==============================================================*/
/* Table: BENH_NHAN                                             */
/*==============================================================*/
create table BENH_NHAN 
(
   IDBN                 char(10)                       not null,
   HoTenBN              varchar(45)                    not null,
   GioiTinhBN           boolean                        not null,
   NgaySinhBN           date                           not null,
   DiaChiBN             varchar(100)                   not null,
   SdtBN                char(10)                       not null,
   constraint PK_BENHNHAN primary key (IDBN)
);

/*==============================================================*/
/* Table: BHYT                                                  */
/*==============================================================*/
create table BHYT 
(
   SoThe                char(10)                       not null,
   TuNgay               date                           not null,
   DenNgay              date                           not null,
   NoiDangKyKCB         varchar(45)                    not null,
   MucHuong         	int                            not null,
   IDBA                 char(10)                       not null,
   constraint PK_BHYT primary key (SoThe)
);

/*==============================================================*/
/* Table: CHI_TIET_DON_THUOC                                    */
/*==============================================================*/
create table CHI_TIET_DON_THUOC 
(
   SoDon                char(10)                       not null,
   IDThuoc              char(4)                        not null,
   SoLuong              int                            not null,
   CachDung             varchar(45)                    not null,
   constraint PK_CHITIETDONTHUOC primary key (SoDon, IDThuoc)
);

/*==============================================================*/
/* Table: DON_THUOC                                             */
/*==============================================================*/
create table DON_THUOC 
(
   SoDon                char(10)                       not null,
   IDNV                 char(8)                        not null,
   IDBA                 char(10)                       not null,
   NgayLapDon           date                           not null,
   constraint PK_DONTHUOC primary key (SoDon)
);

/*==============================================================*/
/* Table: HINH_ANH_Y_KHOA                                       */
/*==============================================================*/
create table HINH_ANH_Y_KHOA 
(
   IDAnh                char(10)                       not null,
   IDNV                 char(8)                        not null,
   IDBA                 char(10)                       not null,
   NgayTao              date                           not null,
   DuongDan             varchar(100)                   not null,
   MoTaAnh              varchar(100)                   not null,
   constraint PK_HINHANHYKHOA primary key (IDAnh)
);

/*==============================================================*/
/* Table: KET_QUA_XET_NGHIEM                                    */
/*==============================================================*/
create table KET_QUA_XET_NGHIEM 
(
   IDKetQua             char(10)                       not null,
   IDNV                 char(8)                        not null,
   IDBA                 char(10)                       not null,
   IDXetNghiem          char(4)                        not null,
   NgayThucHien         date                           not null,
   ChiTietKetQua        varchar(100)                   not null,
   constraint PK_KETQUAXETNGHIEM primary key (IDKetQua)
);

/*==============================================================*/
/* Table: LOAI_THUOC                                            */
/*==============================================================*/
create table LOAI_THUOC 
(
   IDLoaiThuoc          char(4)                        not null,
   TenLoaiThuoc         varchar(45)                    not null,
   constraint PK_LOAITHUOC primary key (IDLoaiThuoc)
);

/*==============================================================*/
/* Table: TAI_KHOAN                                             */
/*==============================================================*/
create table TAI_KHOAN 
(
   IDTaiKhoan           char(8)                        not null,
   IDNV                 char(8)                        not null,
   TenDangNhap          varchar(20)                    not null,
   MatKhau	            char(8)                        not null,
   Quyen                varchar(45)                    not null,
   constraint PK_TAIKHOAN primary key (IDTaiKhoan)
);

/*==============================================================*/
/* Table: THUOC                                                 */
/*==============================================================*/
create table THUOC 
(
   IDThuoc              char(4)                        not null,
   IDLoaiThuoc          char(4)                        not null,
   TenThuoc             varchar(45)                    not null,
   ThanhPhan            varchar(200)                   not null,
   DonViThuoc           varchar(20)                    not null,
   DoiTuongSuDung       varchar(45)                    not null,
   HDSD                 varchar(200)                   not null,
   NSX          		date                           not null,
   HSD            		date                           not null,
   SLTonKho        		int                            not null,
   constraint PK_THUOC primary key (IDThuoc)
);

/*==============================================================*/
/* Table: XET_NGHIEM                                            */
/*==============================================================*/
create table XET_NGHIEM 
(
   IDXetNghiem          char(4)                        not null,
   TenXetNghiem         varchar(45)                    not null,
   MoTaXetNghiem        varchar(100)                   not null,
   constraint PK_XETNGHIEM primary key (IDXetNghiem)
);

alter table BENH_AN
   add constraint FK_BENHAN_BHYT foreign key (SOTHE) references BHYT (SOTHE);

alter table BENH_AN
   add constraint FK_BENHAN_BENHNHAN foreign key (IDBN) references BENH_NHAN (IDBN);

alter table BENH_AN
   add constraint FK_BENHAN_NHANVIEN foreign key (IDNV) references NHAN_VIEN (IDNV);

alter table BHYT
   add constraint FK_BHYT_BENHAN foreign key (IDBA) references BENH_AN (IDBA);

alter table CHI_TIET_DON_THUOC
   add constraint FK_CTDT_DONTHUOC foreign key (SODON) references DON_THUOC (SODON);

alter table CHI_TIET_DON_THUOC
   add constraint FK_CTDT_THUOC foreign key (IDTHUOC) references THUOC (IDTHUOC);

alter table DON_THUOC
   add constraint FK_DONTHUOC_BENHAN foreign key (IDBA) references BENH_AN (IDBA);

alter table DON_THUOC
   add constraint FK_DONTHUOC_NHANVIEN foreign key (IDNV) references NHAN_VIEN (IDNV);

alter table HINH_ANH_Y_KHOA
   add constraint FK_HAYK_BENHAN foreign key (IDBA) references BENH_AN (IDBA);

alter table HINH_ANH_Y_KHOA
   add constraint FK_HAYK_NHANVIEN foreign key (IDNV) references NHAN_VIEN (IDNV);

alter table KET_QUA_XET_NGHIEM
   add constraint FK_KQXN_BENHAN foreign key (IDBA) references BENH_AN (IDBA);

alter table KET_QUA_XET_NGHIEM
   add constraint FK_KQXN_NHANVIEN foreign key (IDNV) references NHAN_VIEN (IDNV);

alter table KET_QUA_XET_NGHIEM
   add constraint FK_KQXN_XETNGHIEM foreign key (IDXETNGHIEM) references XET_NGHIEM (IDXETNGHIEM);

alter table TAI_KHOAN
   add constraint FK_TAIKHOAN_NHANVIEN foreign key (IDNV) references NHAN_VIEN (IDNV);

alter table THUOC
   add constraint FK_THUOC_LOAITHUOC foreign key (IDLOAITHUOC) references LOAI_THUOC (IDLOAITHUOC);

/*==============================================================*/
/* Procedure:                                                   */
/*==============================================================*/

/*==============================================================*/
/* Function:                                                    */
/*==============================================================*/

/*==============================================================*/
/* Cusor:                                                       */
/*==============================================================*/

/*==============================================================*/
/* Trigger:                                                     */
/*==============================================================*/

/*==============================================================*/
/* Transaction:                                                 */
/*==============================================================*/

