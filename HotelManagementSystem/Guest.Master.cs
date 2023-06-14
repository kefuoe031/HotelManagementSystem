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
    public partial class Guest : System.Web.UI.MasterPage
    {
        public string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                setLoggedInVal((int)Session["gID"]);
            }
        }
        public void setLoggedInVal(int gID)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd1 = new SqlCommand("Select FirstName, LastName from GuestTab where GuestID= @Id", con);
            cmd1.Parameters.AddWithValue("@Id", gID);
            DataTable dt1 = new DataTable();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            sda1.Fill(dt1);
            try
            {
                var pageHandler = HttpContext.Current.CurrentHandler;
                Label1.Text = "Logged-In: " + dt1.Rows[0][0].ToString() + " " + dt1.Rows[0][1].ToString();
            }
            catch
            {

            }
        }
    }
}