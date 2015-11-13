using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyRealtyWeb.Web.Startup))]
namespace MyRealtyWeb.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
