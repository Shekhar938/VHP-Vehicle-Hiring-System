<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmCustomerReports.aspx.cs" Inherits="Admin_frmCustomerReports" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<br />
<br />
<table>
<tr><td><asp:Label ID="smlcsmc" runat="server" 
                    Text="USER REPORTS" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" /></td></tr>
</table> 
<table>
<tr><td align="left"><asp:Button ID="btnExcel" Text="ExportToExcel" runat="server" OnClick="btnExcel_Click"/></td><td align="right"><asp:Button ID="btnPdf" Text="ExportToPdf"  runat="server" OnClick="btnPdf_Click" />   </td></tr>
<tr><td colspan="2" ><asp:GridView ID="GvUser" runat="server" AutoGenerateColumns="False"  PageSize="8" OnPageIndexChanging="GvUser_PageIndexChanging">
<Columns>
<asp:BoundField DataField="UserId" HeaderText="UserId"/>
<asp:BoundField DataField="UserName" HeaderText="UserName"/>
<asp:BoundField DataField="EmailId" HeaderText="EmailId"/>  
<asp:BoundField DataField="MobileNo" HeaderText="MobileNo"/>
<asp:BoundField DataField="Address" HeaderText="Address"/>
<asp:BoundField DataField="City" HeaderText="City"/>
<asp:BoundField DataField="State" HeaderText="State"/>
<asp:BoundField DataField="ZipCode" HeaderText="ZipCode"/>
</Columns> 
</asp:GridView></td></tr> 
<tr><td colspan="2"  align="center" ><asp:Button ID="btnPrint" runat="server" OnClientClick="window.print()" Text="Print" /></td></tr>
</table> 
</center>
</asp:Content>

