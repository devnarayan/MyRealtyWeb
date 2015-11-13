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
    public interface ISubscriptionReminderService : IDisposable
    {
        int AddSubscriptionReminder(SubscriptionReminderModel model);
        int EditSubscriptionReminder(SubscriptionReminderModel model);
        List<SubscriptionReminderModel> GetAllSubscriptionReminder(DateTime datefrom, DateTime dateto);
        List<SubscriptionReminderModel> GetSubscriptionReminderList(string username);
        SubscriptionReminderModel GetSubscriptionReminder(int SubscriptionReminderid);
    }
    public class SubscriptionReminderService : BaseService, ISubscriptionReminderService
    {
        private readonly MyRealtyWebDBEntities dbContext = new MyRealtyWebDBEntities();
        public int AddSubscriptionReminder(SubscriptionReminderModel model)
        {
            try
            {
                Mapper.CreateMap<SubscriptionReminderModel, SubscriptionReminder>();
                var template = Mapper.Map<SubscriptionReminderModel, SubscriptionReminder>(model);
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: AddSubscriptionReminder()", ex);
                return 0;
            }
        }

        public int EditSubscriptionReminder(SubscriptionReminderModel model)
        {
            try
            {
                Mapper.CreateMap<SubscriptionReminderModel, SubscriptionReminder>();
                var template = Mapper.Map<SubscriptionReminderModel, SubscriptionReminder>(model);
                dbContext.Entry(template).State = EntityState.Modified;
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: EditSubscriptionReminder()", ex);
                return 0;
            }
        }
        public List<SubscriptionReminderModel> GetAllSubscriptionReminder(DateTime datefrom, DateTime dateto)
        {
            try
            {
                var model = dbContext.SubscriptionReminders.Where(st => st.ReminderDate>= datefrom && st.ReminderDate <= dateto).ToList();
                Mapper.CreateMap<SubscriptionReminder, SubscriptionReminderModel>();
                var templates = Mapper.Map<List<SubscriptionReminder>, List<SubscriptionReminderModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetSubscriptionReminderList", ex);
                return null;
            }
        }
        public List<SubscriptionReminderModel> GetSubscriptionReminderList(string username)
        {
            try
            {
                var model = dbContext.SubscriptionReminders.Where(rm => rm.UserName == username).ToList();
                Mapper.CreateMap<SubscriptionReminder, SubscriptionReminderModel>();
                var templates = Mapper.Map<List<SubscriptionReminder>, List<SubscriptionReminderModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetSubscriptionReminderList", ex);
                return null;
            }
        }
        public SubscriptionReminderModel GetSubscriptionReminder(int SubscriptionReminderid)
        {
            try
            {
                var model = dbContext.SubscriptionReminders.Where(tm => tm.SubscriptionReminderID == SubscriptionReminderid).FirstOrDefault();
                Mapper.CreateMap<SubscriptionReminder, SubscriptionReminderModel>();
                var templates = Mapper.Map<SubscriptionReminder, SubscriptionReminderModel>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetSubscriptionReminder", ex);
                return null;
            }
        }
        public void Dispose()
        {

        }


    }
}
