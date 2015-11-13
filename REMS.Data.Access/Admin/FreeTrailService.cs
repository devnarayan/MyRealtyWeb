using AutoMapper;
using MyRealtyWeb.Data.WebModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyRealtyWeb.Data.Access.Admin
{
    public interface IFreeTrailService : IDisposable
    {
        int AddFreeTrail(FreeTrailModel model);
        int EditFreeTrail(FreeTrailModel model);
        FreeTrailModel GetFreeTrail(int freeTrailID);
        List<FreeTrailModel> GetFreeTrail(string username);
        List<FreeTrailModel> GetFreeTrailList(DateTime from, DateTime to);
        List<FreeTrailModel> GetFreeTrailList(DateTime from, DateTime to,bool isActive);
        int ExtandFreeTrail(int days, int freeTrailID);
        int DeactivateFreeTrail(int freeTrailID);
    }
    public class FreeTrailService : BaseService, IFreeTrailService
    {
        private MyRealtyWebDBEntities dbContext = null;
        public FreeTrailService()
        {
            dbContext = new MyRealtyWebDBEntities();
        }
        public int AddFreeTrail(FreeTrailModel model)
        {
            try
            {
                Mapper.CreateMap<FreeTrailModel, FreeTrail>();
                var template = Mapper.Map<FreeTrailModel, FreeTrail>(model);
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: AddFreeTrail()", ex);
                return 0;
            }
        }

        public int DeactivateFreeTrail(int freeTrailID)
        {
            if (freeTrailID > 0)
            {
                var model = dbContext.FreeTrails.Where(fr => fr.FreeTrailID == freeTrailID).FirstOrDefault();
                if (model != null)
                {
                    model.IsActive = false;
                    dbContext.Entry(model).State = EntityState.Modified;
                    int i= dbContext.SaveChanges();
                    return i;
                }
                else
                {
                    return 0;
                }
            }
            return 0;
        }

        public void Dispose()
        {
           // throw new NotImplementedException();
        }

        public int EditFreeTrail(FreeTrailModel model)
        {
            try
            {
                Mapper.CreateMap<FreeTrailModel, FreeTrail>();
                var template = Mapper.Map<FreeTrailModel, FreeTrail>(model);
                dbContext.Entry(template).State = EntityState.Modified;
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: EditFreeTrail()", ex);
                return 0;
            }
        }

        public int ExtandFreeTrail(int days, int freeTrailID)
        {
            throw new NotImplementedException();
        }

        public List<FreeTrailModel> GetFreeTrail(string username)
        {
            try
            {
                var model = dbContext.FreeTrails.Where(st => st.UserName==username).ToList();
                Mapper.CreateMap<FreeTrail, FreeTrailModel>();
                var templates = Mapper.Map<List<FreeTrail>, List<FreeTrailModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method: GetFreeTrail", ex);
                return null;
            }
        }

        public FreeTrailModel GetFreeTrail(int freeTrailID)
        {
            try
            {
                var model = dbContext.FreeTrails.Where(st => st.FreeTrailID == freeTrailID).FirstOrDefault();
                Mapper.CreateMap<FreeTrail, FreeTrailModel>();
                var templates = Mapper.Map<FreeTrail, FreeTrailModel>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method: GetFreeTrail", ex);
                return null;
            }
        }

        public List<FreeTrailModel> GetFreeTrailList(DateTime from, DateTime to)
        {
            try
            {
                var model = dbContext.FreeTrails.Where(st => st.StartDate >= from && st.EndDate<=to).ToList();
                Mapper.CreateMap<FreeTrail, FreeTrailModel>();
                var templates = Mapper.Map<List<FreeTrail>, List<FreeTrailModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method: GetFreeTrailList", ex);
                return null;
            }
        }

        public List<FreeTrailModel> GetFreeTrailList(DateTime from, DateTime to, bool isActive)
        {
            try
            {
                var model = dbContext.FreeTrails.Where(st => st.StartDate >= from && st.EndDate <= to).ToList();
                Mapper.CreateMap<FreeTrail, FreeTrailModel>();
                var templates = Mapper.Map<List<FreeTrail>, List<FreeTrailModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method: GetFreeTrailList", ex);
                return null;
            }
        }
    }
}
