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
    public partial class RegisHistory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string strsql = "select first_name,last_name,contact_no,address from tbl_Registration";
            SqlDataAdapter dt = new SqlDataAdapter(strsql, con);
            DataSet ds = new DataSet();
            dt.Fill(ds, "tbl_Registration");
            con.Close();
            GridView2.DataSource = ds;
            GridView2.DataBind();
           
                
            }

        }
    }
