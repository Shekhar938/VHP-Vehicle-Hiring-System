<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeaderMenu.ascx.cs" Inherits="MainUserControl_ucHeaderMenu" %>
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
        <td align="center" style="border:1px; border-bottom-color:#0B1322; border-bottom-style:solid" >
            <asp:Menu ID="Menu1" runat="server" BackColor="Transparent" DynamicHorizontalOffset="2"
                Font-Names="Verdana" Font-Size="0.8em" ForeColor="Black" Orientation="Horizontal"
                StaticSubMenuIndent="10px" Font-Bold="True" Height="43px" Width="672px">
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicHoverStyle BackColor="#5D7B9D" ForeColor="White" />
                <DynamicMenuStyle BackColor="#5D7B9D" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <Items>
                    <asp:MenuItem Text="|||" Value="|||"></asp:MenuItem>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Default.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="About Us" Value="About Us" NavigateUrl="~/frmAboutUs.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/frmContactUs.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <%--<asp:MenuItem Text="FeedBack" Value="Client" NavigateUrl="~/frmFeedBack.aspx"></asp:MenuItem>--%>
              <%--      <asp:MenuItem Text="|" Value="|"></asp:MenuItem>--%>
                    <asp:MenuItem Text="Admin" Value="Admin" NavigateUrl="~/Admin/frmAdminLogin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Login" Value="Login" NavigateUrl="~/frmLogin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="|||" Value="|||"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#5D7B9D" ForeColor="White" />
                <StaticMenuStyle BackColor="Transparent" />
            </asp:Menu>
        </td>
    </tr>
</table>
