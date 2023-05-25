﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="RoomType.aspx.cs" Inherits="HotelManagementSystem.Views.Admin.RoomType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-body text-center">Manage Room Types</h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-3">

<form>      
                <div class="mb-3">
                    <label for="RTypeTb" class="form-label">Room Type</label>
                    <input type="text" class="form-control" id="RTypeTb" />
                </div>
               
                <%--</div>
                    <div class="mb-3">
                    <label for="RNumberTb" class="form-label">Room No.</label>
                    <input type="text" class="form-control" id="RNumberTb" />
                </div>--%>
                    
                <div class="mb-3">
                    <label for="RPriceTb" class="form-label">Room Price</label>
                    <input type="text" class="form-control" id="RPriceTb" />
                </div>
                <div class="mb-3">
                    <label for="RDescriptionTb" class="form-label">Room Description</label>
                    <input type="text" class="form-control" id="RDescriptionTb" />
                </div>
                <div class="mb-3">
                    <label for="RImgTb" class="form-label">Room Image</label>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" /><br/>
                    <br />           
                    <asp:Button ID="Button1" class="btn btn-dark" runat="server" Text="Upload Image" OnClick="Button1_Click" /><br/>
                    <asp:Image ID="Image1" runat="server" class="form-control" Width="150" Height="120"/>
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