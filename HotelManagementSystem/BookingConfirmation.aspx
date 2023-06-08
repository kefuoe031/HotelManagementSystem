<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Views/Admin/Admin.Master" CodeBehind="BookingConfirmation.aspx.cs" Inherits="HotelManagementSystem.BookingConfirmation" %>
<asp:Content ID="Content4" ContentPlaceHolderID="Mybody" runat="server">
<!DOCTYPE html>

<html>
<head>
    <title>Confirmation</title>
</head>
<body>
    <form>
        <div>
             <div class="container-fluid" style="background-color: burlywood; width:100%">
    
        <div class="row" style="display:flex; justify-content:center" >
            
    
            <div class="col-4" style="padding:3%; width:auto">
                <h1 class="text-body text-center">Booking Confirmation</h1>
                <br />
                <p class="text-body text-center">Please confirm your booking details below.</p>
            </div>
        
            <div class="row"style="width:90%; background-color:rgba(255,255,255,0.5); display:flex; justify-content:center">
               
                <div class="col-md-3" style="width:40%; align-items:start; padding-top:20px">

                      <!--Calendar (for dates selection) to go with this-->
                <div class="mb-3">
                    <label for="GTitleTb" class="form-label" >Check-In Date: </label> 
                    <asp:TextBox ID="checkInDate" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>
   
                <div class="mb-3">
                    <label for="GFirstNameTb" class="form-label">Number of Adults: </label>
                    <asp:TextBox ID="numAdults" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>         

                <div class="mb-3">
                    <label for="GLastNameTb" class="form-label">First Name: </label>
                    <asp:TextBox ID="fname" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="GenCb" class="form-label">Valid ID/Passport No.</label>
                    <asp:TextBox ID="idpass" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="PassportNoTb" class="form-label">Allergies</label>
                    <asp:TextBox ID="allerg" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>

                     <div class="mb-3">
                    <label for="roomType" class="form-label">Room Type: </label>
                    <asp:TextBox ID="roomType" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None" TextMode="MultiLine"></asp:TextBox>
                </div>
                    </div>

                 <div class="col-md-3" style="width:40%; align-items:start; padding-top:20px">
                       
                <div class="mb-3">
                    <label for="GTitleTb" class="form-label">Check-Out Date: </label>
                    <asp:TextBox ID="checkOutDate" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>
                     <div class="mb-3">
                    <label for="GFirstNameTb" class="form-label">Number of Children: </label>
                    <asp:TextBox ID="numChildren" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>
                      <div class="mb-3">
                    <label for="GLastNameTb" class="form-label">Last Name: </label>
                    <asp:TextBox ID="lname" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>
                     <div class="mb-3">
                    <label for="PhoneTb" class="form-label">Phone No.: </label>
                    <asp:TextBox ID="phone" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>
                         <div class="mb-3">
                    <label for="PassportNoTb" class="form-label">Special Requirements: </label>
                    <asp:TextBox ID="specReq" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>
                      <div class="mb-3">
                    <label for="roomPrice" class="form-label">To Pay: </label>
                    <asp:TextBox ID="roomPrice" runat="server" ReadOnly="True" BackColor="#F5ECDE" BorderStyle="None"></asp:TextBox>
                </div>
                 
                    </div>
                <br />                             
                
                     <div class="d-grid">
                       <asp:Button ID="confirm" runat="server" class="btn btn-success btn-block" Text="Confirm Booking" OnClick="confirm_Click" />
                         <br />
                       <asp:Button ID="makeChanges" runat="server" class="btn btn-success btn-block" Text="Edit Booking" OnClientClick="JavaScript:window.history.back(1); return false;" BackColor="#666666" />
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
    
