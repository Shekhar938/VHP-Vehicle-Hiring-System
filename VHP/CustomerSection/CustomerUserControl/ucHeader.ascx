<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeader.ascx.cs" Inherits="CustomerSection_CustomerWebUserControl" %>
<style type="text/css">
    .style1
    {
        width: 728px;
    }
</style>
<table>
 <tr>
  <td colspan="15" align="center" >
                    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFFCC" DynamicHorizontalOffset="2"
                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="Black" Orientation="Horizontal"
                        StaticSubMenuIndent="10px" Width="966px" Height="43px">
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="#5D7B9D" ForeColor="White" />
                        <DynamicMenuStyle BackColor="#5D7B9D" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/CustomerSection/frmUserHome.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem Text="Bookings" Value="Login">
                                <asp:MenuItem Text="Vehicle Booking" Value="Vehicle Booking" NavigateUrl="~/CustomerSection/frmVehicleBooking.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Packages" Value="Packages" NavigateUrl="~/CustomerSection/frmPackages.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/CustomerSection/frmBookingUpdation.aspx" Text="Edit Booking"
                                    Value="Edit Booking"></asp:MenuItem>
                                <asp:MenuItem Text="Cancel Booking" Value="Cancel Booking" NavigateUrl="~/CustomerSection/frmBookingCancellation.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem Text="Clients" Value="Clients" NavigateUrl="~/CustomerSection/frmClients.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem Text="Vehicle Informtion" Value="Search">
                                <asp:MenuItem Text="Vehicle Details" Value="Vehicle Details" NavigateUrl="~/CustomerSection/frmVehicleInformation.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/CustomerSection/frmTransportRules.aspx" Text="TransportRules"
                                    Value="TransportRules"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/CustomerSection/frmBranches.aspx" Text="Branches" Value="Branches">
                            </asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/CustomerSection/frmSearchVehicle.aspx" Text="Search"
                                Value="Search"></asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Default3.aspx" Text="LogOut"
                                Value="LogOut"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#5D7B9D" ForeColor="White" />
                    </asp:Menu>
                </td>
            </tr>
            </table>
