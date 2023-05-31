﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace HotelManagementSystem.Views.Admin
{
    public partial class RoomType : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowRoomType();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void ShowRoomType()
        {
            string Query = "select RoomType as RType, RoomPrice as RPrice, DefaultRoomPrice as DefRPrice, RoomDesc as RDescription from RoomTypeTab";
            RoomTypeGV.DataSource = Con.GetData(Query);
            RoomTypeGV.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Images/");

            //Check whether Directory (Folder) exists.

            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName
                                    (FileUpload1.FileName));

            //Display the Picture in Image control.
            Image1.ImageUrl = "~/Images/" + Path.GetFileName
                                    (FileUpload1.FileName);
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RoomType = RTypeTb.Value;
                string RoomPrice = RPriceTb.Value;
                string DefRoomPrice = DefRPriceTb.Value;
                string Description = RDescriptionTb.Value;

                string Query = "insert into RoomTypeTab values('{0}','{1}','{2}','{4}')";
                Query = string.Format(Query, RoomType, RoomPrice, Description);
                Con.setData(Query);
                ShowRoomType();
                ErrMsg.InnerText = "Room Type Added!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}


