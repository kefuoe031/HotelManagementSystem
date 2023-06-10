using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementSystem
{
    public partial class GuestDashboard : System.Web.UI.Page
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuestBooking.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuestBooking.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuestBooking.aspx");
        }
    }
}