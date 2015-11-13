using AutoMapper;
using MyRealtyWeb.Data.WebModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;

namespace MyRealtyWeb.Data.Access.Admin
{
    public interface IAspNetUsersService : IDisposable
    {
        int EditAspNetUsers(AspNetUsersModel model);
        AspNetUsersModel GetUserInfo(string userName);
        List<AspNetUsersModel> GetUserList(string roleName, bool isActive);
        List<AspNetUsersModel> GetUserList(bool isPreminum);
    }
    public class AspNetUsersService : BaseService, IAspNetUsersService
    {
        private readonly MyRealtyWebDBEntities dbContext = new MyRealtyWebDBEntities();
        public void Dispose()
        {
            //throw new NotImplementedException();
        }

        public int EditAspNetUsers(AspNetUsersModel model)
        {
            try
            {
                if (model.Id != null)
                {
                    Mapper.CreateMap<AspNetUsersModel, AspNetUser>();
                    var template = Mapper.Map<AspNetUsersModel, AspNetUser>(model);
                    int i = dbContext.SaveChanges();
                    return i;
                }
                else return 0;
            }
            catch (Exception ex)
            {
                logger.Error("Method: EditAspNetUsers()", ex);
                return 0;
            }
        }

        public AspNetUsersModel GetUserInfo(string userName)
        {
            try
            {
                var model = dbContext.AspNetUsers.Where(tm => tm.UserName == userName).FirstOrDefault();
                Mapper.CreateMap<AspNetUser, AspNetUsersModel>();
                var templates = Mapper.Map<AspNetUser, AspNetUsersModel>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetUserInfo", ex);
                return null;
            }
        }

        public List<AspNetUsersModel> GetUserList(bool isPreminum)
        {
            try
            {
                var model = dbContext.AspNetUsers.Where(tm => tm.IsPremium == isPreminum).ToList();
                Mapper.CreateMap<AspNetUser, AspNetUsersModel>();
                var templates = Mapper.Map<List<AspNetUser>, List<AspNetUsersModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method: GetUserList", ex);
                return null;
            }
        }

        public List<AspNetUsersModel> GetUserList(string roleName, bool isActive)
        {
            try
            {
                var users = Roles.GetUsersInRole(roleName);
                List<AspNetUsersModel> list = new List<AspNetUsersModel>();
                foreach (var user in users)
                {
                    var model = dbContext.AspNetUsers.Where(us => us.IsActive == isActive && us.UserName.Equals(user)).FirstOrDefault();
                    Mapper.CreateMap<AspNetUser, AspNetUsersModel>();
                    var templates = Mapper.Map<AspNetUser, AspNetUsersModel>(model);
                    list.Add(templates);
                }
                return list;
            }
            catch (Exception ex)
            {
                logger.Error("Method: GetUserList", ex);
                return null;
            }
        }
    }
}
