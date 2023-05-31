<%@ Page Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="GuestBooking.aspx.cs" Inherits="HotelManagementSystem.GuestBooking" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Mybody" runat="server">
    <!DOCTYPE html>

<html>
<head>
    <title>Booking</title>
</head>
<body>
    <form id="form1">
        <div>
             <div class="container-fluid" style="background-color: burlywood; width:100%">
    
        <div class="row" style="display:flex; justify-content:center" >
            
    
            <div class="col-4" style="padding:3%"><h1 class="text-body text-center">Make a Booking</h1>
            </div>
        
            <div class="row"style="width:90%; background-color:rgba(255,255,255,0.5); display:flex; justify-content:center">
               
                <div class="col-md-3" style="width:40%">

                      <!--Calendar (for dates selection) to go with this-->
                <div class="mb-3" style="padding:20px">
                    <label for="GTitleTb" class="form-label" style="float:left; padding-right:10px">Check-In</label>

                    <asp:Calendar ID="checkInCalendar" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Century Gothic" Font-Size="8pt" ForeColor="#666666" Height="144px" ShowGridLines="True" Width="220px" OnDayRender="checkInCalendar_DayRender">
                        <DayHeaderStyle BackColor="#EFF7FE" BorderStyle="Dashed" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#666666" Height="1px" />
                        <DayStyle BackColor="White" ForeColor="#666666" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCCC" BorderStyle="None" Font-Bold="True" />
                        <SelectorStyle BackColor="#CCCCCC" BorderStyle="None" />
                        <TitleStyle BackColor="#999999" Font-Bold="False" Font-Size="Small" ForeColor="White" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="White" />
                    </asp:Calendar>
                </div>
   
                <div class="mb-3">
                    <label for="GFirstNameTb" class="form-label">Number of Adults</label>
                    <asp:DropDownList ID="adultsDDL" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>         

                <div class="mb-3">
                    <label for="GLastNameTb" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="firstNameTb" />
                </div>

                <div class="mb-3">
                    <label for="GenCb" class="form-label">Valid ID No.</label>
                    <asp:DropDownList ID="genderDdl" runat="server" class="form-control">
                        
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <label for="PassportNoTb" class="form-label">Allergies</label>
                    <input type="text" class="form-control" id="idNoTb" />
                </div>
                    </div>

                 <div class="col-md-3" style="width:40%">
                       <!--Calendar (for dates selection) to go with this-->
                <div class="mb-3" style="padding:20px">
                    <label for="GTitleTb" class="form-label" style="float:left; padding-right:10px">Check-Out</label>
                    <asp:Calendar ID="checkOutCalendar" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Century Gothic" Font-Size="8pt" ForeColor="#666666" Height="144px" ShowGridLines="True" Width="220px" OnDayRender="checkOutCalendar_DayRender">
                        <DayHeaderStyle BackColor="#EFF7FE" BorderStyle="Dashed" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#666666" Height="1px" />
                        <DayStyle BackColor="White" ForeColor="#666666" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCCC" BorderStyle="None" Font-Bold="True" />
                        <SelectorStyle BackColor="#CCCCCC" BorderStyle="None" />
                        <TitleStyle BackColor="#999999" Font-Bold="False" Font-Size="Small" ForeColor="White" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="White" />
                    </asp:Calendar>
                </div>
                     <div class="mb-3">
                    <label for="GFirstNameTb" class="form-label">Number of Children</label>
                    <asp:DropDownList ID="childrenDDL" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                         </asp:DropDownList>
                </div>
                      <div class="mb-3">
                    <label for="GLastNameTb" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="lastNameTb" />
                </div>
                     <div class="mb-3">
                    <label for="PhoneTb" class="form-label">Phone No.</label>
                    <input type="text" class="form-control" id="PhoneTb" />
                </div>
                         <div class="mb-3">
                    <label for="PassportNoTb" class="form-label">Special Requirements</label>
                    <input type="text" class="form-control" id="specReqTb" />
                </div>
                 
                    </div>
                <br />
                <div class="col-md-3" style="width:80%">
                        <h4>Select your room:</h4>
                    </div>
                <div id="select" style="justify-content:center; display:flex; width:100%; padding:3%"> <!--Room type selection goes here-->
                    <asp:GridView ID="RoomGridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RoomType" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="RoomType" HeaderText="Room Type" ReadOnly="True" SortExpression="RoomType" />
                            <asp:BoundField DataField="RoomPrice" HeaderText="Special Price" SortExpression="RoomPrice" />
                            <asp:BoundField DataField="DefaultRoomPrice" HeaderText="Default Price" SortExpression="DefaultRoomPrice" />
                            <asp:BoundField DataField="RoomDesc" HeaderText="Room Description" SortExpression="RoomDesc" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="BurlyWood" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hons10ConnectionString %>" SelectCommand="SELECT * FROM [RoomTypeTab]"></asp:SqlDataSource>
                </div>
                
                     <div class="d-grid">
                       <button type="submit" class="btn btn-success btn-block">Reserve Booking</button>
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
