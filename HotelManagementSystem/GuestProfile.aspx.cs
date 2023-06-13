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
    public partial class GuestProfile : System.Web.UI.Page
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        int guestID;
        string currentPassword;
        protected void makeReadOnly(bool b)
        {
            TextBox[] txb = { firstNameTB, lastNametb, dobTB, phone, emailTB, id, addrtb, postCodeTB, cityTB, countryTB };
            int i = 0;
            do
            {
                txb[i].ReadOnly = b;
                i++;
            }
            while (i < txb.Length);
            DropDownList1.Enabled = !b;
            DropDownList1.CssClass = "form-control";
            DropDownList2.Enabled = !b;
            DropDownList2.CssClass = "form-control";
        }

        protected void getRecords()
        {
            SqlConnection con = new SqlConnection(connectionString);
            guestID = Convert.ToInt32(Session["GuestID"]);
            currentPassword = Session["Password"].ToString();
            makeReadOnly(true);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select GuestTitle, FirstName, Lastname, DOB, Gender, PhoneNo, Email,Password, PassportNo, Address, Postcode, City, Country from GuestTab where GuestID=@ID", con);
                cmd.Parameters.AddWithValue("@ID", guestID);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (!Page.IsPostBack)
                {
                    DropDownList1.SelectedValue = dt.Rows[0][0].ToString();
                    firstNameTB.Text = dt.Rows[0][1].ToString();
                    lastNametb.Text = dt.Rows[0][2].ToString();
                    dobTB.Text = dt.Rows[0][3].ToString();
                    DropDownList2.SelectedValue = dt.Rows[0][4].ToString();
                    phone.Text = dt.Rows[0][5].ToString();
                    emailTB.Text = dt.Rows[0][6].ToString();
                    string CurrentPassword = dt.Rows[0][7].ToString();
                    id.Text = dt.Rows[0][8].ToString();
                    addrtb.Text = dt.Rows[0][9].ToString();
                    postCodeTB.Text = dt.Rows[0][10].ToString();
                    cityTB.Text = dt.Rows[0][11].ToString();
                    countryTB.Text = dt.Rows[0][12].ToString();
                }

                con.Close();
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Error fetching details. Please check your connection and try again." + "');", true);
                con.Close();
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Set LoggedIn label on GuestMaster page
            ((Label)Master.FindControl("Label1")).Text = Session["loggedin"].ToString();

            getRecords();

        }

        protected void edit_Click(object sender, EventArgs e)
        {
            makeReadOnly(false);
        }

        protected void save_Click(object sender, EventArgs e)
        {
            TextBox[] ctrls = { firstNameTB, lastNametb, dobTB, phone, emailTB, id, addrtb, postCodeTB, cityTB, countryTB };
            string password="";
            SqlConnection con = new SqlConnection(connectionString);

            //check if all fields are filled
            if (DropDownList1.SelectedValue == "---Select---")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please select your title." + "');", true);
                makeReadOnly(false);
            }
            else if (DropDownList2.SelectedValue == "---Select---")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Please select your gender" + "');", true);
                makeReadOnly(false);
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
                        makeReadOnly(false);
                        ctrls[i].BorderColor = System.Drawing.Color.Red;

                        return;
                    }
                    i++;
                }
                while (i < ctrls.Length);
            }

            try
            {               
                    password = confirmPass.Text;
                    //check if the email is already registered
                    
                if (confirmPass.Text != "" && passwordTB.Text !="" && passwordTB.Text==currentPassword)
                {
                    SqlCommand cmd = new SqlCommand("update GuestTab set GuestTitle = @title , FirstName = @fname, LastName = @lname, DOB = @dob, Gender = @gender, PhoneNo = @phone, Email = @email, Password = @pass, PassportNo = @ID, Address = @addr, Postcode = @zip, City = @city, Country = @country where GuestID= @Gid;", con);
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
                    cmd.Parameters.AddWithValue("@Gid", guestID);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    getRecords();
                    ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Details updated successfully." + "');", true);
                    
                }
                else if(confirmPass.Text=="")
                {
                    SqlCommand cmd = new SqlCommand("update GuestTab set GuestTitle = @title , FirstName = @fname, LastName = @lname, DOB = @dob, Gender = @gender, PhoneNo = @phone, Email = @email, PassportNo = @ID, Address = @addr, Postcode = @zip, City = @city, Country = @country where GuestID= @Gid;", con);
                    cmd.Parameters.AddWithValue("@title", DropDownList1.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@fname", firstNameTB.Text.ToString());
                    cmd.Parameters.AddWithValue("@lname", lastNametb.Text);
                    cmd.Parameters.AddWithValue("@dob", dobTB.Text);
                    cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@phone", phone.Text);
                    cmd.Parameters.AddWithValue("@email", emailTB.Text);
                    cmd.Parameters.AddWithValue("@ID", id.Text);
                    cmd.Parameters.AddWithValue("@addr", addrtb.Text);
                    cmd.Parameters.AddWithValue("@zip", postCodeTB.Text);
                    cmd.Parameters.AddWithValue("@city", cityTB.Text);
                    cmd.Parameters.AddWithValue("@country", countryTB.Text);
                    cmd.Parameters.AddWithValue("@Gid", guestID);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    getRecords();
                    ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Details updated successfully." + "');", true);
                    
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "The password you have entered does not match your current password." + "');", true);
                }

            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Error updating details. Please check your connection and try again." + "');", true);
                con.Close();
            }
        }
    }
}