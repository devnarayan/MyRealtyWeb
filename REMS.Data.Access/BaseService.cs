using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.Access
{
    public class BaseService
    {
       public ILog logger = log4net.LogManager.GetLogger(typeof(BaseService));

    }
}
