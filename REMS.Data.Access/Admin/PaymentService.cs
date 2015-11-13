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
    public interface IPaymentService : IDisposable
    {
        int AddPayment(PaymentModel model);
        int EditPayment(PaymentModel model);
        List<PaymentModel> GetAllPayment(DateTime datefrom, DateTime dateto);
        List<PaymentModel> GetPaymentList(int agentTemplateID);
        List<PaymentModel> GetPaymentList(string username);
        PaymentModel GetPayment(int Paymentid);
    }
    public class PaymentService : BaseService, IPaymentService
    {
        private readonly MyRealtyWebDBEntities dbContext = new MyRealtyWebDBEntities();
        public int AddPayment(PaymentModel model)
        {
            try
            {
                Mapper.CreateMap<PaymentModel, Payment>();
                var template = Mapper.Map<PaymentModel, Payment>(model);
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: AddPayment()", ex);
                return 0;
            }
        }

        public int EditPayment(PaymentModel model)
        {
            try
            {
                Mapper.CreateMap<PaymentModel, Payment>();
                var template = Mapper.Map<PaymentModel, Payment>(model);
                dbContext.Entry(template).State = EntityState.Modified;
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: EditPayment()", ex);
                return 0;
            }
        }
        public List<PaymentModel> GetAllPayment(DateTime datefrom, DateTime dateto)
        {
            try
            {
                var model = dbContext.Payments.Where(st => st.PayOn >= datefrom && st.PayOn <= dateto).ToList();
                Mapper.CreateMap<Payment, PaymentModel>();
                var templates = Mapper.Map<List<Payment>, List<PaymentModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetPaymentList", ex);
                return null;
            }
        }
        public List<PaymentModel> GetPaymentList(string username)
        {
            try
            {
                var model = (from sb in dbContext.Payments join at in dbContext.ClientTemplates on sb.AgentTemplateID equals at.AgentTemplateID where at.UserName == username select sb).ToList();
                Mapper.CreateMap<Payment, PaymentModel>();
                var templates = Mapper.Map<List<Payment>, List<PaymentModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetPaymentList", ex);
                return null;
            }
        }
        public List<PaymentModel> GetPaymentList(int agentTemplateID)
        {
            try
            {
                var model = dbContext.Payments.Where(tm => tm.AgentTemplateID == agentTemplateID).ToList();
                Mapper.CreateMap<Payment, PaymentModel>();
                var templates = Mapper.Map<List<Payment>, List<PaymentModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetPaymentList", ex);
                return null;
            }
        }
        public PaymentModel GetPayment(int Paymentid)
        {
            try
            {
                var model = dbContext.Payments.Where(tm => tm.PaymentID == Paymentid).FirstOrDefault();
                Mapper.CreateMap<Payment, PaymentModel>();
                var templates = Mapper.Map<Payment, PaymentModel>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetPayment", ex);
                return null;
            }
        }
        public void Dispose()
        {

        }


    }
}
