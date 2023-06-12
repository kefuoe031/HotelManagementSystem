using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementSystem.Views.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowUsers();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void ShowUsers()  //show employees
        {
            string Query = "select EmployeeID as EmployeeID, FirstName as FirstName, LastName as LastName, Email as Email from EmployeeTab";
            UsersGV.DataSource = Con.GetData(Query);
            UsersGV.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string FirstName = FirstNameTb.Value;
                string LastName = LastNameTb.Value;
                string DOB = DobTb.Value;     //DOB format is in YYYY-MM-DD
                string Gender = GenTb.Value;
                string PhoneNo = PhoneTb.Value;
                string Email = EmailTb.Value;
                string Password = PasswordTb.Value;

                string Query = "insert into EmployeeTab (FirstName,LastName,DOB,Gender,PhoneNo,Email,Password) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                Query = string.Format(Query, FirstName, LastName, DOB, Gender, PhoneNo, Email, Password);
                Con.setData(Query);
                ShowUsers();
                ErrMsg.InnerText = "User Added!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string FirstName = FirstNameTb.Value;
                string LastName = LastNameTb.Value;
                string DOB = DobTb.Value;     //DOB format is in YYYY-MM-DD
                string Gender = GenTb.Value;
                string PhoneNo = PhoneTb.Value;
                string Email = EmailTb.Value;
                string Password = PasswordTb.Value;


                string Query = "delete from EmployeeTab where EmployeeID= {0}";
                Query = string.Format(Query, UsersGV.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowUsers();
                ErrMsg.InnerText = "User Deleted!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {
            FirstNameTb.Value = "";
            LastNameTb.Value = "";
            DobTb.Value = "";
            GenTb.Value = "";
            PhoneTb.Value = "";
            EmailTb.Value = "";
            PasswordTb.Value = "";
        }
    }
}