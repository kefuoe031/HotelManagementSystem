﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Guest.Master" CodeBehind="GuestProfile.aspx.cs" Inherits="HotelManagementSystem.GuestProfile" %>

<asp:Content ID="Content4" ContentPlaceHolderID="Mybody" runat="server">
    <!DOCTYPE html>

    <html>
    <head>

        <link rel="stylesheet" href="../../Assets/Libraries/Bootstrap/css/bootstrap.min.css" />
    </head>
    <body>
        
        <form id="form1" runat="server">

            <div class="container-fluid" style="background-color: burlywood; width: 100%">

                <div class="row" style="display: flex; justify-content: center">

                    <div class="col-4" style="padding: 3%">
                        <h1 class="text-body text-center">Manage my Profile</h1>
                    </div>

                    <div class="row" style="width: 90%; background-color: rgba(255,255,255,0.5); display: flex; justify-content: center">
                        <div style="padding-bottom: 2%"></div>
                        <div class="col-md-3 mb-3" style="width: 40%">
                            <label for="title" class="form-label" runat="server">Title</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                <asp:ListItem>---Select---</asp:ListItem>
                                <asp:ListItem>Mr</asp:ListItem>
                                <asp:ListItem>Ms</asp:ListItem>
                                <asp:ListItem>Mrs</asp:ListItem>
                                <asp:ListItem>Prof</asp:ListItem>
                                <asp:ListItem>Dr</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3" style="width: 40%"></div>
                        <div class="col-md-3" style="width: 40%">
                            <div style="padding-bottom: 1%"></div>

                            <div class="mb-3">
                                <label for="GfirstNameTb" class="form-label">First Name</label>
                                <asp:TextBox ID="firstNameTB" class="form-control" runat="server" ToolTip="Your first name as it appears on your ID."></asp:TextBox>

                            </div>
                            <div class="mb-3">
                                <label for="DOB" class="form-label">Date of Birth</label>
                                <asp:TextBox ID="dobTB" class="form-control" runat="server" TextMode="Date"></asp:TextBox>

                            </div>
                            <div class="mb-3">
                                <label for="Genderlbl" class="form-label">Gender</label>
                                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                    <asp:ListItem>---Select---</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Do not disclose</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="mb-3">
                                <label for="emaillbl" class="form-label">E-mail</label>
                                <asp:TextBox ID="emailTB" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                            </div>

                            <div class="mb-3" style="float: left">
                                <label for="postcodelbl" class="form-label">Post Code</label>
                                <asp:TextBox ID="postCodeTB" class="form-control" runat="server" Style="width: 100%" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="mb-3" style="float: right">
                                <label for="citylbl" class="form-label">City</label>
                                <asp:TextBox ID="cityTB" class="form-control" runat="server" Style="width: 100%" TextMode="SingleLine"></asp:TextBox>
                            </div>

                            

                        </div>

                        <div class="col-md-3" style="width: 40%">
                            <div style="padding-bottom: 1%"></div>
                            <div class="mb-3">
                                <label for="GLastNameTb" class="form-label">Last Name</label>
                                <asp:TextBox ID="lastNametb" class="form-control" runat="server" ToolTip="Your last name as it appears on your ID."></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="ID" class="form-label">ID/Passport No.</label>
                                <asp:TextBox ID="id" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="PhoneTb" class="form-label">Phone No.</label>
                                <asp:TextBox ID="phone" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="Address" class="form-label">Street Address</label>
                                <asp:TextBox ID="addrtb" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="Country" class="form-label">Country</label>
                                <asp:TextBox ID="countryTB" class="form-control" runat="server"></asp:TextBox>
                            </div>

                            

                        </div>
                        <br />
                        <div>
                            <div><h4>Change Password</h4></div>
                            <div class="mb-3">
                                <label for="PasswordTb" class="form-label">Current Password</label>
                                <asp:TextBox ID="passwordTB" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="cPasswordTb" class="form-label">New Password</label>
                                <asp:TextBox ID="confirmPass" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="edit" runat="server" class="btn btn-success btn-block" Text="Edit Profile" OnClick="edit_Click"  />
                        </div>
                        <div class="col-4" style="padding-bottom: 2%"></div>
                        <div class="d-grid">
                            <asp:Button ID="save" runat="server" class="btn btn-success btn-block" Text="Save Profile" BackColor="#666666" OnClick="save_Click" />
                        </div>
                        <div class="col-4" style="padding: 3%"></div>

                    </div>
                </div>

            </div>

        </form>
    </body>
    </html>
    </asp:Content>