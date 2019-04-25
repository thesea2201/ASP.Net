using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;

namespace WebSitebanSach.Controllers
{
    public class SachController : Controller
    {
        // GET: Sach
        QuanLyBanSachModel db = new QuanLyBanSachModel();
        public ActionResult Index()
        {
            return View();
        }
        public PartialViewResult SachMoiPartial()
        {
            var lstSachMoi = db.Sach.OrderByDescending(s=>s.NgayCapNhat).Take(4).ToList();
            return PartialView(lstSachMoi);
        }
        public ViewResult XemChiTiet(int MaSach=0)
        {
            Sach sach = db.Sach.SingleOrDefault(n => n.MaSach == MaSach);
            if(sach==null)
            {
                Response.StatusCode = 404;
            }
            return View(sach);
        }
    }
}