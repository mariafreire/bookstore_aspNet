﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Management_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AutoGenerateEditButton="true" AutoGenerateDeleteButton="True">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateInsertButton="True" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        </asp:DetailsView>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    
</asp:Content>

