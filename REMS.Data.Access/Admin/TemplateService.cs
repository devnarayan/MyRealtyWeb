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
    public interface ITemplateServie:IDisposable
    {
        int AddTemplate(TemplateMasterModel model);
        int EditTemplate(TemplateMasterModel model);
        List<TemplateMasterModel> GetTemplateList();
        TemplateMasterModel GetTemplate(int templatemasterid);
    }
    public class TemplateService :BaseService, ITemplateServie
    {
        private readonly MyRealtyWebDBEntities dbContext = new MyRealtyWebDBEntities();
        public int AddTemplate(TemplateMasterModel model)
        {
            try
            {
                Mapper.CreateMap<TemplateMasterModel, MainTemplatesHtml>();
                var template = Mapper.Map<TemplateMasterModel, MainTemplatesHtml>(model);
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: AddTemplate()", ex);
                return 0;
            }
        }

        public int EditTemplate(TemplateMasterModel model)
        {
            try
            {
                Mapper.CreateMap<TemplateMasterModel, MainTemplatesHtml>();
                var template = Mapper.Map<TemplateMasterModel, MainTemplatesHtml>(model);
                dbContext.Entry(template).State = EntityState.Modified;
                int i = dbContext.SaveChanges();
                return i;
            }
            catch(Exception ex)
            {
                logger.Error("Method: EditTemplate()", ex);
                return 0;
            }
        }

        public List<TemplateMasterModel> GetTemplateList()
        {
            try
            {
                var model = dbContext.MainTemplatesHtmls.Where(tm => tm.IsActive == true).ToList();
                Mapper.CreateMap<MainTemplatesHtml, TemplateMasterModel>();
                var templates = Mapper.Map<List<MainTemplatesHtml>, List<TemplateMasterModel>>(model);
                return templates;
            }
            catch(Exception ex)
            {
                logger.Error("Method:GetTemplateList", ex);
                return null;
            }
        }

        public TemplateMasterModel GetTemplate(int templatemasterid)
        {
            try
            {
                var model = dbContext.MainTemplatesHtmls.Where(tm => tm.TemplateMasterID == templatemasterid).FirstOrDefault();
                Mapper.CreateMap<MainTemplatesHtml, TemplateMasterModel>();
                var templates = Mapper.Map<MainTemplatesHtml, TemplateMasterModel>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetTemplate", ex);
                return null;
            }
        }
        public void Dispose()
        {

        }
    }
}
