<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Binding5.aspx.cs" Inherits="WebProjects.Binding5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="Id" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Gender:
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                <br />
                Membership:
                <asp:Label ID="MembershipLabel" runat="server" Text='<%# Eval("Membership") %>' />
                <br />
                ShoppingPreference:
                <asp:Label ID="ShoppingPreferenceLabel" runat="server" Text='<%# Eval("ShoppingPreference") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                COD:
                <asp:Label ID="CODLabel" runat="server" Text='<%# Eval("COD") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingDBConnectionString %>" SelectCommand="SELECT [Id], [Name], [Gender], [Membership], [ShoppingPreference], [Password], [COD] FROM [RegisterShopping]"></asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
