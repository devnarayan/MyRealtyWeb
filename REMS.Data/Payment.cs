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
    
    public partial class Payment
    {
        public int PaymentID { get; set; }
        public int SubscriptionID { get; set; }
        public int AgentTemplateID { get; set; }
        public Nullable<decimal> TransAmount { get; set; }
        public Nullable<int> AgentCardID { get; set; }
        public string PaymentMethod { get; set; }
        public string PayBy { get; set; }
        public Nullable<System.DateTime> PayOn { get; set; }
        public string Status { get; set; }
        public string TxnNumber { get; set; }
        public string ReferenceCode { get; set; }
        public string OrderID { get; set; }
        public string CardType { get; set; }
        public string ReceiptId { get; set; }
        public string TransType { get; set; }
        public string ReferenceNum { get; set; }
        public string ResponseCode { get; set; }
        public string ISO { get; set; }
        public string BankTotals { get; set; }
        public string Message { get; set; }
        public string AuthCode { get; set; }
        public string Complete { get; set; }
        public string TransDate { get; set; }
        public string TransTime { get; set; }
        public string Ticket { get; set; }
        public string TimedOut { get; set; }
        public string IsVisaDebit { get; set; }
        public string StatusCode { get; set; }
        public string StatusMessage { get; set; }
    
        public virtual AgentCard AgentCard { get; set; }
        public virtual ClientTemplate ClientTemplate { get; set; }
        public virtual Subscription Subscription { get; set; }
    }
}
