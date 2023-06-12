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
                string RoomType = RoomTypeTb.SelectedItem.Text.ToString();
               // string RoomPrice = RPriceTb.Value;
                string HotelCode = HCodeTb.Value;
                string Occupancy = OccTb.Value;

                string Query = "insert into RoomTab values('{0}','{1}','{2}','{3}')";
                Query = string.Format(Query, RoomNum, RoomType, HotelCode, Occupancy);
                Con.setData(Query);
                ShowRooms();
                ErrMsg.InnerText = "Room Added!";

                RNumberTb.Value = "";
                RoomTypeTb.SelectedIndex = -1;
                //RPriceTb.Value = "";
                HCodeTb.Value = "";
                OccTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void RoomsGV_SelectedIndexChanged(object sender, EventArgs e)
        {     
            //Rooms gridview rows
            Key = Convert.ToInt32(RoomsGV.SelectedRow.Cells[5].Text);   //RoomID in row 5
            RNumberTb.Value = RoomsGV.SelectedRow.Cells[1].Text;
            RoomTypeTb.SelectedItem.Text = RoomsGV.SelectedRow.Cells[2].Text;
            HCodeTb.Value = RoomsGV.SelectedRow.Cells[3].Text;
            OccTb.Value = RoomsGV.SelectedRow.Cells[4].Text;
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RoomNum = RNumberTb.Value;
                string RoomType = RoomTypeTb.SelectedItem.Text.ToString();
                // string RoomPrice = RPriceTb.Value;
                string HotelCode = HCodeTb.Value;
                string Occupancy = OccTb.Value;

                string Query = "update RoomTab set RoomNo ='{0}',RoomType = '{1}',HotelCode = '{2}',Occupancy = '{3}' where RoomID = {4}";
                Query = string.Format(Query, RoomNum, RoomType, HotelCode, Occupancy, RoomsGV.SelectedRow.Cells[5].Text);
                Con.setData(Query);
                ShowRooms();
                ErrMsg.InnerText = "Room Updated!";

                RNumberTb.Value = "";
                RoomTypeTb.SelectedIndex = -1;
                //RPriceTb.Value = "";
                HCodeTb.Value = "";
                OccTb.Value = "";
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
                string Query = "delete from RoomTab where RoomID= {0}";
                Query = string.Format(Query, RoomsGV.SelectedRow.Cells[5].Text);
                Con.setData(Query);
                ShowRooms();
                ErrMsg.InnerText = "Room Deleted!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {
            RNumberTb.Value = "";
            HCodeTb.Value = "";
            OccTb.Value = "";
        }
    }
}