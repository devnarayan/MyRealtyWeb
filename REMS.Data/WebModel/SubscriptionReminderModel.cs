using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.WebModel
{
    public class SubscriptionReminderModel
    {
        public int SubscriptionReminderID { get; set; }
        public Nullable<int> SubscriptionID { get; set; }
        public Nullable<decimal> DueAmount { get; set; }
        public string EmailID { get; set; }
        public string ContactNo { get; set; }
        public string UserName { get; set; }
        public Nullable<System.DateTime> ReminderDate { get; set; }
    }
}
