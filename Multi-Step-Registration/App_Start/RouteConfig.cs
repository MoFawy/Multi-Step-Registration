using System.Web.Routing;

namespace Multi_Step_Registration
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("DefaultRoute", "", "~/Forms/Step1.aspx");

            //var settings = new FriendlyUrlSettings();
            //settings.AutoRedirectMode = RedirectMode.Permanent;
            //routes.EnableFriendlyUrls(settings);
        }
    }
}
