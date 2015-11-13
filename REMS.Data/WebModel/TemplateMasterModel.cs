using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.WebModel
{
    public class TemplateMasterModel
    {
        public int TemplateMasterID { get; set; }
        public string TemplateName { get; set; }
        public string Description { get; set; }
        public string Features { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public string ImageUrl { get; set; }
        public string LogoUrl { get; set; }
        public string DomainUrl { get; set; }
        public Nullable<int> FreeTrailDays { get; set; }
        public Nullable<decimal> MonthlyPrice { get; set; }
        public string TemplateType { get; set; }
    }
}
