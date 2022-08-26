using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Modelss.Model;

namespace QL_TiecCuoi.Areas.Admin.Controllers
{
    public class Ad_ThongTinTiecController : Controller
    {
        //
        // GET: /Admin/Ad_ThongTinTiec/
        QLTCDataContext qltc = new QLTCDataContext();

        public ActionResult Index()
        {
            var dt = (from a in qltc.DatTiecs
                     from b in qltc.ThongTinSanhs
                     from c in qltc.KhachHangs
                     from d in qltc.ThucDonKHChons
                     from e in qltc.GoiDichVuKHChons
                     where a.MaSanh == b.MaSanh && a.MaKhachHang == c.MaTaiKhoan && a.MaThucDonKHChon == d.MaThucDon && a.MaGoiDichVuKHChon == e.MaGoiDichVuKHChon
                     select new
                     {
                         b.TenSanh,
                         a.NgayToChuc,
                         c.TenKhachHang,
                         a.Buoi,
                         a.MaThucDon,
                         a.MaGoiDichVu,
                         d.TenThucDon,
                         e.TenGoi,
                         a.TongTien
                     }).ToList();
 
                      

            return View(dt.ToList());
        }

        public ActionResult dangchoxacnhan()
        {
            var dt = from a in qltc.DatTiecs
                     where a.TongTien == "Chưa xác nhận"
                     select a;

            return View(dt);
        }

        public ActionResult daxacnhan()
        {
            var dt = from a in qltc.DatTiecs
                     where a.TongTien == "Đã xác nhận"
                     select a;

            return View(dt);
        }

        public ActionResult dahoanthanh()
        {
            var dt = from a in qltc.DatTiecs
                     where a.TongTien == "Đã hoàn thành"
                     select a;

            return View(dt);
        }

   
        //
        // POST: /Admin/Ad_TaiKhoan/Edit/5

        public ActionResult xacnhandattiec(int id)
        {
            DatTiec tt = qltc.DatTiecs.Where(d=>d.MaDacTiec == id).FirstOrDefault();

            tt.TongTien = "Đã xác nhận";

            qltc.SubmitChanges();

            return RedirectToAction("Index");
           
        }



    }
}
