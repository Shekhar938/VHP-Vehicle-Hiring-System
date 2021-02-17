<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmEmployeeUpdation.aspx.cs" Inherits="Admin_frmEmployeeUpdation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table align="center" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center"  colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="center" ><asp:Label ID="smlcsmc" runat="server" 
                    Text="Employee Informatin" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" />
               </td>
        </tr>
    <tr>
        <td align="center"  colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="5" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnPageIndexChanging="GridView1_PageIndexChanging" AllowSorting="True" OnRowUpdating="GridView1_RowUpdating" OnSorting="GridView1_Sorting" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <Columns >
                    <asp:TemplateField HeaderText ="EmpNo" SortExpression ="EmpId" >
                    <ItemTemplate >
                    <asp:Label ID="LblEmpNo" runat ="server"  Text ='<%#Eval("EmpId") %>' ></asp:Label>
                    </ItemTemplate> 
                    <EditItemTemplate >
                    <asp:TextBox ID="TxtEmpno" Text ='<%#Eval("EmpId") %>' ReadOnly ="true" runat ="server"  Columns ="4"></asp:TextBox>
                    </EditItemTemplate>
                   </asp:TemplateField>
                    <asp:TemplateField HeaderText ="EmpName" SortExpression ="EmpName">
                    <ItemTemplate >
                    <asp:Label ID="LblEmpName" runat ="server" Text ='<%#Eval("EmpName") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="SurName">
                    <ItemTemplate >
                    <asp:Label ID="LblSurname" runat ="server" Text ='<%#Eval("Surname") %>' ></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Address">
                    <ItemTemplate >
                    <asp:Label ID="LblAddress" runat ="server" Text ='<%#Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText ="City">
                    <ItemTemplate >
                    <asp:Label ID="LblCity" runat ="server" Text ='<%#Eval("City") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="State">
                    <ItemTemplate >
                    <asp:Label ID="LblState" runat ="server" Text ='<%#Eval("State") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="ZipCode">
                    <ItemTemplate >
                    <asp:Label ID="LblZipCode" runat ="server" Text ='<%#Eval("ZipCode") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="WorkOnVehicle">
                    <ItemTemplate >
                    <asp:Label ID="LblVehicle" runat ="server" Text ='<%#Eval("WorkOnVehicle") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Salary">
                    <ItemTemplate >
                    <asp:Label ID="LblSalary" runat ="server" Text ='<%#Eval("Salary") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="JobDesc">
                    <ItemTemplate >
                    <asp:Label ID="LblJobDesc" runat ="server" Text ='<%#Eval("JobDesc") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton ="True"  EditText ="Modify"  ShowDeleteButton ="True"  />
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
                <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" OnClick="BtnCancel_Click" Text="Cancel"/></td>
    </tr>
    </table>
</div> 
</asp:Content>

