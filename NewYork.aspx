<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewYork.aspx.cs" Inherits="NewYork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>
        #arrival-wrap {
        background: #e8e8f3;
        height: 474px;
        font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        color: #191919;
        }
        h1, h2, p {
            margin:0;
            padding: 20px 100px 0px 100px; 
            text-align:center;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            width: 212px;
            text-align: center;
        }
        #clock {
            width: 300px;
        }
        #content-one {
            float: left;
            margin-left: 50px;
        }
        #content-two {
            float: right;
            position: relative;
            top: 30px;
            right: 100px;
        }
        .ny {
            position: relative;
            top: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="arrival-wrap">
        <h1 class="ny">New York City</h1>
        <p class="ny">1293 Broadway<br/>
            phone: (877) 679-8772<br/>
            contact.newyork@greenhouse.com</p>
        <h1 class="ny">Store Hours</h1>
        <div id="content-one" class="ny">
            <p>Monday to Thursday 7:00am to 7:00pm<br/>
                Fridays 7:00am to 4:30pm<br/>
                Closed Saturday &amp; Sunday</p>
        </div>
        <div id="content-two" class="ny">
            <table id="clock">
              <tr><td style="text-align: center;"><canvas id="canvas_tt5c415414dfcc2" width="125" height="125"></canvas></td></tr>
              <tr><td><a href="//24timezones.com/world_directory/current_new_york_time.php" class="clock24" id="tz24-1547785236-c1179-eyJzaXplIjoiMTI1IiwiYmdjb2xvciI6IkZGRkZGRiIsImxhbmciOiJlbiIsInR5cGUiOiJhIiwiY2FudmFzX2lkIjoiY2FudmFzX3R0NWM0MTU0MTRkZmNjMiJ9" title="New York time zone" target="_blank" rel="nofollow"></a></td></tr>
          </table>
            <script type="text/javascript" src="//w.24timezones.com/l.js" ></script>    
            <p>&nbsp;</p>
        </div>
    </div>
</asp:Content>

