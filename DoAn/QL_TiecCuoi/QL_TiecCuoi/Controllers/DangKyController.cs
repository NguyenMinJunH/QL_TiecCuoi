using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QL_TiecCuoi.Controllers
{
    public class DangKyController : Controller
    {
        //
        // GET: /DangKy/

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult xulidangkitaikhoan(FormCollection fc, Modelss.Model.KhachHang kh)
        {

            //kh.TenKhachHang = fc["tenkhachhang"];
            //kh.GioiTinh = fc["gioitinh"];
            //kh.DiaChi = fc["diachi"];
            //kh.SoDienThoai = fc["sodienthoai"];
            //kh.TenDangNhap = fc["tendangnhap"];
            //kh.MatKhau = fc["matkhau"];
            //kh.LoaiTaiKhoan = hinh.FileName;

            //string dd = Server.MapPath("/Content/hinhanh/anhmonan/" + hinh.FileName);
            //hinh.SaveAs(dd);
            //qltc.Mon_Ans.InsertOnSubmit(monan);
            //qltc.SubmitChanges();

            return RedirectToAction("Index");
        }


    }
}
