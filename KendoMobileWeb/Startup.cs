using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(KendoMobile.Startup))]
namespace KendoMobile
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {

        }
    }
}
