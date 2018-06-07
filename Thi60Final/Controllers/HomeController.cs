using Model;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Thi60Final.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            CatDao dao = new CatDao();
            var model = dao.GetList().ToList();
            
            return View(model);
        }

        public ActionResult Detail(int id)
        {
            ProDao dao = new ProDao();
            setViewBag(id);
            var model = dao.GetListID(id).ToList();
            return View(model);
        }
        [HttpPost]
        public JsonResult Delete(int id)
        {
            ProDao dao = new ProDao();
            var result = dao.Delete(id);
            return Json(new {
                status = result
            });
        }
       public void setViewBag(int? catid = null)
        {
            CatDao dao = new CatDao();
            ViewBag.CatID = new SelectList(dao.GetList(), "CatID", "CatName", catid);
        }
    }

    
}