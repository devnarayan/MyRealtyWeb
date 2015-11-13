using MyRealtyWeb.Data.EPayModel;
using MyRealtyWeb.Data.WebModel;
using MyRealtyWeb.ESelectPayment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyRealtyWeb.Web.Areas.Agent.Controllers
{
    public class AgentPaymentController : Controller
    {
        // GET: Agent/AgentPayment
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Subscribe(int subscriptionID)
        {
            ViewBag.SubscriptionID = subscriptionID;
            ViewBag.UserName = User.Identity.Name;
            return View();
        }
        public ActionResult Pay(int id)
        {
            ViewBag.SubscriptionID = id;
            ViewBag.UserName = User.Identity.Name;
            return View();
        }

        #region PaymentService
        public string SaveAmount(RequestModel Pay)
        {
            MRWPurchase purch = new MRWPurchase();
            RequestModel model = new RequestModel();
            model.Amount = Convert.ToDecimal("100.00");
            model.PAN = "4242424242424242";
            model.ExpDate = Convert.ToInt32("1612");
            model.Crypt = "7";
            string pan = model.PAN;// "4242424242424242";
            string expdate = model.ExpDate.ToString();//"0812";
            string crypt = model.Crypt;// "7";
            var receipt = purch.BasicPurchase(model);
            if (receipt.ResponseCode == null || receipt.ResponseCode=="null") return "0"; // Transaction not sent for authorization.
            else if (Convert.ToInt32(receipt.ResponseCode) < 50) return "1";  // Transaction approved.
            else return "0"; // >=50 Transaction declined.
        }
        #endregion
    }
}