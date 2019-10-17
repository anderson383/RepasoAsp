using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Juandavid23
{
    public partial class Consultas : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conex = Singleton.conectarBase();
            SqlCommand comand = new SqlCommand("pa_Consulta", conex);
            comand.CommandType = CommandType.StoredProcedure;
            /*SqlParameter nombre = new SqlParameter("@nombre", SqlDbType.VarChar);
            nombre.Value = txtNombre.Text;
            SqlParameter apellido = new SqlParameter("@nombre", SqlDbType.VarChar);
            apellido.Value = txtTelefono.Text;
            comand.Parameters.Add(nombre);
            comand.Parameters.Add(apellido);*/
            SqlDataAdapter adap = new SqlDataAdapter(comand);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            gridDos.DataSource = dt;
            gridDos.DataBind();
            conex.Close();
            

  


        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void gridDos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }
    }
}