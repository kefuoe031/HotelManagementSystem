<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Views/Admin/Admin.Master" CodeBehind="Invoice.aspx.cs" Inherits="HotelManagementSystem.Bill" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content4" ContentPlaceHolderID="Mybody" runat="server">
    <!DOCTYPE html>

<html>
<head>
    <title>Bill</title>
</head>
<body>
    <form>
        <div>
             <div class="container-fluid" style="background-color: burlywood; width:100%">
    
        <div class="row" style="display:flex; justify-content:center" >
            
    
            <div class="col-4" style="padding:3%; width:auto">
                <h3 class="text-body text-center">Your booking has been reserved, and will only be confirmed once a payment has been made. </h3>
                <br />
                <p class="text-body text-center">See your bill below:</p>
            </div>
        
            <div class="row"style="width:90%; background-color:rgba(255,255,255,0.5); display:flex; justify-content:center">
               
                <asp:Panel ID="Panel1" runat="server">
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" GroupTreeImagesFolderUrl="" Height="940px" ReportSourceID="CrystalReportSource1" ReuseParameterValuesOnRefresh="True" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="847px" />
                    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                        <Report FileName="CrystalReport2.rpt">
                        </Report>
                    </CR:CrystalReportSource>

                </asp:Panel>

                
                <br />                             
                
                     <div class="d-grid">
                       <asp:Button ID="goToHome" runat="server" class="btn btn-success btn-block" Text="Make Another Booking" OnClick="goToHome_Click" />
                         <br />
                       
                </div>
            <div class="col-4" style="padding:3%"></div>
               
                </div>
        </div>
        
    </div>
        </div>
    </form>
</body>
</html>
    </asp:Content>
