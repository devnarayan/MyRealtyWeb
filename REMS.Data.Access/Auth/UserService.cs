using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.Access.Auth
{
    public interface IUserService
    {

    }
    public class UserService:IUserService
    {
        #region Private Fields
        private readonly MyRealtyWebDBEntities dbContext;
        #endregion
        public UserService()
        {
            dbContext = new MyRealtyWebDBEntities();
        }

    }
}
