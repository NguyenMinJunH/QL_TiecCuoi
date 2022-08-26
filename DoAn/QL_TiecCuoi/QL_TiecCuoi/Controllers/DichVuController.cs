using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Modelss.Framework;

namespace QL_TiecCuoi.Controllers
{
    public class DichVuController : Controller
    {
        //
        // GET: /DichVu/
        QLTCdbContext qltc = new QLTCdbContext();

        public ActionResult Index()
        {
            List<DichVu> list = qltc.DichVus.ToList();
            return View(list);
        }

    }
}
