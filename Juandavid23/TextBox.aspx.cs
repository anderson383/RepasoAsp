using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Juandavid23
{
    public partial class TextBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            skere.Text = "Hola mundo";
        }

        protected void skere_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            if (rbtHambur.Checked == true)
            {
                Response.Write("Selecciono hamburguesa");
            }
            if (rbtPizza.Checked == true)
            {
                Response.Write("Selecciono hamburguesa");
            }
        }
    }
}