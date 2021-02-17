<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmVehicleInformation.aspx.cs" Inherits="CustomerSection_frmVehicleInformation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" border ="0" >
    <tr>
        <td align="center"  colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="center" class="text1">
               Vechicle List</td>
        </tr>
    <tr>
        <td align="center" colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateColumns="False">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <RowStyle ForeColor="#330099" BackColor="White" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
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
        <td colspan="2" align="center">
            <asp:Button ID="BtnBack" runat="server" CssClass="btnstyle" Text="Back" OnClick="BtnBack_Click" /></td>
    </tr>
       
    </table>

</asp:Content>

