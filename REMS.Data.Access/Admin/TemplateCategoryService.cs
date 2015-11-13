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
    public interface ITemplateCategoryService : IDisposable
    {
        int AddCategory(TemplateCategoryModel model);
        int EditCategory(TemplateCategoryModel model);
        List<TemplateCategoryModel> GetCategoryList();
        TemplateCategoryModel GetCategory(int templateCategoryID);
    }
    public class TemplateCategoryService : BaseService, ITemplateCategoryService
    {
        private readonly MyRealtyWebDBEntities dbContext = new MyRealtyWebDBEntities();
        public int AddCategory(TemplateCategoryModel model)
        {
            try
            {
                Mapper.CreateMap<TemplateCategoryModel, TemplateCategory>();
                var template = Mapper.Map<TemplateCategoryModel, TemplateCategory>(model);
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: AddCategory()", ex);
                return 0;
            }
        }

        public int EditCategory(TemplateCategoryModel model)
        {
            try
            {
                Mapper.CreateMap<TemplateCategoryModel, TemplateCategory>();
                var template = Mapper.Map<TemplateCategoryModel, TemplateCategory>(model);
                dbContext.Entry(template).State = EntityState.Modified;
                int i = dbContext.SaveChanges();
                return i;
            }
            catch (Exception ex)
            {
                logger.Error("Method: EditCategory()", ex);
                return 0;
            }
        }

        public List<TemplateCategoryModel> GetCategoryList()
        {
            try
            {
                var model = dbContext.TemplateCategories.ToList();
                Mapper.CreateMap<TemplateCategory, TemplateCategoryModel>();
                var templates = Mapper.Map<List<TemplateCategory>, List<TemplateCategoryModel>>(model);
                return templates;
            }
            catch (Exception ex)
            {
                logger.Error("Method:GetTemplateList", ex);
                return null;
            }
        }

        public TemplateCategoryModel GetCategory(int templateCategoryID)
        {
            try
            {
                var model = dbContext.TemplateCategories.Where(tm => tm.TemplateCategoryId == templateCategoryID).FirstOrDefault();
                Mapper.CreateMap<TemplateCategory, TemplateCategoryModel>();
                var templates = Mapper.Map<TemplateCategory, TemplateCategoryModel>(model);
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
