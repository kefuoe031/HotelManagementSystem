<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="RoomType.aspx.cs" Inherits="HotelManagementSystem.Views.Admin.RoomType" EnableEventValidation="false" %>
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
                    <input type="text" class="form-control" id="RTypeTb" runat="server" >
                </div>
                    
                <div class="mb-3">
                    <label for="RPriceTb" class="form-label">Room Price</label>
                    <input type="text" class="form-control" id="RPriceTb" runat="server" >
                </div>

                 </div>
                    <div class="mb-3">
                    <label for="DefRPriceTb" class="form-label">Default Room Price</label>
                    <input type="text" class="form-control" id="DefRPriceTb" runat="server"/>
                </div>

                <div class="mb-3">
                    <label for="RDescriptionTb" class="form-label">Room Description</label>
                    <input type="text" class="form-control" id="RDescriptionTb" runat="server" >
                </div>

                <div class="mb-3">
                    <label for="RImgTb" class="form-label" runat="server">Room Image</label>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" /><br/>
                    <br />           
                    <asp:Button ID="Button1" class="btn btn-dark" runat="server" Text="Upload Image" OnClick="Button1_Click" /><br/>
                    <asp:Image ID="Image1" runat="server" class="form-control" Width="150" Height="120"/>
                </div>

            <div>
                    
                    <asp:Button ID="SaveBtn" runat="server" Text="Save"  class="btn btn-success btn-block" OnClick="SaveBtn_Click"/>
                    
                    <asp:Button ID="EditBtn" runat="server" Text="Edit"  class="btn btn-warning btn-block" OnClick="Button2_Click" Width="53px" />
                 <asp:Button ID="DeleteBtn" runat="server" Text="Delete"  class="btn btn-danger btn-block" Width="73px" OnClick="DeleteBtn_Click" />
                </div>   
                    
                <div class="d-grid">
                    <label id="ErrMsg" runat="server" class="text-danger"></label>
                </div>                
                <br />
</form>
            </div>
        <br />
            <div class="col-md-9">
                <asp:GridView ID="RoomTypeGV" runat="server" class="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="RoomTypeGV_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
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
