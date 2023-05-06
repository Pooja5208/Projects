using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

namespace HotelSystem
{
    public partial class Welcomeaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calender1.Visible = false;
                Calendar2.Visible = false;
            }
            
        }
        protected void btnrooms_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into dbo.tbl_Available3(Check_In_Date,Check_Out_Date,Adults,Children)values(@Check_In_Date,@Check_Out_Date,@Adults,@Children)", con);
            cmd.Parameters.AddWithValue("@Check_In_Date", txtcheckindate.Text);
            cmd.Parameters.AddWithValue("@Check_Out_Date", txtcheckoutdate.Text);
            cmd.Parameters.AddWithValue("@Adults", ddladults.Text);
            cmd.Parameters.AddWithValue("@Children", ddlchildren .Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Rooms.aspx");
            con.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calender1.Visible)
            {
                Calender1.Visible = false;
            }
            else
            {
                Calender1.Visible=true;
            }
            Calender1.Attributes.Add("style", "position:Relative");
        }

        protected void Calender1_SelectionChanged(object sender, EventArgs e)
        {
            txtcheckindate.Text = Convert.ToDateTime (Calender1.SelectedDate).ToString("d");
            Calender1.Visible = false;
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }
            Calendar2.Attributes.Add("style", "position:Relative");
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtcheckoutdate.Text = Convert.ToDateTime(Calendar2.SelectedDate).ToString("d");
            Calendar2.Visible = false;
        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime dp= Convert.ToDateTime(txtcheckindate.Text);
            
            if (e.Day.Date.CompareTo(dp) < 0)
           
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Aqua;
            }
        }

        protected void Calender1_DayRender(object sender, DayRenderEventArgs e)
        {
            
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Aqua;
            }
        }
    }
}
