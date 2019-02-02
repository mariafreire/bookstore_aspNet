<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #arrival-wrap {
        background: #e8e8f3;
        height: 474px;
        font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        color: #191919;
        }
        h1, h2 {
            margin:0;
            padding: 30px 100px 10px 100px;     
        }
        .content {
            width: 75%;
            position: relative;
            left: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="arrival-wrap">
        <h1>About Us</h1>
        <div class="content">
            <p>WCTC Bookstore supplies WCTC students with textbooks and academic supplies specific to their course needs. We strive each day to meet the needs of our customers to the best of our abilities. If you have any suggestions or questions, we&#39;d love to hear from you. Please send an e-mail to the address below and we&#39;ll get back to you as soon as possible.</span></p>
            <p>mwbookstore@contact.com</p>
        </div>
        <h2>Store Hours</h2>
        <div class="content">
            <p>Monday to Thursday 7:00am to 7:00pm<br/>
                Fridays 7:00am to 4:30pm<br/>
                Closed Saturday &amp; Sunday</p>
        </div>
    </div>
</asp:Content>

