using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
namespace BootstrapSample
{
   // [ScriptService]
    public partial class index : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
      //  [WebMethod]
        
        public  static string func(string uname,string pass)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                con.ConnectionString = @"Data Source=SUYPC010\SQLEXPRESS;Initial Catalog=sulfikar;Integrated Security=True";
                cmd.Connection = con;
                cmd.CommandText = "select count(*) from login where username='" + uname + "' and password='" + pass + "'";
                con.Open();
                int i = (int)cmd.ExecuteScalar();
                string res = string.Empty;
                if (i == 1)
                {
                    res = "success";
                    index ik = new index();
                    ik.cookies(uname);
                   
                }
                else
                {
                    res = "fail";
                }
                return res;
            }
            catch (Exception e)
            {

                return e.ToString();
            }
            
        }
        public void cookies(string uname)
        {
            FormsAuthentication.SetAuthCookie(uname, true);
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, uname, DateTime.Now, DateTime.Now.AddMinutes(10), false, uname);
            HttpCookie ck = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket));
            Response.Cookies.Add(ck);
            Response.Redirect("Homepage.aspx");
        }
        
    }
}