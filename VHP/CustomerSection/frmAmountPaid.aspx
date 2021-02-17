<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmAmountPaid.aspx.cs" Inherits="CustomerSection_frmAmountPaid" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" border ="0" cellpadding="0" cellspacing="0" 
        style="width: 327px">
    <tr>
        <td align="center"  colspan="4">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="4" align="center" class="text1">
                Charging Money for Booking</td>
        </tr>
    <tr>
        <td align="center"  colspan="4">
            &nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="left" class="text" style="width: 1071px">
                User Name:</td>
            <td colspan="1" style="width: 38px">
                <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                </td>
            <td colspan="1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUserName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
    <tr>
        <td colspan="2"  align="left" class="text" style="width: 1071px">
            Credit Card No:</td>
        <td colspan="1" style="width: 38px; height: 9px">
            <asp:TextBox ID="TxtCreditCardNo" OnKeypress="return onlyNumbers(event)" runat="server" MaxLength="16"></asp:TextBox>
            </td>
        <td colspan="1" >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCreditCardNo"
                ErrorMessage="*"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td colspan="2" align="left" class="text" style="width: 1071px">
            Booking Amount(Rs):</td>
        <td colspan="1" style="width: 38px" >
            <asp:TextBox ID="TxtBookingAmount" runat="server"></asp:TextBox></td>
        <td colspan="1">
        </td>
    </tr>
        <tr>
            <td colspan="4" style="text-align: center" >
                &nbsp;&nbsp;
                
            </td>
        </tr>
    <tr>
        <td colspan="3" style="text-align: right">
                <asp:Button ID="BtnOk" runat="server" CssClass="btnstyle" OnClick="BtnOk_Click" Text="Confirm" /></td>
        <td colspan="1">
        </td>
    </tr>
    <tr>
        <td colspan="4" style="text-align: center" >
            <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
                Text="Label" Visible="False" Font-Names="Verdana"></asp:Label></td>
    </tr>
    </table>


</asp:Content>

