<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmEmployeeInfo.aspx.cs" Inherits="Admin_frmDriverInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table align="center" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center" colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <<td colspan="2" align="center" ><asp:Label ID="smlcsmc" runat="server" 
                    Text="Employee Information" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" />
               </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridEmployee" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="5" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" AllowSorting="True" OnSorting="GridView1_Sorting" Width="761px">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <Columns >
                    <asp:TemplateField HeaderText ="EmpNo" SortExpression ="EmpId" >
                    <ItemTemplate >
                    <asp:Label ID="LblEmpNo" runat ="server" Text ='<%#Eval("EmpId") %>'></asp:Label>
                    </ItemTemplate>                    
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
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    <tr>
        <td colspan="2" align="center">
            &nbsp;&nbsp;&nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button2" runat="server" CssClass="btnstyle" Text="Update" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</div> 

</asp:Content>

