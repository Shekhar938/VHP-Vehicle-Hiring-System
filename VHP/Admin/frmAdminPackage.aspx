<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAdminPackage.aspx.cs" Inherits="Admin_frmAdminPackage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0">
     <tr>
         <td align="center"colspan="2">
             &nbsp; &nbsp;
         </td>
     </tr>
        <tr>
            <td colspan="2" align="center" ><asp:Label ID="smlcsmc" runat="server" 
                    Text="Package Details" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0033CC" />
                </td> 
        </tr>
     <tr>
         <td align="center"  colspan="2">
             &nbsp; &nbsp;
         </td>
     </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridPackage" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="5" AutoGenerateColumns="False" OnPageIndexChanging="GridPackage_PageIndexChanging" AllowSorting="True" OnSorting="GridPackage_Sorting" ShowFooter="True" Width="531px">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <Columns >
                    <asp:BoundField DataField ="BookingId" HeaderText ="BookingId" SortExpression ="BookingId" />
                    <asp:BoundField DataField ="PackageId" HeaderText ="PackageId" SortExpression ="PackageId" />
                    <asp:BoundField DataField="VehicleId" HeaderText ="VehicleId" />
                    <asp:BoundField DataField ="BookingStatus" HeaderText ="BookingStatus" />
                    <asp:BoundField DataField ="UserId" HeaderText ="UserID" />
                     <asp:TemplateField HeaderText ="Date" >
                    <ItemTemplate >
                    <asp:Label ID="LblDate" runat ="server" Text ='<%#Eval("DateOfBook") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:Label ID="LblTMess" runat ="server" Text="Total:" ></asp:Label>
                    </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Price" >
                    <ItemTemplate >
                    <asp:Label ID="LblPrice" runat ="server" Text ='<%#Eval("PackagePrice") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:Label ID="LblTotal" runat ="server" Text ='<%# Sum() %>'></asp:Label>
                    </FooterTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
     <tr>
         <td align="center" colspan="2">
             &nbsp; &nbsp;
         </td>
     </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" Text="BacktoHome" OnClick="BtnHome_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

