using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;

namespace WebSitebanSach.Controllers
{
    public class NhaXuatBanController : Controller
    {
        // GET: NhaXuatBan
        QuanLyBanSachModel db = new QuanLyBanSachModel();
        public PartialViewResult NhaXuatBanPartial()
        {
            return PartialView(db.NhaXuatBan.Take(10).OrderBy(n=>n.TenNXB).ToList());
        }
        public ViewResult SachTheoNXB(int MaNXB=0)
        {
            NhaXuatBan nx = db.NhaXuatBan.SingleOrDefault(n => n.MaNXB == MaNXB);
            if(nx==null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<Sach> sach = db.Sach.Where(n => n.MaNXB == MaNXB).OrderBy(n => n.GiaBan).ToList();
            if(sach.Count==0)
            {
                ViewBag.Sach = "Không có sách nào của nhà xuất bản này";
            }
            return View(sach);

        }
        public ViewResult DanhMucNhaXuatBan()
        {
            return View(db.NhaXuatBan.ToList());
        }
    }
}