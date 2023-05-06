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
    public partial class FinalBooking : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)

        {
            display();
            gridcode();
            if (Request.QueryString["Id"] != null && Request.QueryString["name"] != null && Request.QueryString["priceday"] != null)
            txtroomno.Text = Request.QueryString["Id"].ToString();
            txtcategory.Text= Request.QueryString["name"].ToString();
            txtpriceperday.Text = Request.QueryString["priceday"].ToString();
            string a = txtnoofdays.Text;
            string b = txtpriceperday.Text;
            float c = float.Parse(a) * float.Parse(b);
            txttotalprice.Text = c.ToString();
            Session["room"] = txtroomno.Text;

        }
        protected void display()
         {
            string constr = @"Data Source =.; Initial Catalog = hotel_db; Integrated Security = True";
            Session["next"] = txtroomno.Text;
            using (SqlConnection con = new SqlConnection(constr))
            {
              using (SqlCommand cmd = new SqlCommand("select Top 1 * from tbl_Available3 ORDER BY Id DESC"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();

                        txtcheckin.Text = sdr["Check_In_Date"].ToString();
                        txtcheckout.Text = sdr["Check_Out_Date"].ToString();
                        txtadults.Text = sdr["Adults"].ToString();
                        txtchildren.Text = sdr["Children"].ToString();
                    }

                    DateTime FromYear = Convert.ToDateTime(txtcheckin.Text);
                    DateTime ToYear = Convert.ToDateTime(txtcheckout.Text);
                    TimeSpan objTimeSpan = ToYear - FromYear;
                    double Days = Convert.ToDouble(objTimeSpan.TotalDays);
                    double Days1 = Days + 1;
                    txtnoofdays.Text = Convert.ToString(Days1);
                    con.Close();
                }
            }
         }
        

        protected void gridcode()
        {
            string mycon= "Data Source =.; Initial Catalog = hotel_db; Integrated Security = True";
            string myquery = "select room_no,category,price_per_day from tbl_AllRooms where room_no= '" + Request.QueryString["room_no"] + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
           
        }
        protected void btnbook_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=hotel_db;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into dbo.tbl_Details(first_name,middle_name,last_name,address,phone_no,country,id_proof,id_proof_no,check_in_date,check_out_date,adults,children,no_of_day,amount_per_day,total_amount,room_no,category)values(@first_name,@middle_name,@last_name,@address,@phone_no,@country,@id_proof,@id_proof_no,@check_in_date,@check_out_date,@adults,@children,@no_of_day,@amount_per_day,@total_amount,@room_no,@category)", con);
            cmd.Parameters.AddWithValue("@first_name", txtfirstname.Text);
            cmd.Parameters.AddWithValue("@middle_name", txtmiddlename.Text);
            cmd.Parameters.AddWithValue("@last_name", txtlastname.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@phone_no", txtcontactno.Text);
            cmd.Parameters.AddWithValue("@country", ddlcountry.Text);
            cmd.Parameters.AddWithValue("@id_proof", ddlidproof.Text);
            cmd.Parameters.AddWithValue("@id_proof_no", txtidproofno.Text);
            cmd.Parameters.AddWithValue("@check_in_date", txtcheckin.Text);
            cmd.Parameters.AddWithValue("@check_out_date", txtcheckout.Text);
            cmd.Parameters.AddWithValue("@adults", txtadults.Text);
            cmd.Parameters.AddWithValue("@children", txtchildren.Text);
            cmd.Parameters.AddWithValue("@no_of_day", txtnoofdays.Text);
            cmd.Parameters.AddWithValue("@amount_per_day", txtpriceperday.Text);
            cmd.Parameters.AddWithValue("@total_amount", txttotalprice.Text);
            cmd.Parameters.AddWithValue("@room_no", txtroomno.Text);
            cmd.Parameters.AddWithValue("@category", txtcategory.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'>alert('Booking has been done successfully!!');</script>");
            Server.Transfer("welcomeaspx.aspx", true);
            SqlCommand cmd1 = new SqlCommand("update tbl_Rooms set status = 'Not-Available' where room_no ='"+ Convert.ToInt32(txtroomno.Text)+"'",con);
            cmd1.ExecuteNonQuery();
        }

        protected void ddlidproof_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlidproof.SelectedItem.Text=="Aadhar Card")
            {
                RegularExpressionValidator4.ValidationExpression = "^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}$";
                RegularExpressionValidator4.ErrorMessage = "Aadhar Number is not correct.";
            }
            else
            {
                RegularExpressionValidator4.ValidationExpression = "^(([A-Z]{2}[0-9]{2})( )|([A-Z]{2}-[0-9]{2}))((19|20)[0-9][0-9])[0-9]{7}$";
                RegularExpressionValidator4.ErrorMessage = "Driving Liscence Number is not correct.";
            }
        }
     }
    }