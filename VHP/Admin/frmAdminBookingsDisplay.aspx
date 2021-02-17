<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAdminBookingsDisplay.aspx.cs" Inherits="Admin_frmAdminBookingsDisplay" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table align="center" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="2" style="text-align: center">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="center"><asp:Label ID="saml" runat="server" 
                    Text="Booking Conformation Information" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" /></td>
        </tr>
    <tr>
        <td colspan="2" style="text-align: center; height: 19px;">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" style="text-align: center">
             <asp:GridView ID="GridBookingRec" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    AllowPaging="True" AllowSorting="True" PageSize="5" 
                    OnPageIndexChanging="GridCancelRec_PageIndexChanging" 
                    OnSorting="GridCancelRec_Sorting" ShowFooter="True" Height="203px" 
                    onrowcommand="GridBookingRec_RowCommand">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <Columns >
                    
                    
                    
                    
                     <asp:TemplateField HeaderText ="BookingID" SortExpression ="BookingId">
                    <ItemTemplate >
                    <asp:LinkButton ID="lbClick" CommandArgument='<%# Eval("BookingId") %>' runat ="server" Text ="Accept" />
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
                     <asp:Label ID="LblCaption" Text ="TotalAmount:" runat="server" ></asp:Label>
                     </FooterTemplate>
                     </asp:TemplateField>
                     
                     <asp:TemplateField HeaderText ="Balance">
                     <ItemTemplate >
                     <asp:Label ID="LblTotalAmount" runat ="server" Text ='<%#Eval("BookingAmount") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate >
                     <asp:Label ID="LblBalance" runat ="server" Text='<%#Sum()%>' ></asp:Label>
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
                <asp:Button ID="BtnCancelRec" runat="server" CssClass="btnstyle"  Text="CancelRec" OnClick="BtnCancelRec_Click"/>
                <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" Text="Home" OnClick="BtnHome_Click" /></td>
        </tr>
    </table>
</div> 
</asp:Content>

