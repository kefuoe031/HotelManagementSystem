using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementSystem
{
    public partial class GuestDashboard  : System.Web.UI.Page 
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        protected void Page_Load(object sender, EventArgs e)
        {
            //get the guest ID
            string email = Session["email"].ToString();
            
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("Select GuestID, Password from GuestTab where Email = @email;",con);
            cmd.Parameters.AddWithValue("@email", email);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

            Session["GuestID"] = dt.Rows[0][0].ToString();
            Session["Password"] = dt.Rows[0][1].ToString();
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