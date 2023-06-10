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
            //Validation

            TextBox [] ctrls = { firstNameTB,lastNametb,dobTB,phone,emailTB,passwordTB,confirmPass,id,addrtb,postCodeTB,cityTB,countryTB };
            string password="";
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                //check if all fields are filled
                if (DropDownList1.SelectedValue == "---Select---")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please select your title." + "');", true);
            }
                else if(DropDownList2.SelectedValue== "---Select---")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please select your gender" + "');", true);
            }
                else
            {
                int i = 0;
                do
                {
                    if (ctrls[i].Text == "" || ctrls[i].Text == null)
                    {
                        //Message to check if all fields are completed
                        ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please check if all fields are completed." + "');", true);
                        ctrls[i].BorderColor = System.Drawing.Color.Red;
                        return;
                    }
                    i++;
                }
                while (i < ctrls.Length);
            }
                //check if password and confirm password matches
                if(passwordTB.Text != confirmPass.Text)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Passwords do not match. Please try again." + "');", true);
                    passwordTB.Text = "";
                    confirmPass.Text = "";
                }
                else
                {
                    //check if the email is already registered
                    con.Open();
                    SqlCommand checkEmail = new SqlCommand("Select * from GuestTab where Email = '" + emailTB.Text + "';", con);
                    int userExists = (int)checkEmail.ExecuteScalar();

                    if (userExists > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "This user already exists. Please go to the login page." + "');", true);
                        con.Close();
                    }
                    else if (userExists <= 0)
                    {
                        con.Open();
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
                }
            
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Error registering. Please check your connection and try again." + "');", true);
                con.Close();
            }
        }

        protected void backtologin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}