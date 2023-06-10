using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementSystem
{
    public partial class GuestProfile : System.Web.UI.Page
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        protected void makeReadOnly(bool b)
        {
            TextBox[] txb = { firstNameTB, lastNametb, dobTB, phone, emailTB, passwordTB, confirmPass, id, addrtb, postCodeTB, cityTB, countryTB };
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
        protected void Page_Load(object sender, EventArgs e)
        {
            makeReadOnly(true);
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            makeReadOnly(false);
        }
    }
}