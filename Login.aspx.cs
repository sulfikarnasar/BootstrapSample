using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BootstrapSample
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void login_button_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = @"Data Source=SUYPC010\SQLEXPRESS;Initial Catalog=sulfikar;Integrated Security=True";
            cmd.Connection = con;
            cmd.CommandText = "select count(*) from login where username='" + uname_txt.Text + "' and password='" + pass_txt.Text + "'";
            con.Open();
            int i = (int)cmd.ExecuteScalar();
            string res = string.Empty;
            if (i == 1)
            {
                res = "success";
                FormsAuthentication.SetAuthCookie(uname_txt.Text, true);
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, uname_txt.Text, DateTime.Now, DateTime.Now.AddMinutes(10), false, uname_txt.Text);
                HttpCookie ck = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket));
                Response.Cookies.Add(ck);
                Response.Redirect("studData.aspx");

            }
            else
            {
                res = "fail";
            }
        }
    }
}