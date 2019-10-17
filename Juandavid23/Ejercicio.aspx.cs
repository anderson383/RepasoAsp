using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Juandavid23
{
    public partial class Ejercicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                ListItem Manzana = new ListItem("Manzana","0");
                ListItem Banano = new ListItem("Banano", "1");
                ListItem Fresa = new ListItem("Fresa", "2");

                ListaUno.Items.Add(Manzana);
                ListaUno.Items.Add(Banano);
                ListaUno.Items.Add(Fresa);

                DataSet set = new DataSet();
                set.ReadXml(Server.MapPath("xmlPrueba.xml"));
                listaDos.DataSource = set;
                listaDos.DataValueField="frutasId";
                listaDos.DataTextField = "frutasNombre";
                listaDos.DataBind();

            }
        }

        protected void Operaciones(object sender, CommandEventArgs e)
        {
            double nro1 = Convert.ToDouble(txtUno.Text);
            double nro2 = Convert.ToDouble(txtDos.Text);
            double respuesta = 0;

            if (e.CommandName == "Suma")
            {
                respuesta = nro1 + nro2;
            }
            if (e.CommandName == "Resta")
            {
                respuesta = nro1 - nro2;
            }
            if (e.CommandName == "Multiplicacion")
            {
                respuesta = nro1 * nro2;

            }
            if (e.CommandName == "Division")
            {
                respuesta = nro1 / nro2;
            }
            lblResultado.Text = respuesta.ToString();
        }

        protected void btnPrueba_Click(object sender, EventArgs e)
        {
            lblSeleccionado.Text = ListaUno.SelectedItem.ToString();
            lblValor.Text = ListaUno.SelectedIndex.ToString();

        }
    }
}