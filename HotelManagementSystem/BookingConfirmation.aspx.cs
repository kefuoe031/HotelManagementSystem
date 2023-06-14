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
        protected int BookingID;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //calculating the total price based on room price and total number of days booked to stay
                DateTime checkIn = (DateTime)Session["checkIn"];
                DateTime checkOut = (DateTime)Session["checkOut"];

                int totalDays = (checkOut - checkIn).Days;
                int length = Session["roomPrice"].ToString().Length;
                string price = Session["roomPrice"].ToString().Substring(1, length-3);
                double cost = double.Parse(price); 
                double total = totalDays * cost;

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
                roomPrice.Text = total.ToString();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert('Message: " + ex + "');", true);
            }
      
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            //record into db
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                int guestID = (int)Session["gID"];

                //insert record into db
                SqlCommand addRecord = new SqlCommand("insert into BookingTab (GuestID, CheckInDate, CheckOutDate, FirstName, LastName, NumAdults, NumChildren, RoomType, SpecialReq, Allergies, BookingDate, Amount) values(@GuestID, @CheckInDate, @CheckOutDate, @FirstName, @LastName, @NumAdults, @NumChildren, @RoomType, @SpecialReq, @Allergies, @BookingDateTime, @Amount );", con);
                addRecord.Parameters.AddWithValue("@GuestID",guestID.ToString());
                addRecord.Parameters.AddWithValue("@CheckInDate", checkInDate.Text);
                addRecord.Parameters.AddWithValue("@CheckOutDate", checkOutDate.Text);
                addRecord.Parameters.AddWithValue("@FirstName", fname.Text);
                addRecord.Parameters.AddWithValue("@LastName", lname.Text);
                addRecord.Parameters.AddWithValue("@NumAdults", numAdults.Text);
                addRecord.Parameters.AddWithValue("@NumChildren", numChildren.Text);
                addRecord.Parameters.AddWithValue("@RoomType", roomType.Text);
                addRecord.Parameters.AddWithValue("@SpecialReq", specReq.Text);
                addRecord.Parameters.AddWithValue("@Allergies", allerg.Text);
                addRecord.Parameters.AddWithValue("@BookingDateTime", DateTime.Now.Date);
                addRecord.Parameters.AddWithValue("@Amount", roomPrice.Text);

                addRecord.ExecuteNonQuery();

                SqlCommand getBookingID = new SqlCommand("select max(BookingID) from BookingTab;", con);
                BookingID = (int)getBookingID.ExecuteScalar();
                Session["bookingID"] = BookingID;

                con.Close();

                //Go to Bill display > reporting functionality
                Response.Redirect("Invoice.aspx");
        }
            catch (Exception ex)
            {
                //do something
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "ERROR" + "');", true);
                con.Close();
            }




}

        

        
    }
}