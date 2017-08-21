<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StartPage.aspx.cs" Inherits="StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/StyleSheet.css" rel="stylesheet" />
</head>
<body class="StartBody">


    <form id="form1" runat="server">
          
        
        <asp:Panel ID="start_Container" runat="server">

            <asp:Panel ID="Panel1" CssClass="Space" runat="server">
              <asp:Label ID="Label1" CssClass="startTitle_1" runat="server" Text="Label"><h1>IAD Project - TEAM22</h1></asp:Label>
          </asp:Panel>
            <asp:Panel ID="Panel2" CssClass="Space" runat="server">
              <asp:Label ID="Label2" CssClass="startTitle_2" runat="server" Text="Label"><h2>Are you ready to get FOOD?</h2></asp:Label>
          </asp:Panel>
           
            <asp:Panel ID="bg_Image" runat="server">
                 <asp:HyperLink ID="startBt" CssClass="startBt" runat="server" NavigateUrl="~/Appetizers.aspx">Let's Go!</asp:HyperLink>
            </asp:Panel>
         
        </asp:Panel>
          
    </form>

    
</body>
</html>
