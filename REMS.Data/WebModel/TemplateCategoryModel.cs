using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.WebModel
{
    public class TemplateCategoryModel
    {
        public int TemplateCategoryId { get; set; }
        public string TemplateCategoryName { get; set; }
        public Nullable<int> FreeTrailDays { get; set; }
        public Nullable<decimal> MonthlyPrice { get; set; }
        public Nullable<decimal> SetupFee { get; set; }
    }
}
