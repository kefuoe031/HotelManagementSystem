using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementSystem
{
    public partial class BookingConfirmation : System.Web.UI.Page
    {
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
                //do something
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(ex);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
                
            
          

        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            //Go to Bill display > reporting functionality
        }

        protected void makeChanges_Click(object sender, EventArgs e)
        {
            //go back to Guest booking Page
            
        }
    }
}