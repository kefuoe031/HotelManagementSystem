﻿<%@ Page Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="GuestBooking.aspx.cs" Inherits="HotelManagementSystem.GuestBooking" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Mybody" runat="server">
    <!DOCTYPE html>

<html>
<head>
    <title>Booking</title>
</head>
<body>
    <form id="form1" runat="server">
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

                    <asp:Calendar ID="checkInCalendar" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Century Gothic" Font-Size="8pt" ForeColor="#666666" Height="144px" ShowGridLines="True" Width="220px" OnDayRender="checkInCalendar_DayRender" OnSelectionChanged="checkInCalendar_SelectionChanged">
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
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>         

                <div class="mb-3">
                    <label for="GLastNameTb" class="form-label">First Name</label>
                    <asp:TextBox ID="firstName" class="form-control" runat="server" ToolTip="The name of the person who will be checking in as it appears on the ID."></asp:TextBox>
                    
                </div>

                <div class="mb-3">
                    <label for="GenCb" class="form-label">Valid ID/Passport No.</label>
                   <asp:TextBox ID="ID" class="form-control" runat="server" TextMode="Number" ToolTip="The ID/Passport number of the person who will be checking in as it appears on the ID/Passport."></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="Allergies" class="form-label">Allergies</label>
                    <asp:TextBox ID="allergies" class="form-control" runat="server" ToolTip="if none, enter &quot;NA&quot;."></asp:TextBox>
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
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                         </asp:DropDownList>
                </div>
                      <div class="mb-3">
                    <label for="GLastNameTb" class="form-label">Last Name</label>
                    <asp:TextBox ID="lastName" class="form-control" runat="server" ToolTip="The last name of the person who will be checking in as it appears on the ID."></asp:TextBox>
                </div>
                     <div class="mb-3">
                    <label for="PhoneTb" class="form-label">Phone No.</label>
                    <asp:TextBox ID="phone" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                </div>
                         <div class="mb-3">
                    <label for="PassportNoTb" class="form-label">Special Requirements</label>
                    <asp:TextBox ID="specReq" class="form-control" runat="server"></asp:TextBox>
                </div>
                 
                    </div>
                <br />
                <div class="col-md-3" style="width:80%">
                        <h4>Select your room:</h4>
                    </div>
                <div id="select" style="justify-content:center; display:flex; width:100%; padding:3%"> <!--Room type selection goes here-->
                    <asp:GridView ID="RoomGridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RoomType" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" OnDataBound="RoomGridView1_DataBound">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" ShowCancelButton="False" />
                            <asp:BoundField DataField="RoomType" HeaderText="Room Type" ReadOnly="True" SortExpression="RoomType" />
                            <asp:BoundField DataField="RoomPrice" HeaderText="Special Price" SortExpression="RoomPrice" ApplyFormatInEditMode="True" ReadOnly="True" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="DefaultRoomPrice" HeaderText="Default Price" SortExpression="DefaultRoomPrice" DataFormatString="{0:C}" />
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
                       <asp:Button ID="reserve" runat="server" class="btn btn-success btn-block" Text="Reserve Booking" OnClick="reserve_Click" />
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
