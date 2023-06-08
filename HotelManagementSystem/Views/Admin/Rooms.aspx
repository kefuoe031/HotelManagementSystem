<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs"  Inherits="HotelManagementSystem.Views.Admin.Rooms" EnableEventValidation="false" %>
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
                    <input type="text" class="form-control" id="RNumberTb" runat="server" required="required" />
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
                 <%-- <br />--%>
                <%--<div class="mb-3">
                    <label for="RPriceTb" class="form-label">Room Price</label>
                    <input type="text" class="form-control" id="RPriceTb" runat="server" required="required"/>
                </div>--%>

                  <br />
                <div class="mb-3">
                    <label for="HCodeTb" class="form-label">Hotel Code</label>
                    <input type="text" class="form-control" id="HCodeTb" runat="server" required="required"/>
                </div>

                <br />
                <div class="mb-3">
                    <label for="OccTb" class="form-label">Occupancy</label>
                    <input type="text" class="form-control" id="OccTb" runat="server" />
                </div>
                    
                 <div>                    
                    <asp:Button ID="SaveBtn" runat="server" Text="Save"  class="btn btn-success btn-block" OnClick="SaveBtn_Click"/>
                    
                    <asp:Button ID="EditBtn" runat="server" Text="Edit"  class="btn btn-warning btn-block"  Width="53px" />
                 <asp:Button ID="DeleteBtn" runat="server" Text="Delete"  class="btn btn-danger btn-block" Width="73px"  />
                </div>                 
                <br />

    <div class="d-grid">
                    <label id="ErrMsg" runat="server" class="text-danger"></label>
                </div>  

</form>
            </div>
            <div class="col-md-9">
                <asp:GridView ID="RoomsGV" runat="server" class="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateSelectButton="True">
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
