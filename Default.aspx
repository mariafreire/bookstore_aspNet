<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    #wrap {
        width: 100%;
            height: 474px;
            background-image: url('img/bgHome.png');
            background-size: cover;
            background-repeat: no-repeat;
            color: white;
    } 
    h1 {
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        letter-spacing: 2px;
        text-shadow: 0px 0px 5px rgba(0,0,0,0.8);
        font-size: 40px;
        margin:0;
        text-align: center;
        position:relative;
        top: 80px;
    }
    #call {
        width: 70%;
        position: relative;
        top: 100px;
        left: 120px;
        font-size: 25px;
        text-align: center;
    }
    #iconBook {
        position: relative;
        top: 100px;
        left: 330px;
        opacity: 0.9;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrap">
        <h1>Welcome to GreenHouse Bookstore</h1>
        <div id="call">
            <p>Tons of book collections you can choose from. Books that don't suck. We ensure the quality of your books. The best you can find anywhere.</p>
        </div>
        <img src="img/iconBook.png" width="150" id="iconBook" />
    </div>
</asp:Content>

