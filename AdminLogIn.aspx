<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Roboto:400,500,700');
        .newStyle1 {
            width: 100%;
            height: 474px;
            background: #e8e8f3; 
        }
        h3 {
            margin:0;
            text-align: center;
        }
        #container {
            width: 300px;
            height: 300px;
            background: #f5f5f5;
            border-radius: 5px;
            position: relative;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            color: #191919;
            font-family: 'Roboto', sans-serif;
            box-shadow: 0 0 5px rgba(0,0,0, 0.4);
        }
        .title {
            font-size: 10px;
            text-align:left;
            letter-spacing: 1px;
        }
        .auto-style11 {
            width: 100%;
            margin:0;
            position: relative;
            top: 15px;
        }
        .auto-style13 {
            text-align: center;
        }
        #sum {
            float:left;
            position:relative;
            top: 25px;
            left: 23px;
            font-family: 'Roboto';
            font-size: 13px;
            box-shadow: 0 0 5px rgba(0,0,0, 0.4);
        }
        .auto-style14 {
            left: 141px;
            top: -364px;
        }
        .ErrorMessage {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div class="newStyle1">
        <div id="container">
            <table class="auto-style11">
                <tr>
                    <td><h3 id="asign" class="auto-style13">Admin Panel Login</h3><br /></td>
                </tr>
                <tr>
                    <td class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USERNAME</td>
                </tr>
                <tr>
                    <td style="text-align: center"><asp:TextBox ID="TextBox1" runat="server" Width="241px" BorderStyle="Solid" Height="25px" BorderColor="#191919" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="ErrorMessage" ErrorMessage="Enter your username" Font-Size="Smaller">*</asp:RequiredFieldValidator>
                    </td>           
                </tr>
                <tr>
                    <td class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PASSWORD </td>
                </tr>
                <tr>
                    <td style="text-align: center"><asp:TextBox ID="TextBox2" runat="server" Width="241px" BorderStyle="Solid" Height="25px" TextMode="Password" BorderColor="#191919" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="ErrorMessage" ErrorMessage="Enter your password" Font-Size="Smaller">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Size="Small"></asp:Label>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Enter" Width="244px" Height="30px" OnClick="Button1_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [username], [password] FROM [Admin]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
            </table>
            <div id="sum" class="auto-style14">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" Width="250px" Height="85px" BackColor="#FFFFE3" Font-Bold="True" HeaderText="* Required field. " />
            </div>
        </div>
    </div>
</asp:Content>

