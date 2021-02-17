<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmPackageBook.aspx.cs" Inherits="CustomerSection_frmPackageBook" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table align="center" border ="0" >
     <tr>
         <td align="center" colspan="3">
             &nbsp;&nbsp;
         </td>
         <td align="center" colspan="1">
         </td>
     </tr>
        <tr>
            <td colspan="3" align="center" class="text1" >
                Package Booking</td>
            <td align="center" class="text1" colspan="1">
            </td>
        </tr>
     <tr>
         <td align="center" colspan="3">
             &nbsp;&nbsp;
         </td>
         <td align="center" colspan="1">
         </td>
     </tr>
        <tr>
            <td align="right" class="text">
                Select PackageId:</td>
            <td align="left" class="text" style="width: 9px">
                
            </td>
            <td >
                <asp:DropDownList ID="DdlPackageId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlPackageId_SelectedIndexChanged" >
                    <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList></td>
            <td>
            </td>
        </tr>
        <tr>
            <td align="right" class="text">
                Details:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtDetails" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Price(Rs.):</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtPrice" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                No Days:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtNoOfDays" OnKeypress="return onlyNumbers(event)" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Booking Date:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtBookingDate" runat="server"></asp:TextBox>
                </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtBookingDate"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
     <tr>
         <td class="text" align="right">
                Vehicle Id:</td>
         <td align="right" class="text" style="width: 9px">
         </td>
         <td >
             <asp:DropDownList ID="DdlVehicleId" runat="server">
                 <asp:ListItem>Select</asp:ListItem>
             </asp:DropDownList>
             </td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DdlVehicleId"
                 ErrorMessage="*"></asp:RequiredFieldValidator></td>
     </tr>
        <tr>
            <td class="text" align="right">
                UserName:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:TextBox ID="TxtUserName" OnKeypress="return onlyNumbers(event)" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td>
            </td>
        </tr>
     <tr>
         <td class="text" align="right">
                UserId:</td>
         <td align="right" class="text" style="width: 9px">
         </td>
         <td >
             <asp:TextBox ID="TxtUseID" runat="server" ReadOnly="True"></asp:TextBox></td>
         <td>
         </td>
     </tr>
        <tr>
            <td class="text" align="right">
                Mode of Payment:</td>
            <td align="right" class="text" style="width: 9px">
            </td>
            <td >
                <asp:DropDownList ID="DdlAmountPaid" runat="server"  AutoPostBack="True">
                    <asp:ListItem>...Select...</asp:ListItem>
                    <asp:ListItem>CreditCard</asp:ListItem>
                </asp:DropDownList></td>
            <td>
            </td>
        </tr>
     <tr>
         <td align="right" class="text" colspan="4" style="text-align: center">
             &nbsp;&nbsp;
         </td>
     </tr>
        <tr>
            <td colspan="3" align="right">
                <asp:Button ID="BtnBooking" runat="server" CssClass="btnstyle" Text="Booking" OnClick="BtnBooking_Click" />&nbsp;
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" Text="Cancel" OnClick="BtnCancel_Click" CausesValidation="False" />&nbsp;
                <asp:Button ID="BtnBack" runat="server" CssClass="btnstyle" CausesValidation="False" OnClick="BtnBack_Click"
                    Text="Back"  />
                <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
                    Text="Label" Visible="False" Font-Names="Verdana"></asp:Label></td>
            <td colspan="1">
            </td>
        </tr>
    </table>

</asp:Content>

