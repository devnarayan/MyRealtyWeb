using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.EPayModel
{
    public class RequestModel
    {
        public string OrderID { get; set; }
        public string OrigOrderID { get; set; }
        public string PAN { get; set; }
        public int ExpDate { get; set; }
        public Nullable<Decimal> Amount { get; set; }
        public string Crypt { get; set; }
        public string TxnNumber { get; set; }
        public string CustomerID { get; set; }
        public string DynamicDescriptor { get; set; }
        public string CAVV { get; set; }
        public string AVSStreetNumber { get; set; }
        public string AVSStreetName { get; set; }
        public string AVSZipCode { get; set; }
        public Nullable<int> CVDValue { get; set; }
        public Nullable<int> CVDIndicator { get; set; }
        public Nullable<bool> StatucCheck { get; set; }
    }
}
