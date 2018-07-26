<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Binding7.aspx.cs" Inherits="WebProjects.Binding7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <td style="background-color:bisque;font-size:x-large">Register Shopping</td>
                    </tr>
                </table>
            </HeaderTemplate>
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

        </asp:Repeater>
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingDBConnectionString %>" SelectCommand="SELECT [Id], [Name], [Gender], [Membership], [ShoppingPreference], [COD], [Password] FROM [RegisterShopping]"></asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
