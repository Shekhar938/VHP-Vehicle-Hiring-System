<%@ Page Language="C#" MasterPageFile="~/vishnu.master" AutoEventWireup="true"   CodeFile="frmLogin.aspx.cs" Inherits="CustomerSection_frmLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" border ="0" cellpadding="0" cellspacing="0" 
        style="width: 297px; height: 127px;">
       
        <tr>
            <td colspan="4" class="text1" align="center">
              <asp:Label ID="anma" Text="Users Login" runat="server" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#0066FF" /></td>
        </tr>
        <tr>
            <td align="center" class="text1" colspan="4">
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                User Name:</td>
            <td style="width: 9px" >
               
            </td>
            <td align="left">
                <asp:TextBox ID="TxtUserName" runat="server" MaxLength="25" Width="130px"></asp:TextBox>
            </td>
            <td align="left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUserName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text" align="right">
                Password:</td>
            <td style="width: 9px" >
            </td>
            <td align="left">
                <asp:TextBox ID="TxtPassWord" runat="server"  TextMode="Password" MaxLength="6" Width="130px"></asp:TextBox>
                </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassWord"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" class="text" colspan="4" style="text-align: center">
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: right" >
                
                <asp:Button ID="BtnLogin" runat="server" CssClass="btnstyle" Text="Login" OnClick="BtnLogin_Click" />&nbsp;
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" Text="Cancel" OnClick="BtnCancel_Click" CausesValidation="False" />&nbsp;
                <asp:LinkButton ID="LnkNewUser" runat="server" CssClass="btnstyle" OnClick="LnkNewUser_Click" CausesValidation="False">NewUser?</asp:LinkButton></td>
            <td colspan="1">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center; height: 22px;">
                <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
                    Text="Label" Visible="False" Font-Names="Verdana"></asp:Label></td>
            <td colspan="1" style="height: 22px; text-align: center">
            </td>
        </tr>
    </table>
    
</asp:Content>

