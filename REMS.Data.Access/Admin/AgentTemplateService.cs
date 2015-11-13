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
    public interface IAgentTemplateService : IDisposable
    {
        int AddAgentTemplate(AgentTemplateModel model);
        int EditAgentTemplate(AgentTemplateModel model);
        List<AgentTemplateModel> GetAgentTemplateList();
        List<AgentTemplateModel> GetAgentTemplateList(string userName);
        AgentTemplateModel GetAgentTemplate(int agentTemplateid);
    }
    public class AgentTemplateService : BaseService, IAgentTemplateService
    {
        private readonly MyRealtyWebDBEntities dbContext = new MyRealtyWebDBEntities();
        public int AddAgentTemplate(AgentTemplateModel model)
        {
            try
            {
                Mapper.CreateMap<AgentTemplateModel, ClientTemplate>();
                var template = Mapper.Map<AgentTemplateModel, ClientTemplate>(model);
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: AddTemplate()", ex);
                return 0;
            }
        }

        public int EditAgentTemplate(AgentTemplateModel model)
        {
            try
            {
                Mapper.CreateMap<AgentTemplateModel, ClientTemplate>();
                var template = Mapper.Map<AgentTemplateModel, ClientTemplate>(model);
                dbContext.Entry(template).State = EntityState.Modified;
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: EditTemplate()", ex);
                return 0;
            }
        }

        public List<AgentTemplateModel> GetAgentTemplateList()
        {
            try
            {
                var model = dbContext.ClientTemplates.Where(tm => tm.IsActive == true).ToList();
                Mapper.CreateMap<ClientTemplate, AgentTemplateModel>();
                var templates = Mapper.Map<List<ClientTemplate>, List<AgentTemplateModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetTemplateList", ex);
                return null;
            }
        }
        public List<AgentTemplateModel> GetAgentTemplateList(string userName)
        {
            try
            {
                var model = dbContext.ClientTemplates.Where(tm => tm.UserName==userName).ToList();
                Mapper.CreateMap<ClientTemplate, AgentTemplateModel>();
                var templates = Mapper.Map<List<ClientTemplate>, List<AgentTemplateModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetTemplateList", ex);
                return null;
            }
        }
        public AgentTemplateModel GetAgentTemplate(int agentTemplateid)
        {
            try
            {
                var model = dbContext.ClientTemplates.Where(tm => tm.AgentTemplateID==agentTemplateid).FirstOrDefault();
                Mapper.CreateMap<ClientTemplate, AgentTemplateModel>();
                var templates = Mapper.Map<ClientTemplate, AgentTemplateModel>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetAgentTemplate", ex);
                return null;
            }
        }

        public void Dispose()
        {

        }
    }
}