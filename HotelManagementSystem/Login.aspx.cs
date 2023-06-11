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
        SqlCommand checkUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
           
            con.Close();
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);

            try
            {
                con.Open();

                if (AdminCb.Checked && !UserCb.Checked)
                {
                    checkUser= new SqlCommand("SELECT COUNT(*) FROM EmployeeTab WHERE Email = @user and Password= @password", con);
                    checkUser.Parameters.AddWithValue("@user", emailTb.Text);
                    checkUser.Parameters.AddWithValue("@password", password.Text);
                    int UserExist = (int)checkUser.ExecuteScalar();

                    if (UserExist > 0)
                    {
                        //User exists
                        Session["email"] = emailTb.Text;
                        Session["password"] = password.Text;
                        //if admin, redirect to admin dashboard
                        Response.Redirect("UserDashboard.aspx");
                        con.Close();
                    }
                    else
                    {
                        //User doesn't exist.
                        ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "User doesn't exist. Please check your credentials and try again." + "');", true);
                        con.Close();
                    }
                }
                
                else if (UserCb.Checked && !AdminCb.Checked)
                {
                    checkUser = new SqlCommand("SELECT COUNT(*) FROM GuestTab WHERE Email = @user and Password= @password", con);
                    checkUser.Parameters.AddWithValue("@user", emailTb.Text);
                    checkUser.Parameters.AddWithValue("@password", password.Text);
                    int UserExist = (int)checkUser.ExecuteScalar();

                    if (UserExist > 0)
                    {
                        //Username exist
                        Session["email"] = emailTb.Text;
                        Session["password"] = password.Text;
                        //if registered guest, redirect to bookings page
                        Response.Redirect("GuestDashboard.aspx");
                        con.Close();
                    }
                    else
                    {
                        //User doesn't exist.
                        ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "User doesn't exist. Please check your credentials and try again." + "');", true);
                        con.Close();
                    }
                }
                else if( AdminCb.Checked && UserCb.Checked){
                        ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please check only one checkbox and and try again." + "');", true);
                    }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please check one of the checkboxes and try again." + "');", true);
                }
            }
            //if cannot connect to DB
            catch 
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Error logging in. Please check your connection and try again." + "');", true);
                con.Close();
            }

            //if unregistered guest, "click register as a new guest" label on the login page
            //this functionality is coded into html
        }

        protected void AdminCb_CheckedChanged(object sender, EventArgs e)
        {
            UserCb.Checked = false;
            AdminCb.Checked = true;
            
        }

        protected void UserCb_CheckedChanged(object sender, EventArgs e)
        {
            AdminCb.Checked = false;
            UserCb.Checked = true;
        }

       
    }
}