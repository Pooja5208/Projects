<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeluxeKing.aspx.cs" Inherits="HotelSystem.DeluxeKing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView3" position="center" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" OnRowCommand="GridView3_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" >
          
     
        <AlternatingRowStyle BackColor="#DCDCDC" />
          
     
     <Columns>
             <asp:ImageField DataImageUrlField="image" HeaderText="Image" ItemStyle-Width="50px">
                <ControlStyle Height="150px" Width="250px" />
                 <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" Width="150px" />
            </asp:ImageField>
            <asp:BoundField DataField="room_no" HeaderText="Room No" SortExpression="room_no" ItemStyle-Width="90px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Large" VerticalAlign="Middle" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" ItemStyle-Width="50px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Large" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="floor_no" HeaderText="Floor No" SortExpression="floor_no" ItemStyle-Width="50px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Large" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="price_per_day" HeaderText="Price Per Day" SortExpression="price_per_day" ItemStyle-Width="50px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Large" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" ItemStyle-Width="50px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Large" Width="150px" />
            </asp:BoundField>
           
             <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="BOOK" ShowHeader="True" Text="BOOK" ItemStyle-Width="50px">
             <ControlStyle BorderStyle="Double" Height="50px" Width="100px" />
             <HeaderStyle HorizontalAlign="Center" />
             <ItemStyle BorderStyle="Double" Font-Bold="True" HorizontalAlign="Center" Width="150px" />
             </asp:ButtonField>
           
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</asp:Content>
