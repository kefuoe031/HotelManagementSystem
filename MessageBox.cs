using System;

namespace HotelManagementSystem
{
    public static class MessageBox
    {
        public MessageBox()
        {
        }

        public static void Show(this Page Page, String Message)
        {
            Page.ClientScript.RegisterStartupScript(
               Page.GetType(),
               "MessageBox",
               "<script language='javascript'>alert('" + Message + "');</script>"
            );
        }
    }
}


