<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Roboto:400,500,700');
        .newStyle1 {
            width: 100%;
            height: 474px;
            background-image: url('img/bgSignInUp.png');
            background-size: cover;
            background-repeat: no-repeat;  
        }

        h1, h5 {
            margin:0;
            text-align: center;
        }
        #container {
            width: 300px;
            height: 300px;
            background: #f5f5f5;
            border-radius: 5px;
            position: relative;
            top: 80px;
            left: 450px;
            color: #191919;
            font-family: 'Roboto', sans-serif;
            box-shadow: 0 0 5px rgba(0,0,0, 0.4);
        }
        #sign {
            position:relative;
            top: 30px;
        }
        #sign-d {
            position:relative;
            top: 30px;
        }
        .title {
            font-size: 10px;
            text-align:left;
            letter-spacing: 1px;
        }
        #box {
            position:relative;
            top: 50px;
            left: 30px;
        }
        .auto-style11 {
            width: 100%;
            margin:0;
            position: relative;
            top: 15px;
        }
        #content-bottom {
            font-size: 12px;
        }
        .auto-style12 {
            height: 31px;
        }
        .auto-style13 {
            text-align: left;
        }
        .ErrorMessage {
            color:red;
        }
        .auto-style14 {
            text-align: center;
        }
        #sum {
            float:left;
            position:relative;
            top: -325px;
            left: 100px;
            font-family: 'Roboto';
            font-size: 13px;
            box-shadow: 0 0 5px rgba(0,0,0, 0.4);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div class="newStyle1">
        <div id="container">
            <table class="auto-style11">
                <tr>
                    <td><h1 id="asign">Sign In</h1></td>
                </tr>
                <tr>
                    <td><h5 id="asign-d">to your GreenHouse account</h5>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USERNAME</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style13"><asp:TextBox ID="TextBox1" runat="server" Width="241px" BorderStyle="Solid" Height="25px" ClientIDMode="Static" BorderColor="#191919" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your username" Font-Size="Smaller" CssClass="ErrorMessage" EnableTheming="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PASSWORD </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style12"><asp:TextBox ID="TextBox2" runat="server" Width="244px" BorderStyle="Solid" Height="25px" TextMode="Password" BorderColor="#191919" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="ErrorMessage" ErrorMessage="Enter your password" Font-Size="Smaller">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Size="Small"></asp:Label>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Sign in" Width="244px" Height="30px" OnClick="Button1_Click" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><p id="content-bottom" class="auto-style14">Don't have an account?  <a href="SignUp.aspx"> Sign up </a>   </p></td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [username], [password] FROM [User]"></asp:SqlDataSource>
        <asp:Label ID="lbluser" runat="server" Visible="false"></asp:Label>
        <asp:Label ID="lblpwd" runat="server" Visible="false"></asp:Label>
        <asp:Label ID="lblmessage" runat="server" Visible="false" Text="Incorrect Username and Password"></asp:Label>
    </div>
    <div id="sum">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" Width="250px" Height="110px" BackColor="#FFFFE3" Font-Bold="True" HeaderText="* Required field. " />
    </div>
</asp:Content>

