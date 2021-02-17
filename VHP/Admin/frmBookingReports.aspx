<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmBookingReports.aspx.cs" Inherits="Admin_frmBookingReports" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<br />
<br />
<table>
<tr><td><asp:Label ID="smlcsmc" runat="server" 
                    Text="BOOKING REPORTS" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" /></td></tr>
</table> 
<table>
<tr><td align="left"><asp:Button ID="btnExcel" Text="ExportToExcel" runat="server" OnClick="btnExcel_Click"/></td><td align="right"><asp:Button ID="btnPdf" Text="ExportToPdf"  runat="server" OnClick="btnPdf_Click" />   </td></tr>
<tr><td colspan="2"><asp:GridView ID="Gvboooking" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="Gvboooking_PageIndexChanging" PageSize="8">
<Columns>
<asp:BoundField DataField="BookingId" HeaderText="BookingId"/>  
<asp:BoundField DataField="DateofBooked" HeaderText="DateofBooked"/>
<asp:BoundField DataField="VehicleId" HeaderText="VehicleId"/>
<asp:BoundField DataField="UserId" HeaderText="UserId"/>
<asp:BoundField DataField="UserName" HeaderText="UserName"/>
<asp:BoundField DataField="BookingAmount" HeaderText="BookingAmount"/>
<asp:BoundField DataField="AmountPaid" HeaderText="AmountPaid"/>

</Columns> 
</asp:GridView></td></tr>
<tr><td colspan="2"  align="center" ><asp:Button ID="btnPrint" runat="server" OnClientClick="window.print()" Text="Print" /></td></tr> 
</table> 
</center>
</asp:Content>

