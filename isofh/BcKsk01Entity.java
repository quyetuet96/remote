package vn.isofh.his.dao.model;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;
import vn.isofh.common.converter.persistence.LongAesConverter;
import vn.isofh.common.converter.persistence.LongSetAesConverter;
import vn.isofh.common.converter.persistence.StringAesConverter;
import vn.isofh.his.dao.model.base.NbChanDoanBenh;
import vn.isofh.his.dao.model.base.NbDiaChi;
import vn.isofh.his.dao.model.base.NbNgaySinh;
import vn.isofh.his.dto.base.DmRutGonDTO;
import vn.isofh.his.enums.GioiTinhEnum;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.io.Serializable;
import java.time.ZonedDateTime;
import java.util.Set;

@Entity
@Immutable
@Table(schema = "nb", name = "bc_ksk_01")
@Setter
@Getter
public class BcKsk01Entity implements NbNgaySinh, NbDiaChi, Serializable, NbChanDoanBenh {

    @Id
    private Long id;

    private ZonedDateTime ngaySinh;

    private Boolean chiNamSinh;

    private String maHoSo;

    private ZonedDateTime thoiGianVaoVien;

    private String tenNb;

    private Long nbDotDieuTriId;

    private GioiTinhEnum gioiTinh;

    private Long quocGiaId;

    private String lyDoDenKham;

    private String tenDichVu;

    // tien su benh cua doi tuong
    private String tienSuGiaDinh;

    private String tienSuBanThan;


    // kham the luc
    private Float canNang;

    private Float chieuCao;

    private Integer mach;

    private Float bmi;

    private Integer huyetApTamThu;

    private Integer huyetApTamTruong;

    // kham noi khoa
    private String tuanHoan;

    private String phanLoaiTuanHoan;

    private String hoHap;

    private String phanLoaiHoHap;

    private String tieuHoa;

    private String phanLoaiTieuHoa;

    private String thanTietLieu;

    private String phanLoaiThanTietLieu;

    private String coXuongKhop;

    private String phanLoaiCoXuongKhop;

    private String thanKinh;

    private String phanLoaiThanKinh;

    private String tamThan;

    private String phanLoaiTamThan;

    @Column(name = "bac_si_kham_noi_id")
    private Long bacSiKhamNoiId;

    // ngoai khoa
    private String ngoaiKhoa;

    private String phanLoaiNgoaiKhoa;

    @Column(name = "bac_si_kham_ngoai_id")
    private Long bacSiKhamNgoaiId;

    // kham san phu khoa
    private String sanPhuKhoa;

    private String phanLoaiSanPhuKhoa;

    @Column(name = "bac_si_kham_san_id")
    private Long bacSiKhamSanId;

    // kham mat
    private String matPhaiKhongKinh;

    private String matPhaiCoKinh;

    private String matTraiKhongKinh;

    private String matTraiCoKinh;

    private String mat;

    private String phanLoaiThiLuc;

    // tai - mui - hong
    private String taiTraiNoiThuong;

    private String taiTraiNoiTham;

    private String taiPhaiNoiThuong;

    private String taiPhaiNoiTham;

    private String taiMuiHong;

    private String phanLoaiTaiMuiHong;

    // rang ham mat
    private String hamTren;

    private String hamDuoi;

    private String rangHamMat;

    private String phanLoaiRangHamMat;

    // da lieu
    private String daLieu;

    private String phanLoaiDaLieu;

    // xet nghiem mau
    private String slHongCau;

    private String slBachCau;

    private String slTieuCau;

    private String duongMau;

    private String ure;

    private String creatinin;

    private String asat;

    private String alat;

    private String xnMauKhac;

    // xet nghiem nuoc tieu
    private String duong;

    private String protein;

    private String xnNuocTieuKhac;

    // cdha
    private String cdha;

    // ket luan
    private String phanLoai;

    private String benhKhac;

    @Convert(converter = LongSetAesConverter.class)
    private Set<Long> dsCdChinhId;

    @Transient
    private Set<DmRutGonDTO> dsCdChinh;

    @Convert(converter = LongSetAesConverter.class)
    private Set<Long> dsCdKemTheoId;

    @Transient
    private Set<DmRutGonDTO> dsCdKemTheo;

    @Transient
    private String cdChinh;

    @Transient
    private String cdKemTheo;

    @Transient
    private DmRutGonDTO quocGia;

    @Convert(converter = StringAesConverter.class)
    private String maSoGiayToTuyThan;

    @Convert(converter = LongAesConverter.class)
    private Long xaPhuongId;

    @Convert(converter = StringAesConverter.class)
    private String soNha;

    @Convert(converter = LongAesConverter.class)
    private Long tinhThanhPhoId;

    @Convert(converter = LongAesConverter.class)
    private Long quanHuyenId;

    @Transient
    private DmRutGonDTO quanHuyen;

    @Transient
    private DmRutGonDTO xaPhuong;

    @Transient
    private DmRutGonDTO tinhThanhPho;

    @Transient
    private String tenCongTy;

    @Transient
    private String tenHopDong;
}
