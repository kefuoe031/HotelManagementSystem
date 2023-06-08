using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace HotelManagementSystem.Views.Admin
{
    public partial class Rooms : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowRooms();
            GetRoomTypes();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void ShowRooms()
        {
            string Query = "select * from RoomTab";
            RoomsGV.DataSource = Con.GetData(Query);
            RoomsGV.DataBind();
        }

        private void GetRoomTypes()
        {
            string Query = "Select * from RoomTypeTab";
            RoomTypeTb.DataTextField = Con.GetData(Query).Columns["RoomType"].ToString();
            RoomTypeTb.DataValueField = Con.GetData(Query).Columns["RoomTypeID"].ToString();
            RoomTypeTb.DataSource = Con.GetData(Query);
            RoomTypeTb.DataBind();
        }
        protected void UploadFile(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RoomNum = RNumberTb.Value;
                string RoomType = RoomTypeTb.SelectedValue.ToString();
               // string RoomPrice = RPriceTb.Value;
                string HotelCode = HCodeTb.Value;
                string Occupancy = "Available";

                string Query = "insert into RoomTab values('{0}','{1}','{2}','{3}')";
                Query = string.Format(Query, RoomNum, RoomType, HotelCode, Occupancy);
                Con.setData(Query);
                ShowRooms();
                ErrMsg.InnerText = "Room Added!";

                RNumberTb.Value = "";
                RoomTypeTb.SelectedIndex = -1;
                //RPriceTb.Value = "";
                HCodeTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}