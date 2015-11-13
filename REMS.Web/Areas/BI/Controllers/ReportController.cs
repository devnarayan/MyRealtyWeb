using MyRealtyWeb.Web.App_Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyRealtyWeb.Web.Areas.BI.Controllers
{
    public class ReportController : Controller
    {
        // GET: BI/Report
        public ActionResult Index()
        {
            return View();
        }

        #region Search Services
        public ActionResult PrintReport()
        {
            return View();
        }
        public string MailReport(string ReportContent, string emailid)
        {
            string filename = "ReportExport.xls";
            System.IO.File.WriteAllText(Server.MapPath("~/PDF/Temp/" + filename), ReportContent);
            //  string tfile = ExportGrid(transids);
            SendMail sm = new SendMail();
            sm.BackupReceiptMailDataFile("Report from MyRealtyWeb", "", emailid, filename);
            return "/PDF/Temp/" + filename;
        }
        public string ExportReport(string ReportContent)
        {
            string filename = "ReportExport.xls";
            System.IO.File.WriteAllText(Server.MapPath("~/PDF/Temp/" + filename), ReportContent);
            return "/PDF/Temp/" + filename;
        }
        #endregion
    }
}