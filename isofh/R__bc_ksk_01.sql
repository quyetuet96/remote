select drop_table_or_view('nb', 'bc_ksk_01');

create or replace view nb.bc_ksk_01 as
select  row_number() over () id,
        nddt.thoi_gian_vao_vien,
        nddt.ten_nb,
        nddt.id                                     as nb_dot_dieu_tri_id,
        nddt.ma_ho_so,
        ddv.ten                                     as ten_dich_vu,
        dhdk.ten                                    as ten_hop_dong,
        ddt.ten                                     as ten_cong_ty,
        nddt.gioi_tinh,
        nddt.ngay_sinh,
        nddt.chi_nam_sinh,
        ndc.quoc_gia_id,
        ndc.tinh_thanh_pho_id,
        ndc.quan_huyen_id,
        ndc.xa_phuong_id,
        ndc.so_nha,
        ncd.ly_do_den_kham,
        nksk.ma_nhan_vien,
        nksk.chuc_vu,
        nksk.phong_ban,
        ndkhb.tien_su_ban_than,
        ndkhb.tien_su_gia_dinh,
        ndkcss.can_nang,
        ndkcss.chieu_cao,
        ndkcss.mach,
        ndkcss.bmi,
        ndkcss.nhiet_do,
        ndkcss.huyet_ap_tam_thu,
        ndkcss.huyet_ap_tam_truong,
        ndkk.tuan_hoan,
        ndkk.phan_loai_tuan_hoan,
        ndkk.ho_hap,
        ndkk.phan_loai_ho_hap,
        ndkk.tieu_hoa,
        ndkk.phan_loai_tieu_hoa,
        ndkk.than_tiet_lieu,
        ndkk.phan_loai_than_tiet_lieu,
        ndkk.noi_tiet,
        ndkk.co_xuong_khop,
        ndkk.phan_loai_co_xuong_khop,
        ndkk.than_kinh,
        ndkk.phan_loai_than_kinh,
        ndkk.tam_than,
        ndkk.phan_loai_tam_than,
        ndkk.bac_si_kham_noi_id,
        ndkk.ngoai_khoa,
        ndkk.phan_loai_ngoai_khoa,
        ndkk.bac_si_kham_ngoai_id,
        ndkk.san_phu_khoa,
        ndkk.phan_loai_san_phu_khoa,
        ndkk.bac_si_kham_san_id,
        ndkk.mat_phai_khong_kinh,
        ndkk.mat_phai_co_kinh,
        ndkk.mat_trai_khong_kinh,
        ndkk.mat_trai_co_kinh,
        ndkk.mat,
        ndkk.phan_loai_thi_luc,
        ndkk.tai_trai_noi_thuong,
        ndkk.tai_trai_noi_tham,
        ndkk.tai_phai_noi_thuong,
        ndkk.tai_phai_noi_tham,
        ndkk.tai_mui_hong,
        ndkk.phan_loai_tai_mui_hong,
        ndkk.ham_tren,
        ndkk.ham_duoi,
        ndkk.rang_ham_mat,
        ndkk.phan_loai_rang_ham_mat,
        ndkk.da_lieu,
        ndkk.phan_loai_da_lieu,
        ndkk.sl_hong_cau,
        ndkk.sl_bach_cau,
        ndkk.sl_tieu_cau,
        ndkk.duong_mau,
        ndkk.ure,
        ndkk.asat,
        ndkk.alat,
        ndkk.creatinin,
        ndkk.duong,
        ndkk.protein,
        ndkk.xn_nuoc_tieu_khac,
        ndkk.cdha,
        ndkk.xn_mau_khac,
        ndkk.phan_loai,
        ndkk.benh_khac,
        case when nbv.loai_dich_vu = 30 then ndk.ket_qua
             when nbv.loai_dich_vu = 20 then ndxn.ket_qua end as ket_qua

from nb_dot_dieu_tri nddt
         left join nb_kham_suc_khoe nksk on nddt.id = nksk.id
         left join nb_dv_kham_ksk ndkk on ndkk.id = ndkk.nb_dot_dieu_tri_id
         left join dm_hop_dong_ksk dhdk on nksk.hop_dong_ksk_id = dhdk.id
         left join dm_doi_tac ddt on ddt.id = dhdk.doi_tac_id
         left join nb_dv_ky_thuat ndkt on nddt.id = ndkt.nb_dot_dieu_tri_id
         left join nb_dia_chi ndc on nddt.id = ndc.id
         left join nb_chan_doan ncd on nddt.id = ncd.id
         left join nb_chi_so_song ndkcss on nddt.id = ndkcss.id
         left join nb_dv_kham_hoi_benh ndkhb on nddt.id = ndkhb.nb_dot_dieu_tri_id
         left join nb_dich_vu nbv on nbv.nb_dot_dieu_tri_id = nddt.id
         left join dm_dich_vu ddv on ddv.id = nbv.dich_vu_id
         left join nb_dv_kham ndk on ndk.nb_dot_dieu_tri_id = nddt.id
         left join nb_dv_xet_nghiem ndxn on ndxn.nb_dot_dieu_tri_id = nddt.id
         left join nb_dv_cdha_tdcn_pt_tt ndctpt on ndctpt.nb_dot_dieu_tri_id = nddt.id
         left join nb_dv_ngoai_dieu_tri ndndt on ndndt.nb_dot_dieu_tri_id = nddt.id
         left join nb_dv_giuong ndg on ndg.nb_dot_dieu_tri_id = nddt.id
         left join nb_dv_vat_tu ndvt on ndvt.nb_dot_dieu_tri_id = nddt.id
         left join nb_dv_thuoc ndt on ndt.nb_dot_dieu_tri_id = nddt.id
         left join nb_dv_hoa_chat ndhc on ndhc.nb_dot_dieu_tri_id = nddt.id
         left join nb_dv_che_pham_mau ndcpm on ndcpm.nb_dot_dieu_tri_id = nddt.id
         left join nb_goi_dv ngd on ngd.nb_dot_dieu_tri_id = nddt.id


where nddt.deleted = 0
  and nddt.kham_suc_khoe = true and ndkt.trang_thai in (150, 155)