<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmPackages.aspx.cs" Inherits="CustomerSection_frmPackages" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" >
<tr>
<td align="center">

<table border ="0" >
    <tr>
        <td align="center"  colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" class="text1" align="center">
                Pakages Provided By Our Organization</td>
        </tr>
        <tr>
            <td style="height: 21px;" colspan="2">
                <asp:GridView ID="GridPackage" runat="server" BackColor="White" BorderColor="#CCCCCC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <Columns >
                    <asp:BoundField DataField ="PackageId" HeaderText ="PackageId" />
                    <asp:BoundField DataField ="Details" HeaderText ="Details" />
                    <asp:BoundField DataField ="NoOfDays" HeaderText ="TourOnDays" />
                    <asp:BoundField DataField ="Price" HeaderText ="Price(Rs)" />
                    
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    <tr>
        <td colspan="2" style="height: 21px">
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="2" style="height: 21px; text-align: center">
            <asp:Button ID="BtnPackage" runat="server" CssClass="btnstyle" OnClick="BtnPackage_Click" Text="BookPackage" />&nbsp;
            <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" OnClick="BtnCancel_Click" Text="Cancel" /></td>
    </tr>
    </table>


</td>
</tr>

</table>
    


</asp:Content>

