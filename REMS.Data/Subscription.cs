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
    
    public partial class Subscription
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Subscription()
        {
            this.SubscriptionReminders = new HashSet<SubscriptionReminder>();
            this.Payments = new HashSet<Payment>();
        }
    
        public int SubscriptionID { get; set; }
        public Nullable<int> AgentTemplateID { get; set; }
        public Nullable<System.DateTime> SubDate { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public Nullable<int> Months { get; set; }
        public Nullable<System.DateTime> StartDate { get; set; }
        public Nullable<int> InvoiceNo { get; set; }
        public string SubscriptionBy { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
    
        public virtual ClientTemplate ClientTemplate { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SubscriptionReminder> SubscriptionReminders { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Payment> Payments { get; set; }
    }
}