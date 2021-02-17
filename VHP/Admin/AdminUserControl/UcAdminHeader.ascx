<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UcAdminHeader.ascx.cs" Inherits="Admin_UcAdminWebUserControl" %>
<style type="text/css">
    .style1
    {
        width: 948px;
    }
</style>
<table >
 <tr>
                <td colspan="20" width = "100%">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#6699FF" DynamicHorizontalOffset="2"
                        Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" ForeColor="Black" Orientation="Horizontal"
                        StaticSubMenuIndent="10px" Width="1000px" Height="43px"  
                        style="margin-bottom: 0px" >
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="#5D7B9D" ForeColor="White" />
                        <DynamicMenuStyle BackColor="#5D7B9D" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <DynamicMenuItemStyle HorizontalPadding="2px" VerticalPadding="2px" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Admin/frmHome.aspx" Text="Home" Value="Home"></asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem Text="Admin Management" Value="Clients">
                                <asp:MenuItem NavigateUrl="~/Admin/frmEmployeeInfo.aspx" Text="Employees" Value="Employees">
                                </asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmEmployeeRegistration.aspx" Text="Add Employee"
                                    Value="Add Employee"></asp:MenuItem>
                                <%--<asp:MenuItem Text="view feedback" Value="view feedback" 
                                    NavigateUrl="~/Admin/frmfeedback.aspx"></asp:MenuItem>--%>
                            </asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem Text="Vehicle Booking Info" Value="Search">
                                <asp:MenuItem NavigateUrl="~/Admin/frmAdminBookingsDisplay.aspx" Text="Booking Status"
                                    Value="Booking Status"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmBookings.aspx" Text="Vehicle Status" Value="Vehicle Status">
                                </asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmAdminPackage.aspx" Text="Packages" Value="Packages">
                                </asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem Text="Vehicle Management" Value="Contact Us">
                                <asp:MenuItem NavigateUrl="~/Admin/frmList.aspx" Text="Vehicle Details" Value="Vehicle Details">
                                </asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem Text="Reports" Value="Login">
                                <asp:MenuItem NavigateUrl="~/Admin/frmBookingReports.aspx" Text="Booking Reports"
                                    Value="Booking Reports"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmCustomerReports.aspx" Text="Customer Reports"
                                    Value="Customer Reports"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Admin/frmVechicleReport.aspx" Text="Vehicle Reports"
                                    Value="Vehicle Reports"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Default2.aspx" Text="LogOut" Value="LogOut">
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#5D7B9D" ForeColor="White" />
                    </asp:Menu>
                </td>
            </tr>
            </table>