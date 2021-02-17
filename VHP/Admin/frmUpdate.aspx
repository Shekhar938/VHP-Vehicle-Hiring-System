<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmUpdate.aspx.cs" Inherits="Admin_frmUpdate" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center"colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="text1">
               <asp:Label ID="smlcsmc" runat="server" 
                    Text="Vechicle List" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 113px; text-align: left; height: 23px;"> 
            
                <asp:DropDownList ID="DdlVehicleId" runat="server" DataTextField="VehicleId" DataValueField="VehicleId" OnSelectedIndexChanged="DdlVehicleId_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <Columns >
                    
                    
                    <asp:TemplateField HeaderText ="VehicleIdNo" >
                    <ItemTemplate>
                    <asp:Label ID="LblVehicleId" runat= "server" Text ='<%#Eval("VehicleId") %>' ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate >
                    <asp:TextBox ID="TxtVehicleId" runat="server" Columns ="5" Text ='<%#Eval("VehicleId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText ="Description" >
                    <ItemTemplate>
                    <asp:Label ID="LblDescription" runat= "server" Text ='<%#Eval("Description") %>' ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate >
                    <asp:TextBox ID="TxtDescription" runat="server"  Columns ="7" Text ='<%#Eval("Description") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText ="Model" >
                    <ItemTemplate>
                    <asp:Label ID="LblModel" runat= "server" Text ='<%#Eval("Model") %>' ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate >
                    <asp:TextBox ID="TxtModel" runat="server"  Columns ="5" Text ='<%#Eval("Model") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText ="MakingCompany" >
                    <ItemTemplate>
                    <asp:Label ID="LblMake" runat= "server" Text ='<%#Eval("Make") %>' ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate >
                    <asp:TextBox ID="TxtMake" runat="server" Columns ="8" Text ='<%#Eval("Make") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    
                    
                    
                    <asp:TemplateField HeaderText ="TypeId" >
                    <ItemTemplate>
                    <asp:Label ID="LblVehicleType" runat= "server" Text ='<%#Eval("VehicleType") %>' ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate >
                    <asp:TextBox ID="TxtVehicleType" runat="server" Columns ="5" Text ='<%#Eval("VehicleType") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText ="PerDayRent" >
                    <ItemTemplate>
                    <asp:Label ID="LblRate" runat= "server" Text ='<%#Eval("RatePerDay") %>' ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate >
                    <asp:TextBox ID="TxtRate" runat="server" Columns ="5" Text ='<%#Eval("RatePerDay") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText ="Modifications" ShowEditButton ="True" EditText ="Modify" ShowDeleteButton ="True" />
                    
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 19px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
        <td style="width:100%; text-align: center;">
            <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" Text="Back" CausesValidation="False" OnClick="BtnHome_Click"  />
        </td>
        </tr>
    </table>
    </div> 
</asp:Content>

