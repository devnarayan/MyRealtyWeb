using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.WebModel
{
    public class SubscriptionModel
    {
        public int SubscriptionID { get; set; }
        public Nullable<int> AgentTemplateID { get; set; }
        public Nullable<System.DateTime> SubDate { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public Nullable<int> Months { get; set; }
        public Nullable<System.DateTime> StartDate { get; set; }
        public Nullable<int> InvoiceNo { get; set; }
        public string SubscriptionBy { get; set; }
        public string TemplateName { get; set; }
        public string CategoryName { get; set; }
        public string StartDateSt { get; set; }
        public string EndDateSt { get; set; }

    }
}
