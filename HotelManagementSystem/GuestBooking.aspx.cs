using System;
using System.Collections.Generic;
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
        protected void Page_Load(object sender, EventArgs e)
        {

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
            //Validate all fields
            if (checkOutCalendar.SelectedDate < checkInCalendar.SelectedDate)
            {
                //show message to re-select a checkout date
            }
            //else if () { }
            
            try{
                //capture cookies
                Session["checkIn"] = checkInCalendar.SelectedDate.ToShortDateString();
                Session["checkOut"] = checkOutCalendar.SelectedDate.ToShortDateString();
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

                //then redirect to booking confirmation
                Response.Redirect("BookingConfirmation.aspx");
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
    }
}