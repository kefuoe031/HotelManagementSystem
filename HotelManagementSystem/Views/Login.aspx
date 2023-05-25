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
            <form>      
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="EmailTb" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="PasswordTb">
                </div>
                <div class="mb-3">
                    <input type="radio" class="form-check-input" id="AdminCb"><label class="text-body">Admin</label>
                    <input type="radio" class="form-check-input" id="UserCb"<label class="text-body">User</label>
                </div>
                       <div class="d-grid">
                       <button type="submit" class="btn btn-danger btn-block">Login</button>
                            
                       </div>                
                <br />
                </form>
         <%--// Bootstrap Email Sign in/ Log in form ends--%>

        </div>
        <div class="col-md-4"></div>
        </div>
       
    </div>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
