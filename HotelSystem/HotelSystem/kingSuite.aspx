<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kingSuite.aspx.cs" Inherits="HotelSystem.kingSuite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView8" position="center" runat="server" AutoGenerateColumns="False" ForeColor="#333333" HorizontalAlign="Center" OnRowCommand="GridView8_RowCommand" >
          
     
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          
     
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
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</asp:Content>
