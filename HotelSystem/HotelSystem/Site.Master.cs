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
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
            //SqlCommand com = new SqlCommand(con);
            con.Open();
            Label13.Text = Session["username"].ToString();
            //Session["username1"] = Label13.Text;
        }
    }
}