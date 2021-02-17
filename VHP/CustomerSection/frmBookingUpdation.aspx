<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmBookingUpdation.aspx.cs" Inherits="CustomerSection_frmBookingUpdation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" border ="0">
    <tr>
        <td align="center"  colspan="4">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="4" class="text1" align="center">
                Update Booking Date</td>
        </tr>
    <tr>
        <td align="center"  colspan="4">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td  class="text" style="text-align: right">
                Select BookingId:</td>
            <td style="width: 9px" >
                
            </td>
            <td >
                <asp:DropDownList ID="DdlBookingId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlPackageId_SelectedIndexChanged" >
                </asp:DropDownList></td>
            <td >
            </td>
        </tr>
        <tr>
            <td  class="text" style="text-align: right">
                Booking Date:</td>
            <td style="width: 9px" >
            </td>
            <td >
                <asp:TextBox ID="TxtBookingDate" runat="server"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtBookingDate"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
     <tr>
         <td class="text" style="text-align: right">
                Vehicle Id:</td>
         <td style="width: 9px" >
         </td>
         <td >
             <asp:TextBox ID="TxtVehicleId" runat="server"></asp:TextBox></td>
         <td >
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtVehicleId"
                 ErrorMessage="*"></asp:RequiredFieldValidator></td>
     </tr>
        <tr>
            <td   class="text" style="text-align: right">
                UserName:</td>
            <td style="width: 9px" >
            </td>
            <td >
                <asp:TextBox ID="TxtUserName" OnKeypress="return onlyNumbers(event)" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td >
                </td>
        </tr>
     <tr>
         <td   class="text" style="text-align: right">
                UserId:</td>
         <td style="width: 9px" >
         </td>
         <td >
             <asp:TextBox ID="TxtUseID" runat="server" ReadOnly="True"></asp:TextBox></td>
         <td >
         </td>
     </tr>
    <tr>
        <td   class="text" style="text-align: right">
            Req:Date:</td>
        <td style="width: 9px" >
        </td>
        <td >
            <asp:TextBox ID="TxtRequiredDate" runat="server"></asp:TextBox></td><td>dd-mm-yy</td>
        <td >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtRequiredDate"
                ErrorMessage="*"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td colspan="4" style="text-align: center">
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="text-align: right" colspan="3" >
            <asp:Button ID="BtnAvaliability" runat="server" CssClass="btnstyle" Text="CheckAvalibility"
                Width="125px" OnClick="BtnAvaliability_Click" /></td>
        <td >
        </td>
    </tr>
        <tr>
            <td colspan="3" style="text-align: right" >
                <asp:Button ID="BtnBooking" runat="server" CssClass="btnstyle" Text="Booking" OnClick="BtnBooking_Click" />
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" Text="Cancel" OnClick="BtnCancel_Click" CausesValidation="False"   />
                <asp:Button ID="BtnBack" runat="server" CssClass="btnstyle" CausesValidation="False" OnClick="BtnBack_Click"
                    Text="Back" />
                <asp:Label ID="LblMessage" runat="server" Text="Label" Font-Bold="True" Font-Size="Smaller" ForeColor="Red" Visible="False" Font-Names="Verdana" Width="40px"></asp:Label></td>
            <td colspan="1" >
                </td>
        </tr>
    </table>
</asp:Content>

