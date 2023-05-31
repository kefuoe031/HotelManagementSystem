<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Views/Admin/Admin.Master" CodeBehind="BookingConfirmation.aspx.cs" Inherits="HotelManagementSystem.BookingConfirmation" %>
<asp:Content ID="Content4" ContentPlaceHolderID="Mybody" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Confirmation</title>
</head>
<body>
    <form>
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
                    <asp:TextBox ID="checkInDate" runat="server"></asp:TextBox>
                </div>
   
                <div class="mb-3">
                    <label for="GFirstNameTb" class="form-label">Number of Adults: </label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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
                
                     <div class="d-grid">
                       <asp:Button ID="confirm" runat="server" class="btn btn-success btn-block" Text="Confirm Booking" OnClick="confirm_Click" />
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
    
