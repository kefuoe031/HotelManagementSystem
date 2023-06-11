using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using CrystalDecisions.CrystalReports.Engine;

namespace HotelManagementSystem
{
    public partial class Bill : System.Web.UI.Page
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportDocument myReport = new ReportDocument();
            myReport.Load(Server.MapPath("~/Invoice.rpt")) ;
           
            CrystalReportViewer1.ReportSource = myReport;
            
            

        }

        protected void goToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuestBooking.aspx");
        }

        protected void Viewreport_Click(object sender, EventArgs e)
        {
            ////int bookingId = (int)Session["bookingID"];

            //DataSet ds = new DataSet();
            //SqlConnection con = new SqlConnection(connectionString);
            //SqlCommand cmd = new SqlCommand("select GuestID, FirstName, LastName, CheckIndate, CheckOutDate, NumAdults, NumChildren, RoomType from BookingTab where BookingID= @ID ", con);
            //cmd.Parameters.AddWithValue("@ID",13);
            //cmd.CommandType = CommandType.Text;
            //SqlDataAdapter testda = new SqlDataAdapter(cmd);
            //testda.Fill(ds);
            //con.Open();
            //ReportDocument myReportDocument = new ReportDocument();
            //myReportDocument.Load("CrystalReport2.rpt", connectionString);
            //myReportDocument.SetDataSource(ds);
            //CrystalReportViewer1.ReportSource = myReportDocument;
            //CrystalReportViewer1.DisplayToolbar = true;
            //con.Close();
            ReportDocument myReport= new ReportDocument();
            myReport.Load(Server.MapPath("Invoice.rpt"));
            CrystalReportViewer1.ReportSource = myReport;
        }

        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {

        }
    }
}