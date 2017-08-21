<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="Controls_header" %>


<header id="header_ct">
                 <asp:panel runat="server" class="Top_Container">

                    <asp:Label class="Team_Logo" runat="server">
                         <asp:ImageButton class="Image_Css" ImageUrl="~/images/hungry_face.png" ToolTip="Home " runat="server" DescriptionUrl="~\Appetizers.aspx" />
                     </asp:Label>
                    
                     

                     
                     <asp:Label class="H_Title" runat="server">
                         Appetite (Eat right,be bright)                  
                     </asp:Label>

                 

                    <asp:Label class="H_Search" runat="server">
                        <asp:TextBox class="SearchBar" runat="server" placeholder="Search Recipes" ToolTip="Enter dish name" />
                        <asp:Button class="Go_Css" runat="server" Text="Go" />
                    </asp:Label>

                 </asp:panel>

 </header>