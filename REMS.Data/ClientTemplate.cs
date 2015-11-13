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
    
    public partial class ClientTemplate
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ClientTemplate()
        {
            this.Subscriptions = new HashSet<Subscription>();
            this.Payments = new HashSet<Payment>();
        }
    
        public int AgentTemplateID { get; set; }
        public string UserName { get; set; }
        public Nullable<int> TemplateMasterId { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsAutoPay { get; set; }
        public string DomainUrl { get; set; }
        public Nullable<System.DateTime> AddedOn { get; set; }
        public string AddedBy { get; set; }
    
        public virtual MainTemplatesHtml MainTemplatesHtml { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Subscription> Subscriptions { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Payment> Payments { get; set; }
    }
}