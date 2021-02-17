<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmList.aspx.cs" Inherits="Admin_frmList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center"  colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" >
                <asp:Label ID="smlcsmc" runat="server" 
                    Text="Vechicle List" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="100" AutoGenerateColumns="False">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <Columns >
                    <asp:BoundField DataField ="VehicleId" HeaderText ="VehicleName" />
                    <asp:BoundField DataField ="Description" HeaderText ="Description" />
                    <asp:BoundField DataField ="Model" HeaderText ="Model" />
                    <asp:BoundField DataField ="Make" HeaderText ="Company" />
                    <asp:BoundField DataField ="RatePerDay" HeaderText ="RentPerDay(Rs)" />
                    </Columns>
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
                <asp:Button ID="Button1" runat="server" CssClass="btnstyle" Text="Insert" OnClick="Button1_Click"/>&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="btnstyle" Text="Update" OnClick="Button2_Click"/>
            </td>
        </tr>
    </table>
    </div> 
</asp:Content>

