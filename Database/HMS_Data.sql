use HMS;

/*==============================================================*/
/* Table: BAC_SI                                                */
/*==============================================================*/
insert into BAC_SI (IDBS, HoTenBS, GioiTinhBS, NgaySinhBS, DiaChiBS, SdtBS, Email, ChucVu, ChuyenMon) values
	();

/*==============================================================*/
/* Table: BENH_AN                                               */
/*==============================================================*/
insert into BENH_AN (IDBA, NgayKham, ChanDoan, IDBN, SoThe, IDBS) values
	();

/*==============================================================*/
/* Table: BENH_NHAN                                             */
/*==============================================================*/
insert into BENH_NHAN (IDBN, HoTenBN, GioiTinhBN, NgaySinhBN, DiaChiBN, SdtBN) values
	();

/*==============================================================*/
/* Table: BHYT                                                  */
/*==============================================================*/
insert into BHYT (SoThe, TuNgay, DenNgay, NoiDangKyKCB, MucHuong, IDBA) values
	();

/*==============================================================*/
/* Table: CHI_TIET_DON_THUOC                                    */
/*==============================================================*/
insert into CHI_TIET_DON_THUOC (SoDon, IDThuoc, SoLuong, CachDung) values
	();

/*==============================================================*/
/* Table: DON_THUOC                                             */
/*==============================================================*/
insert into DON_THUOC (SoDon, IDBS, IDBA, NgayLapDon) values
	();

/*==============================================================*/
/* Table: HINH_ANH_Y_KHOA                                       */
/*==============================================================*/
insert into HINH_ANH_Y_KHOA (IDAnh, IDBA, NgayTao, DuongDan, MoTaAnh) values
	();

/*==============================================================*/
/* Table: KET_QUA_XET_NGHIEM                                    */
/*==============================================================*/
insert into KET_QUA_XET_NGHIEM (IDKetQua, IDBA, IDXetNghiem, NgayThucHien, ChiTietKetQua) values
	();

/*==============================================================*/
/* Table: LOAI_THUOC                                            */
/*==============================================================*/
insert into LOAI_THUOC (IDLoaiThuoc, TenLoaiThuoc) values
	();

/*==============================================================*/
/* Table: TAI_KHOAN                                             */
/*==============================================================*/
insert into TAI_KHOAN (IDTaiKhoan, IDBS, TenDangNhap, MatKhau, Quyen) values
	();

/*==============================================================*/
/* Table: THUOC                                                 */
/*==============================================================*/
insert into THUOC (IDThuoc, IDLoaiThuoc, TenThuoc, ThanhPhan, DonViThuoc, DoiTuongSuDung, HDSD, NSX, HSD, SLTonKho) values
	();

/*==============================================================*/
/* Table: XET_NGHIEM                                            */
/*==============================================================*/
insert into XET_NGHIEM (IDXetNghiem, TenXetNghiem, MoTaXetNghiem) values
	();
