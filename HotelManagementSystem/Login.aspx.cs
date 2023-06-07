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


namespace HotelManagementSystem.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                con.Open();
            }
            //if cannot connect to DB
            catch (Exception exc) {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + exc + "');", true);
                con.Close();
            }
            con.Close();
        }

        protected void Login_Click(object sender, EventArgs e)
            
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            //if admin, redirect to admin dashboard
            if (AdminCb.Checked){
                //Do something
                }
            //if registered guest, redirect to bookings page
            else if (UserCb.Checked)
            {
                SqlCommand check_User_Name = new SqlCommand("SELECT COUNT(*) FROM GuestTab WHERE Email = @user and Password= @password", con);
                check_User_Name.Parameters.AddWithValue("@user", emailTb.Text);
                check_User_Name.Parameters.AddWithValue("@password", password.Text);
                int UserExist = (int)check_User_Name.ExecuteScalar();

                if (UserExist > 0)
                {
                    //Username exist
                    Session["email"] = emailTb.Text;
                    Session["password"] = password.Text;
                    Response.Redirect("GuestBooking.aspx");
                    con.Close();
                }
                else
                {
                    //Username doesn't exist.
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.onload=function(){");
                    sb.Append("alert('");
                    sb.Append(UserExist);
                    sb.Append("')};");
                    sb.Append("</script>");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                    con.Close();
                }
            }
            

            // if unregistered guest, "click register a new profile" label on the login page
        }

        protected void AdminCb_CheckedChanged(object sender, EventArgs e)
        {
            UserCb.Checked = false; //not sure why this isnt working
        }

        protected void UserCb_CheckedChanged(object sender, EventArgs e)
        {
            AdminCb.Checked = false; //not sure why this isnt working
        }
    }
}