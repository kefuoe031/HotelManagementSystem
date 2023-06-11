<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="HotelManagementSystem.Views.Admin.Users" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">

       <%--<h1 class="text-body">Manage Rooms</h1>--%>
    <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-body text-center">Manage Users</h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-3">
      

                <div class="mb-3">
                    <label for="GFirstNameTb" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="GFirstNameTb" runat="server" />
                </div>

                <div class="mb-3">
                    <label for="GLastNameTb" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="GLastNameTb" runat="server" />
                </div>

                <div class="mb-3">
                    <label for="DobTb" class="form-label">DOB</label>
                    <input type="text" class="form-control" id="DobTb" runat="server" />
                </div>

                <div class="mb-3">
                    <label for="GenCb" class="form-label">Gender</label>
                    <asp:DropDownList ID="RoomTypeTb" runat="server" class="form-control">
                        
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <label for="PhoneTb" class="form-label">Phone No.</label>
                    <input type="text" class="form-control" id="PhoneTb" runat="server" />
                </div>

                <div class="mb-3">
                    <label for="EmailTb" class="form-label">Email</label>
                    <input type="text" class="form-control" id="EmailTb" runat="server"/>
                </div>

                <div class="mb-3">
                    <label for="PasswordTb" class="form-label">Password</label>
                    <input type="text" class="form-control" id="PasswordTb" runat="server" />
                </div>
                
                
                <%--</div>
                    <div class="mb-3">
                    <label for="RNumberTb" class="form-label">Room No.</label>
                    <input type="text" class="form-control" id="RNumberTb" />
                </div>--%>
                    </div>
                  <br />
                    
                <div class="d-grid">
                       <button type="submit" class="btn btn-success btn-block">Save</button>
                </div>                
                <br />
            </div>
            <div class="col-md-9">
                <asp:GridView ID="RoomsGV" runat="server" class="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
