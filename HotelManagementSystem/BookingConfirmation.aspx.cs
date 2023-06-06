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
    public partial class BookingConfirmation : System.Web.UI.Page
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                checkInDate.Text = Session["checkIn"].ToString();
                checkOutDate.Text = Session["checkOut"].ToString();
                numAdults.Text = Session["adults"].ToString();
                numChildren.Text = Session["child"].ToString();
                fname.Text = Session["fname"].ToString();
                lname.Text= Session["lname"].ToString();
                idpass.Text = Session["ID"].ToString();
                allerg.Text = Session["allergy"].ToString();
                roomType.Text = Session["roomType"].ToString();
                phone.Text = Session["phone"].ToString();
                specReq.Text = Session["spec"].ToString();
                roomPrice.Text = Session["roomPrice"].ToString();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert('Message: " + ex + "');", true);
            }
                
            
          

        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            //record into db
            SqlConnection con = new SqlConnection();
            try
            {
                //con.Open();
                //SqlCommand addRecord = new SqlCommand("insert into $table$ (columns) values();");

            }
            catch (Exception ex)
            {
                //do something
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + ex + "');", true);
            }

            //Go to Bill display > reporting functionality
            
        }

        protected void makeChanges_Click(object sender, EventArgs e)
        {
            //go back to Guest booking Page
            
        }

        
    }
}