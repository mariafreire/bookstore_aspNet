<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignIn" %>

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
            height: 400px;
            background: #f5f5f5;
            border-radius: 5px;
            position: relative;
            top: 40px;
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
            margin: 0;
            padding:0;
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
        .auto-style14 {
            height: 17px;
        }
        .ErrorMessage {
            color: red;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            height: 19px;
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
        #sum::after {
            position: absolute;
            top: 300px;
            left: 200px;
            width: 80px;
            height: 40px;
            background: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div class="newStyle1">
        <div id="container">
            <table class="auto-style11">
                <tr>
                    <td><h1 id="asign">Create account</h1>
                    </td>
                </tr>
                <tr>
                    <td><p class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        <p class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USERNAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server"></asp:Label></p>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style13"><asp:TextBox ID="TextBox1" runat="server" Width="241px" BorderStyle="Solid" Height="25px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" BorderColor="#191919" BorderWidth="1px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter your username" Font-Size="Smaller" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><p class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PASSWORD</p> 
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style12"><asp:TextBox ID="TextBox2" runat="server" Width="244px" BorderStyle="Solid" Height="25px" TextMode="Password" BorderColor="#191919" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter your password" Font-Size="Smaller" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>                
                <tr>
                    <td><p class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CONFIRM PASSWORD</p></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox3" runat="server" Width="244px" BorderStyle="Solid" Height="25px" TextMode="Password" BorderColor="#191919" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="ErrorMessage" ErrorMessage="Confirm your password" Font-Size="Smaller" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Password doesn't match" Font-Size="Smaller">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"><p class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ZIP CODE</p> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"><asp:TextBox ID="TextBox4" runat="server" Width="244px" BorderStyle="Solid" Height="25px" BorderColor="#191919" BorderWidth="1px"></asp:TextBox>   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter your zip code" Font-Size="Smaller" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid zipcode" Font-Size="Smaller" ValidationExpression="\d{5}(-\d{4})?">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Create account" Width="244px" Height="30px" OnClick="Button1_Click" />
                    <br />
                </td>
                </tr>
                <tr>
                    <td class="auto-style16"><p id="content-bottom">Already have an account?  <a href="SignIn.aspx"> Sign In </a>   </p></td>
                </tr>
            </table>
        </div>
        <div id="sum">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [username], [password], [confirm_password], [zipcode] FROM [User]"></asp:SqlDataSource>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" Width="250px" Height="110px" BackColor="#FFFFE3" Font-Bold="True" HeaderText="* Required field. " />
        </div>
    </div>
</asp:Content>

