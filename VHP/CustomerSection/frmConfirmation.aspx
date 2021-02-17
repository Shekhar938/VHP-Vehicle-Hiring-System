<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmConfirmation.aspx.cs" Inherits="CustomerSection_frmConfirmation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table align="center" border ="0">
     <tr>
         <td align="center"  colspan="2">
             &nbsp;&nbsp;
         </td>
     </tr>
        <tr>
            <td colspan="2" class="text1" align="center">
               Your Booking Confirmation</td>
        </tr>
        <tr>
            <td colspan="2" align="center" >
                &nbsp;&nbsp;
                </td> 
                </tr> 
     <tr>
         <td colspan="2">
             <asp:Label ID="LblBookingId" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"
                 Text="Label" Font-Names="Verdana"></asp:Label></td>
     </tr>
     <tr>
         <td colspan="2">
         </td>
     </tr>
     <tr>
         <td colspan="2">
             <asp:Label ID="LblUserName" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"
                 Text="Label" Font-Names="Verdana"></asp:Label></td>
     </tr>
     <tr>
         <td colspan="2">
         </td>
     </tr>
     <tr>
         <td colspan="2" style="height: 18px">
             <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"
                 Text="Label" Font-Names="Verdana"></asp:Label></td>
     </tr>
     <tr>
         <td colspan="2" align="center" >
             &nbsp;&nbsp;
         </td>
     </tr>
     <tr>
         <td colspan="2">
             <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" Text="Home" OnClick="Button1_Click" /></td>
     </tr>
    </table>
   
</asp:Content>

