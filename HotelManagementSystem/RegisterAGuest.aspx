<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterAGuest.aspx.cs" Inherits="HotelManagementSystem.RegisterAGuest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-body text-center">Register a Guest</h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-3">

     
                <div class="mb-3">
                    <label for="GTitleTb" class="form-label">Guest Title</label>
                    <input type="text" class="form-control" id="GTitleTb" />
                </div>

                <div class="mb-3">
                    <label for="GFirstNameTb" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="GFirstNameTb" />
                </div>

                <div class="mb-3">
                    <label for="GLastNameTb" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="GLastNameTb" />
                </div>

                <div class="mb-3">
                    <label for="DobTb" class="form-label">DOB</label>
                    <input type="text" class="form-control" id="DobTb" />
                </div>

                <div class="mb-3">
                    <label for="GenCb" class="form-label">Gender</label>
                    <asp:DropDownList ID="RoomTypeTb" runat="server" class="form-control">
                        
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <label for="PhoneTb" class="form-label">Phone No.</label>
                    <input type="text" class="form-control" id="PhoneTb" />
                </div>

                <div class="mb-3">
                    <label for="EmailTb" class="form-label">Email</label>
                    <input type="text" class="form-control" id="EmailTb" />
                </div>

                <div class="mb-3">
                    <label for="PasswordTb" class="form-label">Password</label>
                    <input type="text" class="form-control" id="PasswordTb" />
                </div>

                <div class="mb-3">
                    <label for="PassportNoTb" class="form-label">Passport No.</label>
                    <input type="text" class="form-control" id="PassportNoTb" />
                </div>

                <div class="mb-3">
                    <label for="AddressTb" class="form-label">Address</label>
                    <input type="text" class="form-control" id="AddressTb" />
                </div>

                <div class="mb-3">
                    <label for="PostcodeTb" class="form-label">Postcode</label>
                    <input type="text" class="form-control" id="PostcodeTb" />
                </div>

                <div class="mb-3">
                    <label for="CityTb" class="form-label">City</label>
                    <input type="text" class="form-control" id="CityTb" />
                </div>

                <div class="mb-3">
                    <label for="CountryTb" class="form-label">Country</label>
                    <input type="text" class="form-control" id="CountryTb" />
                </div>
                
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
  
    </form>
</body>
</html>
