<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Guest.Master" CodeBehind="GuestDashboard.aspx.cs" Inherits="HotelManagementSystem.GuestDashboard" %>

<asp:Content ID="Content4" ContentPlaceHolderID="Mybody" runat="server">
    <head>
        <title>Guest Dashboard</title>
    </head>


    <body>
        <form runat="server">
            <div class="container-fluid" style="background-color: antiquewhite; width: 100%">

                <div class="row" style="display: flex; padding: 2%">
                    <div style="background-color:#0097B2; width: 60%; float:left; padding:2%;border-radius:10px;">
                        <img src="Assets\Images\sale.png" width="100%"/>
                        <h1 <%--class="text-body"--%> style="color:white; padding-top:5%">Monthly Specials</h1>
                        <h4 style="color:white">Get discounted prices in the month of June!</h4>
                    </div>
                    <div style="width:3%">
                    </div>
                    <div style="float:right; width:37%; background-color:white;padding:2%;border-radius:10px">
                        <h4>Active Reservations</h4>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" Font-Names="Segoe UI" Font-Size="Smaller" DataKeyNames="BookingID" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ButtonType="Button" SelectText="&gt;" ShowSelectButton="True" />
                                <asp:BoundField DataField="BookingID" HeaderText="BookingID" SortExpression="BookingID" ReadOnly="True" InsertVisible="False" />
                                <asp:BoundField DataField="CheckInDate" HeaderText="CheckInDate" SortExpression="CheckInDate" DataFormatString="{0:d}" />
                                <asp:BoundField DataField="CheckOutDate" HeaderText="CheckOutDate" SortExpression="CheckOutDate" DataFormatString="{0:d}" />
                                <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hons10ConnectionString %>" SelectCommand="SELECT [BookingID], [CheckInDate], [CheckOutDate], [RoomType] FROM [BookingTab] WHERE ([GuestID] = @GuestID)">
                            <SelectParameters>
                                <asp:SessionParameter Name="GuestID" SessionField="GuestID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <div style="padding:2%"></div>
                        <asp:Button ID="CancelReservation" runat="server" class="btn btn-success btn-block" Text="Cancel Reservation" OnClick="CancelReservation_Click" />
                    </div>

                    <div class="row" style="display: flex; padding: 2%">
                        <h4>The King Room with: Balcony, Sea-View, and Private Lounge</h4>
                        <div style="width:30%; float: left">
                            <img src="Assets\Images\King.jpg" width="80%" />
                        </div>
                        <div style="width:30%; float: left; padding-top:5%" >
                            <asp:Label ID="Label1" class="form-label" runat="server" Text="Per Night: "></asp:Label>
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" BackColor="#9FF1FF" BorderColor="AntiqueWhite" BorderStyle="None" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Large" ReadOnly="True" Width="158px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" class="form-label" Text="Save: "></asp:Label>
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" BackColor="#9FF1FF" BorderColor="AntiqueWhite" BorderStyle="None" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Large" ReadOnly="True" Width="158px"></asp:TextBox>
                        </div>
                        <div style="width:30%; float: left; padding:10%" >
                            <asp:Button ID="Button1" runat="server" class="btn btn-success btn-block" Text="Book Now" OnClick="Button1_Click" />
                        </div>
                    </div>
                    <div class="row" style="display: flex; padding: 2%">
                        <h4>The Queen Room with: Balcony, Garden View</h4>
                        <div style="width:30%; float: left">
                            <img src="Assets\Images\Queen.jpg" width="80%" />
                        </div>
                        <div style="width:30%; float: left; padding-top:5%" >
                            <asp:Label ID="Label3" runat="server" class="form-label" Text="Per Night: "></asp:Label>
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" BackColor="#9FF1FF" BorderColor="AntiqueWhite" BorderStyle="None" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Large" ReadOnly="True" Width="158px" ></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" class="form-label" Text="Save: "></asp:Label>
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" BackColor="#9FF1FF" BorderColor="AntiqueWhite" BorderStyle="None" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Large" ReadOnly="True" Width="158px"></asp:TextBox>
                        </div>
                        <div style="width:30%; float: left; padding:10%" >
                            <asp:Button ID="Button2" runat="server" class="btn btn-success btn-block" Text="Book Now" OnClick="Button2_Click" />
                        </div>
                    </div>
                    <div class="row" style="display: flex; padding: 2%">
                        <h4>The Double Room with: Garden View and Outdoor Shower</h4>
                        <div style="width:30%; float: left">
                            <img src="Assets\Images\Double.jpg" width="80%" />
                        </div>
                        <div style="width:30%; float: left; padding-top:5%" >
                            <asp:Label ID="Label5" runat="server" class="form-label" Text="Per Night: "></asp:Label>
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server" BackColor="#9FF1FF" BorderColor="AntiqueWhite" BorderStyle="None" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Large" ReadOnly="True" Width="158px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label6" runat="server" class="form-label" Text="Save: "></asp:Label>
                            <asp:TextBox ID="TextBox6" class="form-control" runat="server" BackColor="#9FF1FF" BorderStyle="None" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Large" ReadOnly="True" Width="158px"></asp:TextBox>
                        </div>
                        <div style="width:30%; float: left; padding:10%" >
                            <asp:Button ID="Button3" runat="server" class="btn btn-success btn-block" Text="Book Now" OnClick="Button3_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>

</asp:Content>
