using MyRealtyWeb.Data.Access.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyRealtyWeb.Web.Areas.Agent.Controllers
{
    public class AgentPanelController : Controller
    {
        private PaymentService payService;
        private SubscriptionService subscriptionService;
        private FreeTrailService freeService;
        private AgentTemplateService agentTempService;
        private TemplateCategoryService catService;
        private TemplateService temService;
        public AgentPanelController()
        {
            payService = new PaymentService();
            subscriptionService = new SubscriptionService();
            freeService = new FreeTrailService();
            agentTempService = new AgentTemplateService();
            catService = new TemplateCategoryService();
            temService = new TemplateService();
            temService = new TemplateService();
        }
        // GET: Agent/AgentPanel
        public ActionResult Index()
        {
            ViewBag.UserName = User.Identity.Name;
            return View();
        }
        public ActionResult MyTemplate()
        {
            ViewBag.UserName = User.Identity.Name;
            return View();
        }
        public ActionResult MyPayment()
        {
            ViewBag.UserName = User.Identity.Name;
            return View();
        }
        public ActionResult MySubscription()
        {
            ViewBag.UserName = User.Identity.Name;
            return View();
        }
        public ActionResult MyFreeTrail()
        {
            ViewBag.UserName = User.Identity.Name;
            return View();
        }
    

        #region Get Services
        public string GetAgentPayment(string userName)
        {
            var model = payService.GetPaymentList(userName);
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        public string GetAgentFreeTrail(string userName)
        {
            var model =freeService.GetFreeTrail(userName);
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        public string GetAgentSubscription(string userName)
        {
            var model =subscriptionService.GetSubscriptionList(userName);
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        public string GetAgentTemplates(string userName)
        {
            var model =agentTempService.GetAgentTemplateList(userName);
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }

        #endregion
    }
}