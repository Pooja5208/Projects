using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

namespace HotelSystem
{
    public partial class RegistrationForm : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {
         }

        protected void btncheckin_Click(object sender, EventArgs e)
        {

            con.Open();
            
            if (checkusername())
            {
                lblmsg.Text = "User name already exist,kindly used different name";
                txtusername.Text = "";
                txtpassword.Text = "";
               
            }
            else
            {



                SqlCommand cmd = new SqlCommand("insert into dbo.tbl_Registration(first_name,last_name,contact_no,address)values(@first_name,@last_name,@contact_no,@address)", con);
                cmd.Parameters.AddWithValue("@first_name", txtfirstname.Text);
                cmd.Parameters.AddWithValue("@last_name", txtlastname.Text);
                cmd.Parameters.AddWithValue("@contact_no", txtcontact.Text);
                cmd.Parameters.AddWithValue("@address", txtaddress.Text);

                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("insert into dbo.tbl_login(username,password)values(@username,@password)", con);
                cmd1.Parameters.AddWithValue("@username", txtusername.Text);
                cmd1.Parameters.AddWithValue("@password", txtpassword.Text);
                cmd1.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Registration has been done successfully!!');</script>");
                Server.Transfer("Login.aspx", true);
                
                con.Close();
            }
        }

        bool checkusername()
        {
            string mycon = "Data Source=.;Initial Catalog=hotel_db;Integrated Security=True";

            Boolean usernameavailable = false;
            string myquery = "select * from tbl_login where username='" + txtusername.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                usernameavailable = true;

            }
            else
            {
                lblmsg.Text = "";
            }
            con.Open();
            return usernameavailable;
        }
        /*protected void passval()
        {
            Labelpass.Text = "";
            string value = txtpassword.Text;
            Regex rgx = new Regex(@"^(?=.{8,})(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[@#$%^&+=]).*$");
            var boolvalue = rgx.IsMatch(value);
            if (boolvalue == false)
            {
                Labelpass.Text = "Must Contain one number, one character, one special character!";
            }
            else
            {
                Labelpass.Text = "Success!";
            }
        }*/
        protected void btncancel_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
            con.Open();
            txtfirstname.Text="";
            txtlastname.Text = "";
            txtcontact.Text = "";
            txtaddress.Text = "";
            txtusername.Text = "";
            txtpassword.Text = "";



        }
    }
}