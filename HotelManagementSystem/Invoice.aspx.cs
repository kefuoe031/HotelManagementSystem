using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HotelManagementSystem
{
    public partial class Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void goToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuestBooking.aspx");
        }
    }
}