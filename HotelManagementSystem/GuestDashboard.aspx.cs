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
            //get the guest ID to use to get existing booking records.
            string email = Session["email"].ToString();

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("Select GuestID, Password from GuestTab where Email = @email;",con);
            cmd.Parameters.AddWithValue("@email", email);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

            Session["GuestID"] = dt.Rows[0][0].ToString();
            Session["Password"] = dt.Rows[0][1].ToString();

            if (!IsPostBack)
            {
                GridView1.DataBind();
            }
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


        protected void CancelReservation_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            int id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from BookingTab where BookingID=@id  ",con);
                cmd.Parameters.AddWithValue("@id",id);
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Reservation canceled successfully." + "');", true);
            this.GridView1.DataBind();
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Error cancelling reservation. Please try again." + "');", true);
                con.Close();
            }
        }

    }
}