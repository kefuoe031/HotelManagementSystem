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
    public partial class RegisterAGuest : System.Web.UI.Page
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            string password="";
            if(passwordTB.Text == confirmPass.Text)
            {
                password += confirmPass.Text;
            }
            else
            {
                //do something
            }

            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                SqlCommand cmd = new SqlCommand("insert into GuestTab (GuestTitle, FirstName, LastName, DOB, Gender, PhoneNo, Email, Password, PassportNo, Address, Postcode, City, Country) values (@title, @fname, @lname, @dob, @gender, @phone, @email, @pass, @ID, @addr, @zip, @city, @country );", con);
                cmd.Parameters.AddWithValue("@title", DropDownList1.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@fname", firstNameTB.Text);
                cmd.Parameters.AddWithValue("@lname", lastNametb.Text);
                cmd.Parameters.AddWithValue("@dob", dobTB.Text);
                cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@phone", phone.Text);
                cmd.Parameters.AddWithValue("@email", emailTB.Text);
                cmd.Parameters.AddWithValue("@pass", password.ToString());
                cmd.Parameters.AddWithValue("@ID", id.Text);
                cmd.Parameters.AddWithValue("@addr", addrtb.Text); 
                cmd.Parameters.AddWithValue("@zip", postCodeTB.Text);
                cmd.Parameters.AddWithValue("@city", cityTB.Text);
                cmd.Parameters.AddWithValue("@country", countryTB.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "You have been successfully registered." + "');", true);
                register.Enabled = false;
            }
            catch
            {
                //do something
            }
        }

        protected void backtologin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}