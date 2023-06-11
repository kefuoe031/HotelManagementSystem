using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace HotelManagementSystem
{
    public partial class Invoice : System.Web.UI.Page
    {
        string connectionString = @"Data Source=146.230.177.46;Initial Catalog=Hons10;Persist Security Info=True;User ID=Hons10;Password=23jas";
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void goToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuestBooking.aspx");
        }

        protected void Viewreport_Click(object sender, EventArgs e)
        {
            //int bookingId = (int)Session["bookingID"];
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from BookingTab where BookingID= @ID  ", con);
                cmd.Parameters.AddWithValue("@ID", 13);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);

                ReportDocument crp = new ReportDocument();
                crp.Load(Server.MapPath("invoice.rpt"));
                crp.SetDataSource(ds.Tables["table"]);

                CrystalReportViewer1.ReportSource = crp;
                crp.SetDatabaseLogon("Hons10", "23jas");
                crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, HttpContext.Current.Response, true, "The Holiday Inn Booking Invoice");
                con.Close();
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "messagebox", "alert(' " + "Error downloading report." + "');", true);
            }
       
        }

        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {
            
        }
    }
}