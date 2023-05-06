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
    public partial class Booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
           


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
               
            }
            else
            {
                Calendar1.Visible = true;
               
            }
            Calendar1.Attributes.Add("style", "position:Relative");
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtcheckindate.Text = Convert.ToDateTime(Calendar1.SelectedDate).ToString("d");
            Calendar1.Visible = false;
            string strsql = "select first_name,middle_name,last_name,address,phone_no,id_proof_no,room_no,category,check_in_date,check_out_date,no_of_day,total_amount from tbl_Details where check_in_date like '" + txtcheckindate.Text + "'";
            SqlDataAdapter dt = new SqlDataAdapter(strsql, con);
            DataSet ds = new DataSet();
            dt.Fill(ds, "tbl_Details");
            con.Close();
            GridView2.DataSource = ds;
            GridView2.DataBind();
            GridView2.DataBind();
        }
    }
}