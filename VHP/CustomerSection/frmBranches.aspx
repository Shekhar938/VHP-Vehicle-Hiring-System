<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmBranches.aspx.cs" Inherits="CustomerSection_frmBranches" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="1" align="center" >
    <tr>
        <th colspan="4" class="text1">
            Our Branch Details</th>
    </tr>
    <tr>
    
<th class="htext">Branch Name </th><th class="htext">Location</th><th class="htext">Email Id</th><th class="htext">ContactNo</th>
    </tr>
<tr>
<td class="text">
Hyderabad
</td>
<td class="text">SR Nagar</td>
<td class="text">Vehicle@hyd.yahoo.com</td>
<td class="text">9878569256</td>

</tr>

<tr>
<td class="text">New Delhi</td>
<td class="text">Kannat Place</td>
<td class="text">Vehicle@NewDelhi.yahoo.com</td>
<td class="text">9689575842</td>
</tr>


<tr>
<td class="text">Mumbai</td>
<td class="text">Andheri</td>
<td class="text">Vehicle@Mumbai.yahoo.com</td>
<td class="text">9689245842</td>
</tr>

<tr>
<td class="text">Chennai</td>
<td class="text">T.Nagar</td>
<td class="text">Vehicle@Chennai.yahoo.com</td>
<td class="text">97895623122</td>
</tr>


<tr>
<td class="text">Kolkata</td>
<td class="text">Park Street</td>
<td class="text">Vehicle@Kolkota.yahoo.com</td>
<td class="text">936589756</td>
</tr>

<tr>
<td class="text">Vishakaptname</td>
<td class="text">Dwarka Nagar</td>
<td class="text">Vehicle@Vsp.yahoo.com</td>
<td class="text">9856752365</td>
</tr>
    <tr>
        <td class="text" colspan="4" style="text-align: center">
            &nbsp;&nbsp;
        </td>
    </tr>

<tr>
<td align="center" >
    <asp:Button ID="BtnHome" runat="server" CssClass="btnstyle" Text="Home" OnClick="BtnHome_Click" />
    
    
</td>
<td colspan="3" class="text">For More Details Contact Us Immediately..!</td>
</tr>


</table>
</asp:Content>

