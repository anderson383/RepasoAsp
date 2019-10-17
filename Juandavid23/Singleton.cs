using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Juandavid23
{
    public class Singleton
    {
        private static SqlConnection conex;

        private Singleton()
        {

        }
        public static SqlConnection conectarBase()
        {
            conex = new SqlConnection(Properties.Settings.Default.cadena);
            return conex;
        }
    }
}