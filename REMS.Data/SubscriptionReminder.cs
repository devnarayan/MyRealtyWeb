//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MyRealtyWeb.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class SubscriptionReminder
    {
        public int SubscriptionReminderID { get; set; }
        public Nullable<int> SubscriptionID { get; set; }
        public Nullable<decimal> DueAmount { get; set; }
        public string EmailID { get; set; }
        public string ContactNo { get; set; }
        public string UserName { get; set; }
        public Nullable<System.DateTime> ReminderDate { get; set; }
    
        public virtual Subscription Subscription { get; set; }
    }
}
