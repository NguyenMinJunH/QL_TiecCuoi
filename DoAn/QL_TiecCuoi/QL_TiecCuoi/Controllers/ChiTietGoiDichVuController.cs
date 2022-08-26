using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Modelss.Model;

namespace QL_TiecCuoi.Controllers
{
    public class ChiTietGoiDichVuController : Controller
    {
        QLTCDataContext qltc = new QLTCDataContext();
        //
        // GET: /ChiTietGoiDichVu/

        public ActionResult Index(int magoidichvu)
        {
            GoiDichVu goidichvu = qltc.GoiDichVus.FirstOrDefault(t => t.MaGoiDichVu == magoidichvu);

            return View(goidichvu);
        }

    }
}
