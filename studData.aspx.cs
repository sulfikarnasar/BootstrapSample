using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BootstrapSample
{
    public partial class studData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = @"Data Source=SUYPC010\SQLEXPRESS;Initial Catalog=sulfikar;Integrated Security=True";
            cmd.Connection = con;
            cmd.CommandText = "select * from stud";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt=new DataTable();
            da.Fill(dt);
           
            
        }
    }
}