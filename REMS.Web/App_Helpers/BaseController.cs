﻿using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyRealtyWeb.Web.App_Helpers
{
    public class BaseController : Controller
    {
        public string Title { set { ViewBag.Title = value; } }
        public string Keywords { set { ViewBag.Keywords = value; } }
        public string Description { set { ViewBag.Description = value; } }

        public string Success { set { TempData["Success"] = ViewData["Success"] = value; } }
        public string Failure { set { TempData["Failure"] = ViewData["Failure"] = value; } }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (TempData["Success"] != null) ViewData["Success"] = TempData["Success"];
            if (TempData["Failure"] != null) ViewData["Failure"] = TempData["Failure"];

            base.OnActionExecuting(filterContext);
        }
        private ApplicationRoleManager _AppRoleManager = null;

        protected ApplicationRoleManager AppRoleManager
        {
            get
            {
                return _AppRoleManager ?? Request.GetOwinContext().GetUserManager<ApplicationRoleManager>();
            }
        }
    }
}