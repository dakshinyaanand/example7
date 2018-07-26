<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Binding1.aspx.cs" Inherits="WebProjects.Binding1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Membership" HeaderText="Membership" SortExpression="Membership" />
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                <asp:BoundField DataField="ShoppingPreference" HeaderText="ShoppingPreference" SortExpression="ShoppingPreference" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TrainingDBConnectionString %>" DeleteCommand="DELETE FROM [RegisterShopping] WHERE [Id] = @original_Id AND [Gender] = @original_Gender AND [Name] = @original_Name AND [Membership] = @original_Membership AND [COD] = @original_COD AND [ShoppingPreference] = @original_ShoppingPreference AND [Password] = @original_Password" InsertCommand="INSERT INTO [RegisterShopping] ([Gender], [Name], [Membership], [COD], [ShoppingPreference], [Password]) VALUES (@Gender, @Name, @Membership, @COD, @ShoppingPreference, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Gender], [Name], [Membership], [COD], [ShoppingPreference], [Password] FROM [RegisterShopping]" UpdateCommand="UPDATE [RegisterShopping] SET [Gender] = @Gender, [Name] = @Name, [Membership] = @Membership, [COD] = @COD, [ShoppingPreference] = @ShoppingPreference, [Password] = @Password WHERE [Id] = @original_Id AND [Gender] = @original_Gender AND [Name] = @original_Name AND [Membership] = @original_Membership AND [COD] = @original_COD AND [ShoppingPreference] = @original_ShoppingPreference AND [Password] = @original_Password">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Membership" Type="String" />
                <asp:Parameter Name="original_COD" Type="String" />
                <asp:Parameter Name="original_ShoppingPreference" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Membership" Type="String" />
                <asp:Parameter Name="COD" Type="String" />
                <asp:Parameter Name="ShoppingPreference" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Membership" Type="String" />
                <asp:Parameter Name="COD" Type="String" />
                <asp:Parameter Name="ShoppingPreference" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Membership" Type="String" />
                <asp:Parameter Name="original_COD" Type="String" />
                <asp:Parameter Name="original_ShoppingPreference" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
