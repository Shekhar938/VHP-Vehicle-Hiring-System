<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAdminBookingCancelDisplay.aspx.cs" Inherits="Admin_frmAdminBookingCancelDisplay" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="35%">
    <tr>
        <td align="center" class="text1" colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="center"><asp:Label ID="aknxk" runat="server" 
                    Text="Booking Cancelling Information" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" /></td>
        </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2">
             <asp:GridView ID="GridCancelRec" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True" AllowSorting="True" PageSize="5" OnPageIndexChanging="GridCancelRec_PageIndexChanging" OnSorting="GridCancelRec_Sorting" ShowFooter="True" Width="457px">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <Columns >
                  <asp:TemplateField HeaderText ="BookingID" SortExpression ="BookingId">
                    <ItemTemplate >
                    <asp:Label ID="LblBookingId" runat ="server" Text ='<%#Eval("BookingId") %>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                  <asp:TemplateField HeaderText ="VehicleID">
                    <ItemTemplate >
                    <asp:Label ID="LblVehicleId" runat ="server" Text ='<%#Eval("VehicleId") %>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                     
                     <asp:TemplateField HeaderText ="UserId">
                     <ItemTemplate >
                     <asp:Label ID="LblUserId" runat="server" Text ='<%#Eval("UserId") %>'></asp:Label>
                     </ItemTemplate>
                     </asp:TemplateField>
                     
                     <asp:TemplateField HeaderText ="TimePeriod" >
                     <ItemTemplate >
                     <asp:Label ID="Lbltime" runat ="server" Text ='<%#Eval("TimePeriod") %>' ></asp:Label>
                     </ItemTemplate>
                     </asp:TemplateField>
                     
                     <asp:TemplateField HeaderText ="BookingDate" SortExpression="DateOfBooked">
                     <ItemTemplate >
                     <asp:Label ID="LblBookingDate" runat ="server" Text='<%#Eval("DateOfBooked") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate >
                     <asp:Label ID="LblMessage" runat ="server" Text ="Refund Amount:"></asp:Label>
                     </FooterTemplate>
                     </asp:TemplateField>
                     
                     <asp:TemplateField HeaderText ="RemainingBalance">
                     <ItemTemplate >
                     <asp:Label ID="LblTotalAmount" runat ="server" Text ='<%#Eval("BookingAmount") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate >
                     <asp:Label ID="LblAmount" runat ="server" Text ='<%#Sum()%>'></asp:Label>
                     </FooterTemplate>
                     </asp:TemplateField>
                                         </Columns>
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
              
                
            </td>
        </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle"  Text="Home" OnClick="BtnHome_Click" />
            </td>
        </tr>
    </table>
</div> 
</asp:Content>

