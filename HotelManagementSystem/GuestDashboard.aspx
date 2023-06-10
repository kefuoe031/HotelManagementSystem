<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Guest.Master" CodeBehind="GuestDashboard.aspx.cs" Inherits="HotelManagementSystem.GuestDashboard" %>

<asp:Content ID="Content4" ContentPlaceHolderID="Mybody" runat="server">
    <head>
        <title>Guest Dashboard</title>
    </head>


    <body>
        <form runat="server">
            <div class="container-fluid" style="background-color: antiquewhite; width: 100%">

                <div class="row" style="display: flex; padding: 2%">
                    <div style="background-color:#0097B2; width: 75%; float:left; padding:2%;border-radius:10px;">
                        <img src="Assets\Images\sale.png" width="80%"/>
                        <h1 <%--class="text-body"--%> style="color:white; padding-top:5%">Monthly Specials</h1>
                        <h4 style="color:white">Get discounted prices in the month of June!</h4>
                    </div>

                    <div class="row" style="display: flex; padding: 2%">
                        <h4>The King Room with: Balcony, Sea-View, and Private Lounge</h4>
                        <div style="width:30%; float: left">
                            <img src="Assets\Images\King.jpg" width="80%" />
                        </div>
                        <div style="width:30%; float: left; padding-top:2%" >
                            <asp:Label ID="Label1" runat="server" Text="Per Night: "></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Save: "></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="display: flex; padding: 2%">
                        <h4>The Queen Room with: Balcony, Garden View</h4>
                        <div style="width:30%; float: left">
                            <img src="Assets\Images\Queen.jpg" width="80%" />
                        </div>
                        <div style="width:30%; float: left; padding-top:2%" >
                            <asp:Label ID="Label3" runat="server" Text="Per Night: "></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Save: "></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="display: flex; padding: 2%">
                        <h4>The Double Room with: Garden View and Outdoor Shower</h4>
                        <div style="width:30%; float: left">
                            <img src="Assets\Images\Double.jpg" width="80%" />
                        </div>
                        <div style="width:30%; float: left; padding-top:2%" >
                            <asp:Label ID="Label5" runat="server" Text="Per Night: "></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Save: "></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>

</asp:Content>
