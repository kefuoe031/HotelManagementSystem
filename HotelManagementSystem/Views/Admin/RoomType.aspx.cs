using System;
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
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}