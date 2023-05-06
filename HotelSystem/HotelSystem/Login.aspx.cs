using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace HotelSystem
{
    public partial class Login1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            if (txt_username.Text.Equals("admin111") && txt_password.Text.Equals("Admin@123"))
            {
                Response.Redirect("Home.aspx");
            }
            else
            { 
            string check = "select count(*) from tbl_login where username='" + txt_username.Text + "' and password='" + txt_password.Text + "'";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp ==1)
            {
               
                Session["username"] = txt_username.Text;
                Response.Redirect("Welcomeaspx.aspx");
            }
            else
            {

                Response.Write("<script LANGUAGE='JavaScript'>alert('Invaild Username & Password.!')</script>"); 
            }
           /* if(txt_username.Text.Equals("admin111") && txt_password.Text.Equals("Admin2123"))
                {
                Response.Redirect("Home.aspx");
            }*/
           } 
        }
        protected void btn_Registration_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationForm.aspx");
        }
    }
    }
