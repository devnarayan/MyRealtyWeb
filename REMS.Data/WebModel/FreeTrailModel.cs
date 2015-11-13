using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.WebModel
{
    public class FreeTrailModel
    {
        public int FreeTrailID { get; set; }
        public string TemplateName { get; set; }
        public string CategoryName { get; set; }
        public Nullable<int> AgentTemplateID { get; set; }
        public string UserName { get; set; }
        public Nullable<System.DateTime> StartDate { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public string StartDateSt { get; set; }
        public string EndDateSt { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }
}
