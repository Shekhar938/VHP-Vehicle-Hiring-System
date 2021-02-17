<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmBookingDisplay.aspx.cs" Inherits="CustomerSection_frmBookingDisplay" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" cellpadding ="0" cellspacing="0" style="width: 50%" align="center">
    <tr>
        <td align="center" colspan="2">
            &nbsp;&nbsp;
        </td>
    </tr>
<tr>
<td colspan="2" align="center" class="text1">
                Your Booking Details</td>
</tr>
<tr align ="center"   >
<td  align ="center" style="height: 357px"  >
    <asp:GridView ID="GridViewDisplay" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
   
   <Columns >
   <asp:TemplateField HeaderText ="CAR">
   <ItemTemplate >
   <asp:Image ID="ImgCar" ImageUrl ="../Image/test.gif"  runat ="server" Height="50" Width ="50" />
   </ItemTemplate>
   </asp:TemplateField>
   
   <asp:TemplateField HeaderText="Model" >
   <ItemTemplate >
   <asp:Label ID="LblModel" runat ="server" Text ='<%#Eval("VehicleId") %>'></asp:Label>
   </ItemTemplate>
   </asp:TemplateField>
   
   <asp:TemplateField HeaderText ="BookingDate">
   <ItemTemplate >
   <asp:Label ID="LblDate" runat ="server" Text ='<%#Eval("DateOfBooked") %>'></asp:Label>
   </ItemTemplate>
   </asp:TemplateField>
   
   <asp:TemplateField HeaderText ="Amount(Rs)">
   <ItemTemplate >
   <asp:Label ID="LblAmount" runat ="server" Text ='<%#Eval("BookingAmount") %>'></asp:Label>
   </ItemTemplate>
   </asp:TemplateField>
   
    
   <asp:TemplateField HeaderText ="UserId">
   <ItemTemplate >
    <asp:Label ID="LblUserId" runat="server" Text ='<%# DisplayUserId() %>' ></asp:Label>
    </ItemTemplate>
   </asp:TemplateField>
    
    
    <asp:TemplateField HeaderText ="UserName">
    <ItemTemplate >
    <asp:Label ID="LblUserName" runat="server" Text ='<%# DisplayUserName() %>' ></asp:Label>
 </ItemTemplate>
  </asp:TemplateField> 
    
    
    </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>  
</td>
</tr>
    <tr align="center">
        <td align="center">
            &nbsp;&nbsp;&nbsp;
        </td>
    </tr>
<tr>
<td align ="center" style="height: 24px" >
    <asp:Button ID="BtnAmountPay" runat="server" CssClass="btnstyle" Text="Amount" OnClick="BtnAmountPay_Click" />
    <asp:Button ID="BtnCancel" runat="server" CssClass="btnstyle" Text="Back" OnClick="BtnCancel_Click"  />
    <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
        Text="Label" Visible="False" Font-Names="Verdana"></asp:Label>
    </td>
</tr>
<tr>
<td align ="center" style="height: 19px" >
<asp:Label ID="LblPaid" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
        Text="Label" Visible="False" Font-Names="Verdana"></asp:Label>
</td >
</tr>

</table>



</asp:Content>

