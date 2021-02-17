<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAdminModifyEmp.aspx.cs" Inherits="Admin_frmAdminModifyEmp" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 310px">
    <tr>
        <td colspan="2" align="center" >
            &nbsp; &nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="center" ><asp:Label ID="amlxmla" runat="server" 
                    Text="Employee Updation" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" /></td>
        </tr>
    <tr>
        <td colspan="2" align="center">
            &nbsp; &nbsp;
        </td>
    </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:DetailsView ID="DetailsEmpView" runat="server" Height="50px" Width="125px" CellPadding="3" OnItemUpdating="DetailsEmpView_ItemUpdating" AutoGenerateEditButton="True"  DataKeyNames="EmpId" DefaultMode="Edit" OnItemCommand="DetailsEmpView_ItemCommand">
               <FooterStyle BackColor="White" ForeColor="#000066" />
                    <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <RowStyle ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    
                </asp:DetailsView>
                
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp; &nbsp;  </td>
        </tr>
    </table>

</asp:Content>

