using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;

namespace Juan_David
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Application["Aplicaciones"] = 0;
            Application["SesionesUsuario"] = 0;
            // Código que se ejecuta al iniciar la aplicación

            Application["Aplicaciones"] = (int)Application["Aplicaciones"] + 1;
        }
        void Session_Start(object sender, EventArgs e)
        {
            Application["SesionesUsuario"] = (int)Application["SesionesUsuario"] + 1;
        }
        void Session_End(object sender, EventArgs e)
        {
            Application["SesionesUsuario"] = (int)Application["SesionesUsuario"] - 1;
        }
    }
}