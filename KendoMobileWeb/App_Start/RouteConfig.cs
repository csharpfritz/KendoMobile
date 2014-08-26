using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using Microsoft.AspNet.FriendlyUrls;
using Microsoft.AspNet.FriendlyUrls.Resolvers;

namespace KendoMobile
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings, new[] {new KendoMobileResolver("k")});
        }
    }

    public class KendoMobileResolver : WebFormsFriendlyUrlResolver
    {

      public KendoMobileResolver(string extPrefix)
        {
            EXTENSION = string.Format(".{0}.aspx", extPrefix);
        }

        private readonly string EXTENSION;

        public override IList<string> GetExtensions(HttpContextBase httpContext)
        {

            var extensions = base.GetExtensions(httpContext).ToList();

            if (extensions.Any(e => e.Equals(".mobile.aspx", StringComparison.InvariantCultureIgnoreCase)))
                extensions.Insert(0, EXTENSION);

            return extensions;

        }

        protected override bool IsMobileExtension(HttpContextBase httpContext, string extension)
        {
            var outVal = base.IsMobileExtension(httpContext, extension) || extension.Equals(EXTENSION, StringComparison.InvariantCultureIgnoreCase);
            return outVal;
        }

    }

}
