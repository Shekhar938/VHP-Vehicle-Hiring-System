<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmEmployeeRegistration.aspx.cs" Inherits="Admin_frmEmployeeRegistration" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table align="center" border ="0">
    <tr>
        <td align="center"  colspan="3">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="3" align="center" ><asp:Label ID="smlcsmc" runat="server" 
                    Text="Employee Registration" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" />
                </td>
        </tr>
        <tr>
            <td align="left" class="text">
                Name:</td>
            <td >
                <asp:TextBox ID="TxtName" runat="server" MaxLength="25"></asp:TextBox></td>
            <td >
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
             </td>
             </tr>
        <tr>
            <td align="left" class="text">
                Surname:</td>
            <td>
                <asp:TextBox ID="TxtSurName" runat="server" MaxLength="15"></asp:TextBox></td>
            <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtSurName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
     <tr>
         <td align="left" class="text">
             PassWord:</td>
         <td>
             <asp:TextBox ID="TxtPassWord" runat="server" TextMode="Password" MaxLength="6"></asp:TextBox></td>
         <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TxtPassWord"></asp:RequiredFieldValidator>
         </td>
     </tr>
        <tr>
            <td align="left" class="text">
                Address:</td>
            <td >
                <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td >
            </td>
        </tr>
        <tr>
            <td align="left" class="text">
                City:</td>
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
            <td>
            </td>
        </tr>
        <tr>
            <td align="left" class="text">
                State:</td>
            <td>
                <asp:DropDownList ID="DdlState" runat="server">
                <asp:ListItem >Select</asp:ListItem>
                    <asp:ListItem>AndhraPradesh</asp:ListItem>
                    <asp:ListItem>MadyaPradesh</asp:ListItem>
                    <asp:ListItem>TamilNadu</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Maharastra</asp:ListItem>
                    <asp:ListItem>WestBengal</asp:ListItem>
                </asp:DropDownList></td>
            <td>
            </td>
        </tr>
        <tr>
            <td align="left" class="text">
                Zip Code:</td>
            <td >
                <asp:TextBox ID="TxtZipCode" OnKeypress="onlyNumbers(event)" runat="server" MaxLength="6"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtZipCode"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
     <tr>
         <td align="left" class="text">
             WorkOnVehicle:</td>
         <td >
             <asp:TextBox ID="TxtWorkOnVehicle" OnKeypress="onlyNumbers(event)" runat="server"></asp:TextBox></td>
         <td >
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="TxtWorkOnVehicle" ValidationExpression="\d{1}"></asp:RegularExpressionValidator>
         </td>
     </tr>
     <tr>
         <td align="left" class="text">
             Salary:</td>
         <td>
             <asp:TextBox ID="TxtSalary" runat="server" MaxLength="5"></asp:TextBox></td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtSalary"
                 ErrorMessage="*"></asp:RequiredFieldValidator></td>
     </tr>
     <tr>
         <td align="left" class="text">
             JobDesc:</td>
         <td>
             <asp:TextBox ID="TxtJobDesc" OnKeypress="OnlyChars(event)" runat="server" MaxLength="15"></asp:TextBox></td>
         <td style="width: 100px">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TxtJobDesc"></asp:RequiredFieldValidator>
         </td>
     </tr>
    <tr>
        <td align="left" class="text" colspan="3" style="text-align: center">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="right">
                <asp:Button ID="BtnRegister" runat="server" CssClass="btnstyle" Text="Register" OnClick="BtnRegister_Click" />
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" Text="Cancel" OnClick="BtnCancel_Click" CausesValidation="False" />
                <asp:LinkButton ID="LinkLogin" runat="server" CssClass="btnstyle" CausesValidation="False" OnClick="LinkLogin_Click">GoToLogin</asp:LinkButton></td>
            <td colspan="1" style="text-align: center">
            </td>
        </tr>
     <tr>
         <td colspan="3" align="center">
             <asp:Label ID="LblMessage" runat="server" BackColor="Transparent" Font-Size="Smaller" ForeColor="Red"
                 Text="Label" Visible="False" Width="28px" Font-Bold="True" Font-Names="Verdana"></asp:Label></td>
     </tr>
     <tr>
         <td colspan="3" style="font-weight: bold; font-size: 11pt; font-family: Verdana; text-align: center;" align="left">
             &nbsp;&nbsp;
         </td>
     </tr>
    </table>
</div> 
</asp:Content>

