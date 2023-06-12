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
    public partial class GuestBooking : System.Web.UI.Page
    {
        protected string checkInDate;
        protected string checkOutDate;
        protected string userEmail;
        protected string userPassword;
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            userEmail = Session["email"].ToString();
            userPassword = Session["password"].ToString();
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select FirstName, LastName, PassportNo from GuestTab where Email=@email", con);
                cmd.Parameters.AddWithValue("@email", userEmail);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                firstName.Text = dt.Rows[0][0].ToString();
                lastName.Text = dt.Rows[0][1].ToString();
                ID.Text = dt.Rows[0][2].ToString();
                con.Close();
            }
            catch
            {
                //do something
                con.Close();
            }

        }

        protected void checkInCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.Date < DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void checkOutCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
            }
            if (checkInCalendar.SelectedDate != null)
            {
                if (e.Day.Date < checkInCalendar.SelectedDate)
                {
                    e.Day.IsSelectable = false;
                    e.Cell.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void reserve_Click(object sender, EventArgs e)
        {
            TextBox[] fields = { firstName, lastName,ID,allergies,phone,specReq};

            //Validate all fields
            if (checkOutCalendar.SelectedDate < checkInCalendar.SelectedDate)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Check-out date cannot be before Check-in date." + "');", true);
            }
            else if (checkInCalendar.SelectedDate == null || checkOutCalendar.SelectedDate == null) {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please check if both your Check-in and Check-out dates are selected." + "');", true);
            }
            else if(adultsDDL.SelectedValue == "Select" || childrenDDL.SelectedValue =="Select")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please select the number of Adults and/or Children." + "');", true);
            }
            else if(RoomGridView1.SelectedRow == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please select a room you would like to book." + "');", true);
            }
            else
            {
                int i = 0;
                do
                {
                    if (fields[i].Text == "" || fields[i].Text==null)
                    {
                        //Message to check if all fields are completed
                        ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please check if all fields are completed." + "');", true);
                        fields[i].BorderColor = System.Drawing.Color.Red;
                        return;
                    }
                    i++;
                }
                while (i < fields.Length);
            }

            

            try
            {
                //capture cookies
                Session["checkIn"] = (DateTime)checkInCalendar.SelectedDate.Date;
                Session["checkOut"] = (DateTime)checkOutCalendar.SelectedDate.Date;
                Session["adults"] = adultsDDL.SelectedItem;
                Session["child"] = childrenDDL.SelectedItem;
                Session["fname"] = firstName.Text;
                Session["lname"] = lastName.Text;
                Session["ID"] = ID.Text;
                Session["phone"] = phone.Text;
                Session["allergy"] = allergies.Text;
                Session["spec"] = specReq.Text;
                Session["roomType"] = RoomGridView1.SelectedRow.Cells[1].Text + " : " + RoomGridView1.SelectedRow.Cells[4].Text;
                Session["roomPrice"] = RoomGridView1.SelectedRow.Cells[2].Text;
                Session["email"] = userEmail;
                Session["password"] = userPassword;

                //then redirect to booking confirmation
                Response.Redirect("BookingConfirmation.aspx");
                //for(int i=0;i<fields.Length; i++)
                //{
                //    fields[i].BorderColor= "#ced4da";
                //}
                
            }
            catch(Exception ex)
            {
                //catch ex
            }
             
            
        }

        protected void checkInCalendar_SelectionChanged(object sender, EventArgs e)
        {
            checkInDate = checkInCalendar.SelectedDate.ToString();
            checkOutDate = checkOutCalendar.SelectedDate.ToString();
        }

        protected void RoomGridView1_DataBound(object sender, EventArgs e)
        {

        }
    }
}