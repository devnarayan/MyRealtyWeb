using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.WebModel
{
    public class PaymentModel
    {
        public int PaymentID { get; set; }
        public int SubscriptionID { get; set; }
        public int AgentTemplateID { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public Nullable<int> AgentCardID { get; set; }
        public string PaymentMethod { get; set; }
        public string PayBy { get; set; }
        public Nullable<System.DateTime> PayOn { get; set; }
        public string Status { get; set; }
        public string TxnNumber { get; set; }
        public string ReferenceCode { get; set; }
        public string OrderID { get; set; }
        public string PayOnSt { get; set; }
    }
}
