<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs"  Inherits="HotelManagementSystem.Views.Admin.Rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">

    
    <%--<h1 class="text-body">Manage Rooms</h1>--%>
    <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-body text-center">Manage Rooms</h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-3">

<form>      
                <div class="mb-3">
                    <label for="RNumberTb" class="form-label">Room No.</label>
                    <input type="text" class="form-control" id="RNumberTb" />
                </div>
                <div class="mb-3">
                    <label for="RoomTypeTb" class="form-label">Room Type</label>
                    <asp:DropDownList ID="RoomTypeTb" runat="server" class="form-control"></asp:DropDownList>
                <%--</div>
                    <div class="mb-3">
                    <label for="RNumberTb" class="form-label">Room No.</label>
                    <input type="text" class="form-control" id="RNumberTb" />
                </div>--%>
                    </div>
                  <br />
                <div class="mb-3">
                    <label for="RPriceTb" class="form-label">Room Price</label>
                    <input type="text" class="form-control" id="RPriceTb" />
                </div>
                    
                <div class="d-grid">
                       <button type="submit" class="btn btn-success btn-block">Save</button>
                </div>                
                <br />
</form>
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
