<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmCancelReport.aspx.cs" Inherits="CustomerSection_frmCancelReport" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" border ="0" >
    <tr>
        <td align="center"  colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" class="text1" align="center" >
                Booking Cancellation Report</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridConform" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <%--<EmptyDataTemplate>
                    <asp:Label ID="LblEmplty" runat ="server" Text ="Already Cancelled"></asp:Label>
                    </EmptyDataTemplate> --%>
                    <Columns >
                    
                    
                    
                    
                     <asp:TemplateField HeaderText ="BookingID">
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
                     
                     <asp:TemplateField HeaderText ="BookingDate">
                     <ItemTemplate >
                     <asp:Label ID="LblBookingDate" runat ="server" Text='<%#Eval("DateOfBooked") %>'></asp:Label>
                     </ItemTemplate>
                     </asp:TemplateField>
                     
                     <asp:TemplateField HeaderText ="RemainingBalance(Rs)">
                     <ItemTemplate >
                     <asp:Label ID="LblTotalAmount" runat ="server" Text ='<%#Eval("BookingAmount") %>'></asp:Label>
                     </ItemTemplate>
                     </asp:TemplateField>
                                         </Columns>
                </asp:GridView>
                
        </tr>
        <tr>
            <td colspan="2" align="center" >
                &nbsp;&nbsp;
            </td>
        </tr>
     <tr>
         <td colspan="2" style="height: 22px; text-align: center">
                <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
                    Text="Label" Visible="False" Font-Names="Verdana"></asp:Label>&nbsp; &nbsp;<asp:Button ID="BtnHome" runat="server" CssClass="btnstyle"  OnClick="BtnHome_Click" Text="Home" /></td>
     </tr>
    </table>
</asp:Content>

