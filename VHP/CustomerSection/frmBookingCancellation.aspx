<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmBookingCancellation.aspx.cs" Inherits="CustomerSection_frmBookingCancellation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border ="0">
        <tr>
            <td align="center" colspan="3">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" class="text1" align="center">
                Booking Cancellation</td>
        </tr>
        <tr>
            <td class="text">
                Booking ID:</td>
            <td >
                <asp:TextBox ID="TxtBookingId" runat="server" MaxLength="25"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtBookingId"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text">
                Date Of Booked:</td>
            <td>
                <asp:TextBox ID="TxtDateOfBook" runat="server"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtDateOfBook"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text" colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" OnClick="BtnCancel_Click" Text="Cancellation" Width="103px"  />&nbsp;
                
                <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" CausesValidation="False" OnClick="BtnHome_Click"
                    Text="Home" /></td>
            <td colspan="1" style="text-align: center">
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center; height: 22px;">
                <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
                    Text="Label" Visible="False" Font-Names="Verdana"></asp:Label></td>
        </tr>
    </table>


</asp:Content>

