<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelManagementSystem.Views.WebForm1" EnableEventValidation="false"%>

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
                    <asp:TextBox ID="password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:CheckBox ID="AdminCb" runat="server" class="form-check-input text-body" Text="Admin"  />
                    <asp:CheckBox ID="UserCb" runat="server" class="form-check-input text-body" Text="Guest"  />
                </div>
                <div class="mb-3">
                   <a href="RegisterAGuest.aspx" style="text-decoration:none"><asp:Label ID="Label2" runat="server" Text="Register as a new Guest >" EnableTheming="True" ForeColor="#333333"></asp:Label> </a> 
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
    
