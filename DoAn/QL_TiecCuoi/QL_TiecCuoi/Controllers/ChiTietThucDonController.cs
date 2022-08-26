using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Modelss.Model;

namespace QL_TiecCuoi.Controllers
{
    public class ChiTietThucDonController : Controller
    {
        //
        // GET: /chiTiet/
        QLTCDataContext qltc = new QLTCDataContext();

        public ActionResult Index(int mathucdon)
        {
            ThucDon td = qltc.ThucDons.FirstOrDefault(t => t.MaThucDon == mathucdon);
            return View(td);
        }

        public ActionResult xoathucdonkhachhangchon(int mathucdon)
        {
 
            //List<ChiTietThucDon> list = qltc.ChiTietThucDons.Where(d => d.MaThucDon == mathucdon).ToList();

            var session = (Modelss.Common.UserLogin)Session[Modelss.Common.CommonConstans.TENDANGNHAP_SESSTION];



            string mathucdoncuakh = qltc.ThucDonKHChons.Where(d => d.MaKhachHang == session.id).ToString();


            List<ChiTietThucDonKHChon> list = qltc.ChiTietThucDonKHChons.Where(d => d.MaThucDon == Convert.ToInt32(mathucdoncuakh)).ToList();

            foreach (var item in list)
            {
                qltc.ChiTietThucDonKHChons.DeleteOnSubmit(item);
            }

            qltc.SubmitChanges();

            return RedirectToAction("Index","TrangChu");



        }

      

    }
}
