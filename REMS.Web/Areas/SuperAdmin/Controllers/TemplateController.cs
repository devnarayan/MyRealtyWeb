using MyRealtyWeb.Data.Access.Admin;
using MyRealtyWeb.Data.WebModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyRealtyWeb.Web.Areas.SuperAdmin.Controllers
{
    public class TemplateController : Controller
    {
        private TemplateService tservice;
        private TemplateCategoryService catService;
        public TemplateController()
        {
            tservice = new TemplateService();
            catService = new TemplateCategoryService();
        }
        // GET: SuperAdmin/Template
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult AddTemplate()
        {
            return View();
        }
        public ActionResult EditTempalte(int id)
        {
            ViewBag.TemplateID = id;
            return View();
        }
        public ActionResult CategoryList()
        {
            return View();
        }
        public ActionResult ManageCategory(int id)
        {
            ViewBag.CategoryID = id;
            return View();
        }
        #region Template Services
        public string GetTemplateList()
        {
            var model = tservice.GetTemplateList();
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        public string GetTemplate(int templateid)
        {
            var model = tservice.GetTemplate(templateid);
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        public string SaveTemplate(TemplateMasterModel Template)
        {
            int i = tservice.AddTemplate(Template);
            return Newtonsoft.Json.JsonConvert.SerializeObject(i);
        }
        public string EditTemplate(TemplateMasterModel Template)
        {
            int i =tservice.EditTemplate(Template);
            return Newtonsoft.Json.JsonConvert.SerializeObject(i);
        }
        #endregion
        
        #region CategoryService
        public string GetCategoryList()
        {
            var model =catService.GetCategoryList();
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        public string GetCategory(int Categoryid)
        {
            var model = catService.GetCategory(Categoryid);
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        public string AddCategory(TemplateCategoryModel Category)
        {
            int i = catService.AddCategory(Category);
            return Newtonsoft.Json.JsonConvert.SerializeObject(i);
        }
        public string EditCategory(TemplateCategoryModel Category)
        {
            int i = catService.EditCategory(Category);
            return Newtonsoft.Json.JsonConvert.SerializeObject(i);
        }
        #endregion
    }
}