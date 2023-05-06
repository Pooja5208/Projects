﻿using System;
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
    public partial class DeluxeTwin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string strsql = "select * from tbl_Rooms where category like 'Deluxe Twin Room'";
            SqlDataAdapter dt = new SqlDataAdapter(strsql, con);
            DataSet ds = new DataSet();
            dt.Fill(ds, "tbl_Rooms");
            con.Close();
            GridView2.DataSource = ds;
            GridView2.DataBind();
            foreach (GridViewRow row in GridView2.Rows)
            {

                for (int i = 0; i < GridView2.Rows.Count; i++)
                {

                    string status = row.Cells[5].Text;

                    if (status.Equals("Not-Available"))
                    {

                        row.Visible = false;
                    }
                }
            }
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                con.Open();
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row1 = GridView2.Rows[rowIndex];
                //Get current row values. if you are using TemplateField, you could also use FindControl method()
                string room = row1.Cells[1].Text;
                string cat = row1.Cells[2].Text;
                string price = row1.Cells[4].Text;
                //pass value to destination page
                Response.Redirect("~/FinalBooking?Id=" + room + "&name=" + cat + "&priceday=" + price);
            }
        }
    }
}