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
    public partial class History : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lbldisplay.Text = Session["next"].ToString();
            grid();
        }

        protected void grid()
        {
            string constr = @"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select Top 1 room_no,category,check_in_date,check_out_date,adults,children,total_amount from tbl_Details where room_no ='"+lbldisplay.Text+"' ORDER BY Id DESC"))

                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from tbl_Details where Id IN(SELECT top 1 Id FROM tbl_Details WHERE room_no ='"+lbldisplay.Text+"' ORDER BY Id DESC)", con);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("update tbl_Rooms set status = 'Available' where room_no ='" + Convert.ToInt32(lbldisplay.Text) + "'", con);
            cmd1.ExecuteNonQuery();
            Response.Write("<script language='javascript'>alert('Booking has been CANCELED!!');</script>");
            Server.Transfer("welcomeaspx.aspx", true);
        }
    }
}
