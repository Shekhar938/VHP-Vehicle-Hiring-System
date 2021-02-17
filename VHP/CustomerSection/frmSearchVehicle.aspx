<%@ Page Language="C#" MasterPageFile="~/CustomerSection/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchVehicle.aspx.cs" Inherits="CustomerSection_frmSearchVehicle" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
        <strong><asp:Label ID="nakan" runat="server" Text="VEHICLE INFORMATION" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" />
    <br />
        </strong>
    <br />
        <table>
            <tr>
                <td style="width: 233px; text-align: left">
                    <table>
                        <tr>
                            <td>
                                <asp:DataList ID="DataListVechile" runat="server" BackColor="White" BorderColor="#CC9966"
                                    BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" OnItemCommand="DataListVechile_ItemCommand">
                                    <HeaderTemplate>
                                       VEHICLE ID</HeaderTemplate>
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td align="left">
                                                    <asp:LinkButton ID="link1" runat="server" Text='<%#Eval("VehicleId") %>' CommandArgument='<%#Eval("VehicleId") %>' ></asp:LinkButton></td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <ItemStyle BackColor="White" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:DataList></td>
                        </tr>
                    </table>
                </td>
                <td style="width: 419px">
                <table><tr><td style="width: 3px"><asp:DetailsView ID="DVVehicle" AutoGenerateRows="False"  runat="Server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                <Fields>
                <asp:BoundField HeaderText="VehicleId" DataField="VehicleId"/> 
                <asp:BoundField HeaderText="Description" DataField="Description"/>
                <asp:BoundField HeaderText="Model" DataField="Model"/>
                <asp:BoundField HeaderText="Company" DataField="Make"/>
                <asp:BoundField HeaderText="PerDay Rent" DataField="RateperDay"/>
                </Fields> 
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                </asp:DetailsView> </td></tr></table>
                </td>
            </tr>
        </table><table><tr><td><asp:Label ID="lblMsg" runat="server"></asp:Label></td></tr></table> 
    </center>
</asp:Content>

