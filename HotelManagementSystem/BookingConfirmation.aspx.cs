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
        protected string userEmail;
        protected string userPassword;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                userEmail = Session["email"].ToString();
                userPassword = Session["password"].ToString();
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
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                //get the GuestID from db
                SqlCommand getGuestID = new SqlCommand("select GuestID from GuestTab where Email= @email and Password= @password", con);
                getGuestID.Parameters.AddWithValue("@email", userEmail);
                getGuestID.Parameters.AddWithValue("@password", userPassword);
                int guestID = (int)getGuestID.ExecuteScalar();

                //insert record into db
                SqlCommand addRecord = new SqlCommand("insert into BookingTab (GuestID, CheckInDate, CheckOutDate, FirstName, LastName, NumAdults, NumChildren, RoomType, SpecialReq, Allergies, BookingDateTime) values(@GuestID, @CheckInDate, @CheckOutDate, @FirstName, @LastName, @NumAdults, @NumChildren, @RoomType, @SpecialReq, @Allergies, @BookingDateTime );", con);
                addRecord.Parameters.AddWithValue("@GuestID",guestID);
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
                addRecord.ExecuteNonQuery();
                con.Close();

                //Go to Bill display > reporting functionality
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Successful"+ "');", true);
                //Response.Redirect("Invoice.aspx");
            }
            catch (Exception ex)
            {
                //do something
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + ex + "');", true);
                con.Close();
            }

            
           

        }

        

        
    }
}