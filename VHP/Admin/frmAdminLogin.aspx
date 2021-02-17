<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmAdminLogin.aspx.cs" Inherits="Admin_frmAdminLogint" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
<td colspan="4" align="right" width="1000px" bgcolor="#99CCFF"><asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red" NavigateUrl="~/Default.aspx" >Back</asp:HyperLink></td>
</tr>
<tr>
<td colspan="4">&nbsp</td></tr>
        <tr >
            <td align="center" colspan="4" >
                 <asp:Label id="slksds" Text="Admin LogIn" runat="server" Font-Bold="True" 
                     Font-Size="X-Large" ForeColor="#0033CC"/></td>
        </tr>
     <tr >
         <td align="center" colspan="4">
             &nbsp;&nbsp;
         </td>
     </tr>
        <tr>
            <td class="text " style="width: 238px; text-align: right;">
                &nbsp;</td>
            <td align="left" class="text " style="width: 23px; text-align: right">
                UserName:</td>
            <td style="width: 160px; height: 28px; text-align: left;">
                <asp:TextBox ID="TxtUserName" runat="server" MaxLength="15" Width="130px"></asp:TextBox>
                </td>
            <td style="width: 107px; height: 28px; text-align: left;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUserName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text" style="width: 238px; text-align: right;">
                 &nbsp;</td>
            <td align="left" class="text" style="width: 23px; text-align: right">
                Password</td>
            <td style="width: 100px; height: 26px; font-weight: bold; font-size: 11px; font-family: Verdana; text-align: left;" align="left">
                <asp:TextBox ID="TxtPassWord" runat="server" TextMode="Password" MaxLength="6" Width="130px"></asp:TextBox></td>
            <td style="width: 107px; height: 26px; font-weight: bold; font-size: 11px; font-family: Verdana;" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassWord"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
     <tr>
         <td  colspan="4" align="center"  
             >
             &nbsp;&nbsp;
         </td>
     </tr>
        <tr>
            <td colspan="4" style="text-align: center ;">
                &nbsp;<asp:Button ID="BtnLogin" runat="server" cssclass="btnstyle" Text="Login" OnClick="BtnLogin_Click"/>&nbsp;
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" Text="Cancel" OnClick="BtnCancel_Click" CausesValidation="False" />&nbsp;
               </td>
        </tr>
     <tr>
         <td colspan="4" style="text-align: center">
             <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
                   Font-Names="Verdana"></asp:Label></td>
     </tr>
    </table>
</asp:Content>

