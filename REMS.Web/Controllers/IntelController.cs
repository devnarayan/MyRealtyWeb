#region Using

using System.Web.Mvc;

#endregion

namespace MyRealtyWeb.Web.Controllers
{
    public class IntelController : Controller
    {
        // GET: /intel/settings
        public ActionResult Settings()
        {
            return View();
        }

        // GET: /intel/versions
        public ActionResult Versions()
        {
            return View();
        }
    }
}