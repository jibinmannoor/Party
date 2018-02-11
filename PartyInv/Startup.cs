using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PartyInv.Startup))]
namespace PartyInv
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
