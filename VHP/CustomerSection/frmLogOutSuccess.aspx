<%@ Page Language="C#" MasterPageFile="~/vishnu.master" AutoEventWireup="true" CodeFile="frmLogOutSuccess.aspx.cs" Inherits="CustomerSection_frmLogOutSuccess" Title="Untitled Page" %>
<%--<%@ Page Language="C#" MasterPageFile="~/vishnu.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
    <tr>
        <td align="center">
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td align="center" >
            &nbsp;&nbsp;
        </td>
    </tr>
<tr><td  align="center"><asp:Label ID="dds" runat="server" 
        Text="You are Successfully Logged Out" Font-Bold="True" Font-Size="XX-Large" 
        ForeColor="#FF3300" /> 

</td></tr>
    <tr>
        <td align="center" >
            &nbsp;&nbsp;
        </td>
    </tr>
<tr>
<td align="center" >
    <asp:LinkButton ID="LinSingIn" Text ="" runat="server" CssClass="btnstyle" OnClick="LinSingIn_Click">ClickHereToLoginIn</asp:LinkButton>
    &nbsp; &nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True"
        Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></td>
</tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</asp:Content>

