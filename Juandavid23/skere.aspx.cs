using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Juandavid23
{
    public partial class skere : System.Web.UI.Page
    {
        public static int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                txtConteo.Text = "0";
            }
            if (txtConteo.Text.Length == 0)
            {
                i = 0;
                txtConteo.Text = i.ToString();
                ViewState["click"] = i;
            }
        }

        protected void btnSuma_Click(object sender, EventArgs e)
        {
            if (txtConteo.Text.Length > 0)
            {
                if (ViewState["click"] != null)
                {
                    i = (int)ViewState["click"] + 1;
                }
                txtConteo.Text = i.ToString();
                ViewState["click"] = i;
            }
            if (txtConteo.Text.Length == 0)
            {
                i = 0;
                txtConteo.Text = i.ToString();
                ViewState["click"] = i;
            }


        }

        protected void btnResta_Click(object sender, EventArgs e)
        {

        }
    }
}