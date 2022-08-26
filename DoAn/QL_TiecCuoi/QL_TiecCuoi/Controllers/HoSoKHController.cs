using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Modelss.Framework;

namespace QL_TiecCuoi.Controllers
{
    public class HoSoKHController : Controller
    {
        //
        // GET: /HoSoKH/
        QLTCdbContext qltc = new QLTCdbContext();


       
        [ChildActionOnly]

        public ActionResult laychitietthucdonkhchon(int makhachhang)
        {

            string magoidichvu = laymagoidichvu(makhachhang);

            List<Modelss.Framework.DichVu> list = laylistdichvu(int.Parse(magoidichvu));



            return PartialView("DanhSachDichVu", list);

        }
        [ChildActionOnly]

        public ActionResult chonsanhtiec()
        {
            var list = (from a in qltc.ThongTinSanhs
                        select a).ToList();

            return PartialView("ChonSanhTiec", list);

        }



        //int tinhtien()
        //{
        //    //string magoidichvu = laymagoidichvu(2);

        //    //List<Modelss.Framework.DichVu> list = laylistdichvu(int.Parse(magoidichvu));
            
        //    //int tong = 0;

        //    //for (int i = 0; i < list.Count; i++)
        //    //{
        //    //    string gia = list[i].GiaTien;
        //    //    tong = tong + int.Parse(gia);

        //    //}
        //    //return tong;
        //}



        public ActionResult them(int mamonan)
        {
            

            themmonan(mamonan);


            return RedirectToAction("Index","TrangChu");

        }

        public void themmonan(int mamonan)
        {
            // kiem tra
            int dem = qltc.ChiTietThucDonKHChons.Count(d => d.MaMonAn == mamonan);
            if (dem == 1)
            {
                Session[Modelss.Common.CommonConstans.kiemtra] = "1";
                ModelState.AddModelError("loi", "loi roi");
            }
            
            else
            {
                
                var chitiet = new Modelss.Framework.ChiTietThucDonKHChon();
                chitiet.MaThucDon = 1;
                chitiet.MaMonAn = mamonan;
                qltc.ChiTietThucDonKHChons.Add(chitiet);
                Session[Modelss.Common.CommonConstans.kiemtra] = "0";
                ModelState.AddModelError("khongloi", "khong co loi");
                qltc.SaveChanges();
            }
        }
            
        public ActionResult delete(int mamonan)
        {
            xoamonan(mamonan);


            return RedirectToAction("Index","TrangChu");
 
        }
        public bool xoamonan(int mamonan)
        {
            int machitiet = (from a in qltc.ChiTietThucDonKHChons
                             where a.MaThucDon == 1  && a.MaMonAn == mamonan
                             select a.MaChiTietThucDonKhChon).SingleOrDefault();

            var tim = qltc.ChiTietThucDonKHChons.Where(d => d.MaChiTietThucDonKhChon == machitiet).FirstOrDefault();
            qltc.ChiTietThucDonKHChons.Remove(tim);
            qltc.SaveChanges();
            return true;

        }


        public ActionResult Index(int makhachhang)
        {
            setViewBag();
            string mathucdon = laymathucdon(makhachhang);

            List<Modelss.Framework.Mon_An> list = laylistmonan(int.Parse(mathucdon));
          

            return View(list);
        }


       
      



        public string laymathucdon(int makhachhang)
        {
            var thucdon = qltc.ThucDonKHChons.Where(d => d.MaKhachHang == makhachhang).FirstOrDefault();
            return thucdon.MaThucDon.ToString();
        }

        public string laymagoidichvu(int makhachhang)
        {
            var goidichvu = qltc.GoiDichVuKHChons.Where(d =>d.MaKhachHang == makhachhang).FirstOrDefault();
            return goidichvu.MaGoiDichVuKHChon.ToString();
        }

        public List<Modelss.Framework.Mon_An> laylistmonan(int mathucdon)
        {
            return (from a in qltc.ChiTietThucDonKHChons
                    from b in qltc.Mon_An
                    
                    where a.MaThucDon == mathucdon && a.MaMonAn == b.MaMonAn
                    select b).ToList();
        }

        public List<Modelss.Framework.DichVu> laylistdichvu(int magoidichvu)
        {
            return (from a in qltc.ChiTietGoiDichVuKHChons
                    from b in qltc.DichVus

                    where a.MaGoiDichVuKHChon == magoidichvu && a.MaDichVu == b.MaDichVu
                    select b).ToList();
        }

        public void setViewBag(int? selectedid = null)
        {
            var model = new Modelss.Code.ThongTinSanhModel();
            ViewBag.sanhID = new SelectList(model.ListThongTinSanh(),"MaSanh","TenSanh",selectedid);
 
        }




    }
}
