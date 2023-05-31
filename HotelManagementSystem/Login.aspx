<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelManagementSystem.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/Bootstrap/css/bootstrap.min.css" />
    <style>
        body{
            background-image:url(../Assets/Images/Hotel_front.jpg); 
            background-size:cover;
        }
        .container-fluid{
            opacity:0.9;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row" style="height:120px;"></div>
        <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 bg-light rounded-3">
            <h1 class="text-body text-center">The Holiday Inn</h1>     <%-- Hotel Name--%> 

        <%--// Bootstrap Email Sign in/ Log in form begins--%>
            <form runat="server">      
                <div class="mb-3">
                    <asp:Label ID="emailAddress" runat="server" Text="Email Address"></asp:Label>
                    <asp:TextBox ID="emailTb" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                    
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="PasswordTb"/>
                </div>
                <div class="mb-3">
                    <asp:RadioButton ID="AdminCb" runat="server" class="form-check-input text-body" Text="Admin" OnCheckedChanged="AdminCb_CheckedChanged" />
                    <asp:RadioButton ID="UserCb" runat="server" class="form-check-input text-body" Text="Guest" OnCheckedChanged="UserCb_CheckedChanged" />
                </div>
                       <div class="d-grid">
                       <asp:Button ID="Login" runat="server" class="btn btn-danger btn-block" Text="Login" OnClick="Login_Click" />
                      
                       </div>                
                <br />
                </form>
         <%--// Bootstrap Email Sign in/ Log in form ends--%>

        </div>
        <div class="col-md-4"></div>
        </div>
       
    </div>

    
        <div>
        </div>
    
</body>
</html>
    
