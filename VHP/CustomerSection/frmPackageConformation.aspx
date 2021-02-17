<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmPackageConformation.aspx.cs" Inherits="CustomerSection_frmPackageConformation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" border ="0" >
    <tr>
        <td align="center"  colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="center" class="text1">
                Your Package Conformation</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;&nbsp;
                </td> 
                </tr> 
     <tr>
         <td colspan="2">
             <asp:Label ID="LblTransId" runat="server" Font-Bold="True" Font-Size="0.8em" ForeColor="red" Font-Names="verdana"
                 Text="Label"></asp:Label></td>
     </tr>
     <tr>
         <td colspan="2">
         </td>
     </tr>
     <tr>
         <td colspan="2">
             <asp:Label ID="LblUserName" runat="server" Font-Bold="True" Font-Size="0.8em" ForeColor="red"
                 Text="Label"></asp:Label></td>
     </tr>
     <tr>
         <td colspan="2">
         </td>
     </tr>
     <tr>
         <td colspan="2">
             <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="0.8em" ForeColor="red"
                 Text="Label"></asp:Label></td>
     </tr>
     <tr>
         <td colspan="2" style="text-align: center">
             &nbsp;&nbsp;
         </td>
     </tr>
     <tr>
         <td colspan="2" style="text-align: center">
             <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" Text="Home" OnClick="Button1_Click" /></td>
     </tr>
    </table>


</asp:Content>

