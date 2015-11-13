using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.WebModel
{
    public class AgentCardModel
    {
        public int AgentCardID { get; set; }
        public string CardType { get; set; }
        public Nullable<bool> IsDefault { get; set; }
        public string CardNo { get; set; }
        public Nullable<int> ExpiryDate { get; set; }
        public Nullable<int> CVV { get; set; }
        public string VerificationCode { get; set; }
        public string AddedBy { get; set; }
        public Nullable<System.DateTime> AddedOn { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
        public string IconUrl { get; set; }
        public string UserName { get; set; }
    }
}
