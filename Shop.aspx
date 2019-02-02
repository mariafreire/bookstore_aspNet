<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      #wrap {
        width: 100%;
        height: 474px;
        background-image: url('img/bgShop.png');
        background-size: cover;
        background-repeat: no-repeat;
        color: black;
      }
      h1 {
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        letter-spacing: 2px;
        font-size: 40px;
        margin:0;
        text-align: center;
        position:relative;
        top: 7px;
        left: -8px;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrap">
        <center>
            <br />
            <h1>Find your book!</h1>
            <br />
            <hr />
            Type the book's title: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
            <hr />
            <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No available in this moment." DataSourceID="">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <hr />
            Or choose the book's title here: 
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="book" DataValueField="book">
                <asp:ListItem Value="">Make a selection</asp:ListItem>
            </asp:DropDownList>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Ref" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="book" HeaderText="Book Title" SortExpression="book" />
                    <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" />
                    <asp:BoundField DataField="price" HeaderText="Price $" SortExpression="price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([book] = @book)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="book" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [book], [author], [price] FROM [Product]"></asp:SqlDataSource>
        </center>
    </div>
</asp:Content>

