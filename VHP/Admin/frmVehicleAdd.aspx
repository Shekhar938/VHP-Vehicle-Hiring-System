<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmVehicleAdd.aspx.cs" Inherits="Admin_frmVehicleAdd" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center"  colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" ><asp:Label ID="smlcsmc" runat="server" 
                    Text="Vechicle List" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" />
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" ShowFooter="True">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <Columns>
                    <asp:TemplateField HeaderText ="Vehicle Name" >
                    <ItemTemplate >
                    <asp:Label ID="LblVehicleId" runat ="server" Text ='<%#Eval("VehicleId") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:TextBox ID="TxtVehicleNO" Columns ="5" runat ="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate ="TxtVehicleNO" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                       
                    </FooterTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText ="Description" >
                    <ItemTemplate >
                    <asp:Label ID="LblDecription" runat ="server" Text ='<%#Eval("Description") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:TextBox ID="TxtDescription" Columns ="7" runat ="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate ="TxtDescription" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText ="Model" >
                    <ItemTemplate >
                    <asp:Label ID="LblModel" runat ="server" Text ='<%#Eval("Model") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:TextBox ID="TxtModel" Columns ="5" runat ="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate ="TxtModel" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText ="Making Company" >
                    <ItemTemplate >
                    <asp:Label ID="LblMake" runat ="server" Text ='<%#Eval("Make") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:TextBox ID="TxtMake" Columns ="8" runat ="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate ="TxtMake" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </FooterTemplate>                    
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText ="Type Id" >
                    <ItemTemplate >
                    <asp:Label ID="LblVehicleType" runat ="server" Text ='<%#Eval("VehicleType") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:TextBox ID="TxtVehicleType" Columns ="5" runat ="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate ="TxtVehicleType" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText ="PerDay Rent" >
                    <ItemTemplate >
                    <asp:Label ID="LblRate" runat ="server" Text ='<%#Eval("RatePerDay") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:TextBox ID="TxtRate" Columns ="5" runat ="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate ="TxtRate" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    
                    </FooterTemplate>
                    </asp:TemplateField>                   
                                      
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="BtnAdd" runat="server" CssClass="btnstyle" Text="AddNew" OnClick="Button1_Click" />
                <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" Text="Back" CausesValidation="False"  OnClick="BtnHome_Click1" /></td>
        </tr>
    </table>
</asp:Content>

