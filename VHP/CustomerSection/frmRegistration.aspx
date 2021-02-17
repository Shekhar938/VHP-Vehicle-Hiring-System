<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmRegistration.aspx.cs" Inherits="CustomerSection_frmRegistration" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language ="javascript" type="text/javascript" >
        function onlyNumbers(evt)
{
    var e = event || evt;
    var charCode = e.which || e.keyCode;
	if ((charCode > 47 && charCode < 58))
    return true;		             
    else
    return false ;		                            
}
    </script>
    <table align="center" border ="0">
        <tr>
            <td align="center"  colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center" class="text1">
                User Registration</td>
        </tr>
        <tr>
            <td align="center"  colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="text">
                Name:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td>
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox></td>
            <td >
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TxtName"></asp:RequiredFieldValidator></td>
             </tr>
        <tr>
            <td  align="right" class="text">
                Sur name:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:TextBox ID="TxtSurName" runat="server"></asp:TextBox></td>
            <td >
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TxtSurName"></asp:RequiredFieldValidator>
            
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Password:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:TextBox ID="TxtPassWord" runat="server" TextMode="Password"></asp:TextBox></td>
            <td >
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TxtPassWord"></asp:RequiredFieldValidator>
            
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Email Id:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:TextBox ID="TxtEmaiId" runat="server"></asp:TextBox></td>
            <td >
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage ="*" ControlToValidate="TxtEmaiId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Mobile No.:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:TextBox ID="TxtMobileNo" OnKeypress="onlyNumbers(event)" runat="server" MaxLength="10"></asp:TextBox></td>
            <td >
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ControlToValidate="TxtMobileNo" ErrorMessage="*" ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td class="text" align="right">
                Address:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtAddress"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text" align="right">
                City:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:DropDownList ID="DdlCity" runat="server">
                <asp:ListItem Text ="Select"></asp:ListItem>
                <asp:ListItem Text ="Hyderabad"/>
                <asp:ListItem Text ="Secunderabad"></asp:ListItem>
                <asp:ListItem Text ="NewDelhi"></asp:ListItem>
                <asp:ListItem Text ="Mumbai"></asp:ListItem>
                <asp:ListItem Text ="Chennai"></asp:ListItem>
                <asp:ListItem Text ="Kolkatta"></asp:ListItem>
                <asp:ListItem Text ="Pune"></asp:ListItem>
                </asp:DropDownList></td>
            <td >
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                State:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:DropDownList ID="DdlState" runat="server">
                <asp:ListItem >Select</asp:ListItem>
                    <asp:ListItem>AndhraPradesh</asp:ListItem>
                    <asp:ListItem>MadyaPradesh</asp:ListItem>
                    <asp:ListItem>TamilNadu</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Maharastra</asp:ListItem>
                    <asp:ListItem>WestBengal</asp:ListItem>
                </asp:DropDownList></td>
            <td >
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Hint Question:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:DropDownList ID="DdlHintQuestion" runat="server">
                    <asp:ListItem Value="--Select--">Select</asp:ListItem>
                    <asp:ListItem>What Is Your Favourate Food?</asp:ListItem>
                    <asp:ListItem>Your Petname Plz?</asp:ListItem>
                    <asp:ListItem>What Is Your MotherName?</asp:ListItem>
                    <asp:ListItem>Tell Me Your Favourate Cricketer</asp:ListItem>
                </asp:DropDownList></td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="text" align="right">
                Answer</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:TextBox ID="TxtAnswer" runat="server"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtAnswer"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="text" align="right">
                Zip Code:</td>
            <td align="right" class="text" style="width: 7px">
            </td>
            <td >
                <asp:TextBox ID="TxtZipCode"  OnKeypress="onlyNumbers(event)" runat="server" MaxLength="6"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtZipCode"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" class="text" colspan="4" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:center;">
                <asp:Button ID="BtnRegister" runat="server" CssClass="btnstyle" Text="Register" OnClick="BtnRegister_Click"  />
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" Text="Cancel" OnClick="BtnCancel_Click" CausesValidation="False" />
                <br />
                <span>or</span>
                <br />
                <asp:LinkButton ID="LnkLogin" runat="server" CssClass="btnstyle " OnClick="LnkLogin_Click" CausesValidation="False">Goto Login</asp:LinkButton></td>
            <td colspan="1" style="text-align: center; height: 26px;">
            </td>
        </tr>
    </table>
</asp:Content>

