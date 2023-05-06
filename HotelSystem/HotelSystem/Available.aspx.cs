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
    public partial class Available : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string strsql = "select room_no,category,floor_no,price_per_day from tbl_Rooms where status like 'Available'";
            SqlDataAdapter dt = new SqlDataAdapter(strsql, con);
            DataSet ds = new DataSet();
            dt.Fill(ds, "tbl_Rooms");
            con.Close();
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
    }
}