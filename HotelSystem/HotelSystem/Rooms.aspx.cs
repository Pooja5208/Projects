using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelSystem
{
    public partial class Rooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnstandardking_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("StandardKing.aspx");
        }

        protected void btndeluxetwin_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("DeluxeTwin.aspx");
        }

        protected void btndeluxeking_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("DeluxeKing.aspx");
        }

        protected void btnsuperiortwin_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("SuperiorTwin.aspx");
        }

        protected void btnsuperiorking_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("SuperiorKing.aspx");
        }
        protected void Button14_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("StandardTwin.aspx");
        }

        protected void btnjuniorsuite_Click(object sender, EventArgs e)
        {
            Response.Redirect("JuniorSuite.aspx");
        }

        protected void btnkingsuite_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("KingSuite.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("SKRinfo.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DTRinfo.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DKRinfo.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SuTRinfo.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SuKRinfo.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("STRinfo.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("JSRinfo.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("KSRinfo.aspx");
        }
    }
}