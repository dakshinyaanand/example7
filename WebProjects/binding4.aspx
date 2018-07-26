<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="binding4.aspx.cs" Inherits="WebProjects.binding4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate >
                <table border="1">
                    <tr>
                        <th style="background-color:antiquewhite;font-family:Calibri;font-size:medium">
                            Id
                        </th>
                        <th style="background-color:antiquewhite;font-family:Calibri;font-size:medium">
                            Name
                        
                        </th >
                        <th style="background-color:antiquewhite;font-family:Calibri;font-size:medium">
                            Gender
                        </th>
                        <th style="background-color:antiquewhite;font-family:Calibri;font-size:medium">
                            Membership
                        </th>
                        <th style="background-color:antiquewhite;font-family:Calibri;font-size:medium">
                            Shoppingpreference
                        </th>
                        <th style="background-color:antiquewhite;font-family:Calibri;font-size:medium">
                            COD
                        </th>
                        <th style="background-color:antiquewhite;font-family:Calibri;font-size:medium">
                            Password
                        </th>
                        
                    </tr>
                    <tr>
                        <td style="background-color:beige;font-family:Calibri;font-size:medium">
                            <%#Eval("Id") %></td>
                         <td style="background-color:beige;font-family:Calibri;font-size:medium">
                            <%#Eval("Name") %>
                        </td>
                        <td style="background-color:beige;font-family:Calibri;font-size:medium">
                            <%#Eval("Gender") %>
                        </td>
                        <td style="background-color:beige;font-family:Calibri;font-size:medium">
                            <%#Eval("Membership") %>
                        </td>
                         <td style="background-color:beige;font-family:Calibri;font-size:medium" >
                            <%#Eval("ShoppingPreference") %>
                        </td>
                        <td style="background-color:beige;font-family:Calibri;font-size:medium">
                            <%#Eval("COD") %>
                        </td>
                        <td style="background-color:beige;font-family:Calibri;font-size:medium">
                            <%#Eval("Password") %>
                        </td>
                         
                    </tr>
                </table>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TrainingDBConnectionString %>" DeleteCommand="DELETE FROM [RegisterShopping] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Membership] = @original_Membership AND [ShoppingPreference] = @original_ShoppingPreference AND [COD] = @original_COD AND [Password] = @original_Password" InsertCommand="INSERT INTO [RegisterShopping] ([Name], [Gender], [Membership], [ShoppingPreference], [COD], [Password]) VALUES (@Name, @Gender, @Membership, @ShoppingPreference, @COD, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Name], [Gender], [Membership], [ShoppingPreference], [COD], [Password] FROM [RegisterShopping]" UpdateCommand="UPDATE [RegisterShopping] SET [Name] = @Name, [Gender] = @Gender, [Membership] = @Membership, [ShoppingPreference] = @ShoppingPreference, [COD] = @COD, [Password] = @Password WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Membership] = @original_Membership AND [ShoppingPreference] = @original_ShoppingPreference AND [COD] = @original_COD AND [Password] = @original_Password">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Membership" Type="String" />
                <asp:Parameter Name="original_ShoppingPreference" Type="String" />
                <asp:Parameter Name="original_COD" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Membership" Type="String" />
                <asp:Parameter Name="ShoppingPreference" Type="String" />
                <asp:Parameter Name="COD" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Membership" Type="String" />
                <asp:Parameter Name="ShoppingPreference" Type="String" />
                <asp:Parameter Name="COD" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Membership" Type="String" />
                <asp:Parameter Name="original_ShoppingPreference" Type="String" />
                <asp:Parameter Name="original_COD" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
