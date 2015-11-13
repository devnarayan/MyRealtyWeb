using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.WebModel
{
    public class AgentTemplateModel
    {
        public int AgentTemplateID { get; set; }
        public string UserName { get; set; }
        public Nullable<int> TemplateMasterId { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsAutoPay { get; set; }
        public string DomainUrl { get; set; }
        public Nullable<System.DateTime> AddedOn { get; set; }
        public string AddedBy { get; set; }

        public string CategoryName { get; set; }
        public string TemplateName { get; set; }
        public Nullable<int> FreeTrailDays { get; set; }
        public Nullable<decimal> MonthlyPrice { get; set; }
        public Nullable<decimal> SetupFee { get; set; }
        public string AddedOnSt { get; set; }
    }
}
