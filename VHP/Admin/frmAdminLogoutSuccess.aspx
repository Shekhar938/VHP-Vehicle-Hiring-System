<%@ Page Language="C#" MasterPageFile="~/vishnu.master" AutoEventWireup="true" CodeFile="frmAdminLogoutSuccess.aspx.cs" Inherits="Admin_frmAdminLogoutSuccess" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 47%">
    <tr>
        <td align="center">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td align="center">
        </td>
    </tr>
    <tr>
        <td align="center" >
            &nbsp;&nbsp;
        </td>
    </tr>
<tr><td class="text1" align="center">
     <asp:Label ID="as" Text="You are Sucessfully Logedout" runat="server" 
         Font-Bold="True" Font-Size="X-Large" ForeColor="#FF3300" /></td></tr>
    <tr>
        <td style="width: 315px; text-align: center">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 315px; text-align: center">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 315px; text-align: center">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 315px; text-align: center">
            &nbsp;
        </td>
    </tr>
<tr>
<td style="text-align: center" >
    <asp:LinkButton ID="LinSingIn" Text ="Click Here to Login" runat="server" CssClass="btnstyle" OnClick="LinSingIn_Click" ></asp:LinkButton>
    &nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True"
        Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></td>
</tr>
</table>

</asp:Content>

