using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyRealtyWeb.Web.Models
{
    public class RoleBindingModels
    {
        public class CreateRoleBindingModel
        {
            [Required]
            [StringLength(256, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 2)]
            [Display(Name = "Role Name")]
            public string Name { get; set; }

        }

        public class UsersInRoleModel
        {
            public string Id { get; set; }
            public List<string> EnrolledUsers { get; set; }
            public List<string> RemovedUsers { get; set; }
        }
    }

    public class ModelFactory
    {
        //Code removed for brevity

        public RoleReturnModel Create(IdentityRole appRole)
        {

            return new RoleReturnModel
           {
               Url = "/Account/GetRoleById/"+appRole.Id,
               Id = appRole.Id,
               Name = appRole.Name
           };
        }
    }

    public class RoleReturnModel
    {
        public string Url { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
    }
}