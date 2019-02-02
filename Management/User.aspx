<%@ Page Title="" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="Management_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h3>Update or delete a user</h3>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="524px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        <asp:BoundField DataField="confirm_password" HeaderText="confirm_password" SortExpression="confirm_password" />
        <asp:BoundField DataField="zipcode" HeaderText="zipcode" SortExpression="zipcode" />
    </Columns>
</asp:GridView><br />
    <h3>Insert a new user</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Justify" Width="321px">
        <Fields>
            <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [Id] = @Id" InsertCommand="INSERT INTO [User] ([username], [password], [confirm_password], [zipcode]) VALUES (@username, @password, @confirm_password, @zipcode)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [username], [password], [confirm_password], [zipcode] FROM [User]" UpdateCommand="UPDATE [User] SET [username] = @username, [password] = @password, [confirm_password] = @confirm_password, [zipcode] = @zipcode WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="confirm_password" Type="String" />
        <asp:Parameter Name="zipcode" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="confirm_password" Type="String" />
        <asp:Parameter Name="zipcode" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>

