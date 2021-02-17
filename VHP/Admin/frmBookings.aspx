<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmBookings.aspx.cs" Inherits="Admin_frmBookings" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border ="0"  cellpadding="0" cellspacing="0" width="35%">
        <tr>
            <td align="center"  colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center"  colspan="2"><asp:Label ID="smlcsmc" runat="server" 
                    Text="Booking Information" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" />
                </td>
        </tr>
        <tr>
            <td align="center"  colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" class="text">
                Vehicle Name:
            </td>
            <td style="width: 141px" >
                <asp:DropDownList ID="DdlVehicleId" runat="server" OnSelectedIndexChanged="DdlVehicleId_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DdlVehicleId"
                    ErrorMessage="*" InitialValue="Select"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" class="text">
                Booking Id:
            </td>
            <td >
                <asp:TextBox ID="TxtBookId" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" class="text">
                Date of Booked:
            </td>
            <td >
                <asp:TextBox ID="TxtDate" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" class="text">
                User Id:</td>
            <td style="width: 141px">
                <asp:TextBox ID="TxtUserId" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" class="text">
                Time Period:
            </td>
            <td >
                <asp:TextBox ID="TxtTimePeriod" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" class="text">
                Booking Amount:<br />
            </td>
            <td >
                <asp:TextBox ID="TxtBookingAmount" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" class="text">
                Amount Paid:
            </td>
            <td>
                <asp:TextBox ID="TxtAmountPaid" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" class="text">
                Booking Status:
            </td>
            <td >
                <asp:TextBox ID="TxtBookingStatus" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" class="text" colspan="2" style="text-align: center">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" class="text" style="text-align: center" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="btnstyle" Text="Clear" Width="56px" OnClick="Button1_Click" /><asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" CausesValidation="False" 
                    Text="Home" OnClick="BtnHome_Click" /></td>
        </tr>
    </table>
</asp:Content>

