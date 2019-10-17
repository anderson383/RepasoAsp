using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Juan_David
{
    public partial class skere2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Cantidad de apps instanciadas" + Application["Aplicaciones"]+"</br>");
            Response.Write("Cantidad de usuarios" + Application["SesionesUsuario"] + "</br>");
        }
    }
}