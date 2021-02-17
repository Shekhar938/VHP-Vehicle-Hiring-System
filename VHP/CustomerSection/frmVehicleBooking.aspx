<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmVehicleBooking.aspx.cs" Inherits="CustomerSection_frmVehicleBooking" Title="Untitled Page" %>
<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border ="0" >
        <tr>
            <td align="center"  colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center" class="text1">
               Vechicle Booking</td>
        </tr>
        <tr>
            <td align="center"  colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="text">
                Vechicle Name:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td  >
                <asp:DropDownList ID="DdlVehicleId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlVehicleId_SelectedIndexChanged">
                    <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Description:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" ReadOnly="True" CausesValidation="True"></asp:TextBox></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Model:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtModel" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Manufactured By:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtManuFacturer" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Vehicle Type:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtVehicleType" runat="server" CausesValidation="True" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Rate Per Day(Rs):</td>
            <td align="right" class="text" >
            </td>
            <td >
                <asp:TextBox ID="TxtRatePerDay" runat="server" ReadOnly="True" CausesValidation="True"></asp:TextBox></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                No. of Days:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtNoOfDays" OnKeypress="return onlyNumbers(event)" runat="server" Width="111px"></asp:TextBox>
                </td>
            <td style="width: 7px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNoOfDays"
                    ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td class="text" align="right">
                Booking Date:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtBookingDate" runat="server"></asp:TextBox>
                </td>
            <td style="width: 7px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtBookingDate"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    
        </tr>
        <tr>
            <td class="text" align="right">
                UserId:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtUserId" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                UserName:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtUserName" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Mode of Payment:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:DropDownList ID="DdlAmountPaid" runat="server" OnSelectedIndexChanged="DdlAmountPaid_SelectedIndexChanged">
                    <asp:ListItem>...Select...</asp:ListItem>
                    <asp:ListItem>CreditCard</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 7px">
            </td>
        </tr>
        <tr>
            <td  class="text" colspan="4" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: right" >
                <asp:Button ID="BtnBooking" runat="server" CssClass="btnstyle" Text="Booking" OnClick="BtnBooking_Click" />&nbsp;
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" Text="Cancel" OnClick="BtnCancel_Click" CausesValidation="False"  />&nbsp;
                <asp:Button ID="BtnBack" runat="server" CssClass="btnstyle" OnClick="BtnBack_Click" Text="Back" CausesValidation="False" /></td>
            <td colspan="1" style="width: 7px">
            </td>
        </tr>
    </table>
</asp:Content>

