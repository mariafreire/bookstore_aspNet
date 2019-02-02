<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LosAngeles.aspx.cs" Inherits="NewYork" %>

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
            right: 180px;
         }
        .ny {
            position: relative;
            top: 40px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="arrival-wrap">
        <h1 class="ny">Los Angeles, California</h1>
        <p class="ny">530 W 49th St<br/>
            phone: (877) 515-5394<br/>
            contact.losangeles@greenhouse.com</p>
        <h1 class="ny">Store Hours</h1>
        <div id="content-one" class="ny">
            <p>Monday to Thursday 7:00am to 7:00pm<br/>
                Fridays 7:00am to 4:30pm<br/>
                Closed Saturday &amp; Sunday</p>
        </div>
        <div id="content-two" class="ny">
            <table>
              <tr><td style="text-align: center;"><canvas id="canvas_tt5c4222e1340df" width="125" height="125"></canvas></td></tr>
              <tr><td style="text-align: center; font-weight: bold"><a href="//24timezones.com/world_directory/current_los_angeles_time.php" style="text-decoration: none" class="clock24" id="tz24-1547838177-c1137-eyJzaXplIjoiMTI1IiwiYmdjb2xvciI6IkZGRkZGRiIsImxhbmciOiJlbiIsInR5cGUiOiJhIiwiY2FudmFzX2lkIjoiY2FudmFzX3R0NWM0MjIyZTEzNDBkZiJ9" title="time at Los Angeles" target="_blank" rel="nofollow"></a></td></tr>
            </table>
            <script type="text/javascript" src="//w.24timezones.com/l.js" async></script>
        </div>
    </div>
</asp:Content>

