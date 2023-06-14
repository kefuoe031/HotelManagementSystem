<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="HotelManagementSystem.Views.Admin.UserDashboard" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
   
    <div class="container" >
        <div class="row container" style="width: 90%; background-color: antiquewhite; display: flex; justify-content: center; margin:5%; padding-top: 10%; padding-bottom: 10%">
        <div class="col-md-3" style="padding: 3%; background-color: burlywood; width: 30%; margin-left:2%; text-align:center;border-radius:10px">
            <a href="Rooms.aspx" style="text-decoration:none; color:black"><h4>Hotel Room Management</h4></a>
        </div>
        <div class="col-md-3" style="padding: 3%; background-color: burlywood; width: 30%; margin-left:2%;text-align:center;border-radius:10px ">
            <a href="RoomType.aspx" style="text-decoration:none;color:black"><h4>Room-Type Management</h4></a>
        </div>
        <div class="col-md-3" style="padding: 3%; background-color: burlywood; width: 30%;margin-left:2%;text-align:center;border-radius:10px ">
            <a href="Users.aspx" style="text-decoration:none;color:black"><h4>Administrator Management</h4></a>
        </div>
    </div>
    </div>
    


</asp:Content>
