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
    public interface ISubscriptionService : IDisposable
    {
        int AddSubscription(SubscriptionModel model);
        int EditSubscription(SubscriptionModel model);
        List<SubscriptionModel> GetAllSubscription(DateTime datefrom, DateTime dateto);
        List<SubscriptionModel> GetSubscriptionList(int agentTemplateID);
        List<SubscriptionModel> GetSubscriptionList(string username);
        SubscriptionModel GetSubscription(int Subscriptionid);
    }
    public class SubscriptionService : BaseService, ISubscriptionService
    {
        private readonly MyRealtyWebDBEntities dbContext = new MyRealtyWebDBEntities();
        public int AddSubscription(SubscriptionModel model)
        {
            try
            {
                Mapper.CreateMap<SubscriptionModel, Subscription>();
                var template = Mapper.Map<SubscriptionModel, Subscription>(model);
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: AddSubscription()", ex);
                return 0;
            }
        }

        public int EditSubscription(SubscriptionModel model)
        {
            try
            {
                Mapper.CreateMap<SubscriptionModel, Subscription>();
                var template = Mapper.Map<SubscriptionModel, Subscription>(model);
                dbContext.Entry(template).State = EntityState.Modified;
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: EditSubscription()", ex);
                return 0;
            }
        }
        public List<SubscriptionModel> GetAllSubscription(DateTime datefrom, DateTime dateto)
        {
            try
            {
                var model = dbContext.Subscriptions.Where(st => st.SubDate >= datefrom && st.SubDate <= dateto).ToList();
                Mapper.CreateMap<Subscription, SubscriptionModel>();
                var templates = Mapper.Map<List<Subscription>, List<SubscriptionModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetSubscriptionList", ex);
                return null;
            }
        }
        public List<SubscriptionModel> GetSubscriptionList(string username)
        {
            try
            {
                var model = (from sb in dbContext.Subscriptions join at in dbContext.ClientTemplates on sb.AgentTemplateID equals at.AgentTemplateID where at.UserName == username select sb).ToList();
                Mapper.CreateMap<Subscription, SubscriptionModel>();
                var templates = Mapper.Map<List<Subscription>, List<SubscriptionModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetSubscriptionList", ex);
                return null;
            }
        }
        public List<SubscriptionModel> GetSubscriptionList(int agentTemplateID)
        {
            try
            {
                var model = dbContext.Subscriptions.Where(tm => tm.AgentTemplateID == agentTemplateID).ToList();
                Mapper.CreateMap<Subscription, SubscriptionModel>();
                var templates = Mapper.Map<List<Subscription>, List<SubscriptionModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetSubscriptionList", ex);
                return null;
            }
        }
        public SubscriptionModel GetSubscription(int Subscriptionid)
        {
            try
            {
                var model = dbContext.Subscriptions.Where(tm => tm.SubscriptionID == Subscriptionid).FirstOrDefault();
                Mapper.CreateMap<Subscription, SubscriptionModel>();
                var templates = Mapper.Map<Subscription, SubscriptionModel>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetSubscription", ex);
                return null;
            }
        }
        public void Dispose()
        {

        }

       
    }
}
