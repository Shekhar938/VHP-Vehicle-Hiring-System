<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmVechicleReport.aspx.cs" Inherits="Admin_frmVechicleReport" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<br />
<br />
<table>
<tr><td><asp:Label ID="smlcsmc" runat="server" 
                    Text="VEHICLE REPORTS" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" /></td></tr>
</table> 
<table>
<tr><td align="left"><asp:Button ID="btnExcel" Text="ExportToExcel" runat="server" OnClick="btnExcel_Click"/></td><td align="right"><asp:Button ID="btnPdf" Text="ExportToPdf"  runat="server" OnClick="btnPdf_Click" />   </td></tr>
<tr><td colspan="2" ><asp:GridView ID="GvUser" runat="server" AutoGenerateColumns="False"  >
<Columns>
<asp:BoundField DataField="VehicleId" HeaderText="VehicleId"/>
<asp:BoundField DataField="Description" HeaderText="Description"/>
<asp:BoundField DataField="Model" HeaderText="Model"/>  
<asp:BoundField DataField="Make" HeaderText="Make"/>
<asp:BoundField DataField="VehicleType" HeaderText="VehicleType"/>
<asp:BoundField DataField="RatePerDay" HeaderText="RatePerDay"/>

</Columns> 
</asp:GridView></td></tr> 
<tr><td colspan="2"  align="center" ><asp:Button ID="btnPrint" runat="server" OnClientClick="window.print()" Text="Print" /></td></tr>
</table> 
</center>
</asp:Content>

