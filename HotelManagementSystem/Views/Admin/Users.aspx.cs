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
            string Query = "select EmployeeID as EmployeeID, FirstName as FirstName, LastName as LastName, PhoneNo as PhoneNumber, Email as Email from EmployeeTab";
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

        int Key = 0;
        protected void UsersGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            Key = Convert.ToInt32(UsersGV.SelectedRow.Cells[1].Text);
            FirstNameTb.Value = UsersGV.SelectedRow.Cells[2].Text;
            LastNameTb.Value = UsersGV.SelectedRow.Cells[3].Text;
            //DobTb.Value = UsersGV.SelectedRow.Cells[4].Text;
            //GenTb.Value = UsersGV.SelectedRow.Cells[5].Text;
            PhoneTb.Value = UsersGV.SelectedRow.Cells[4].Text;
            EmailTb.Value = UsersGV.SelectedRow.Cells[5].Text;
            //PasswordTb.Value = UsersGV.SelectedRow.Cells[8].Text;
        }

        protected void EditBtn_Click(object sender, EventArgs e)
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

                string Query = "update EmployeeTab set FirstName='{0}',LastName='{1}',PhoneNo='{2}',Email='{3}' where EmployeeID= {4}";
                Query = string.Format(Query, FirstName, LastName, PhoneNo, Email, UsersGV.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowUsers();
                ErrMsg.InnerText = "Users Updated!"; 
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }


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