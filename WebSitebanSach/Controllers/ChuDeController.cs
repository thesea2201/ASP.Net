using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;

namespace WebSitebanSach.Controllers
{
    public class ChuDeController : Controller
    {
        // GET: ChuDe
        QuanLyBanSachModel db = new QuanLyBanSachModel();
        public ActionResult ChuDePartial()
        {
            return PartialView(db.ChuDe.Take(5).ToList());
        }
        public ViewResult SachTheoChuDe(int MaChuDe=0)
        {
            ChuDe cd = db.ChuDe.SingleOrDefault(n => n.MaChuDe == MaChuDe);
            if(cd==null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<Sach> sach= db.Sach.Where(n=>n.MaChuDe==MaChuDe).OrderBy(n=>n.GiaBan).ToList();
            if(sach.Count==0)
                ViewBag.Sach = "Không có sách nào thuộc chủ đề này";
            return View(sach);
        }
        public ViewResult DanhMucChuDe()
        {
            return View(db.ChuDe.ToList());
        }
    }
}