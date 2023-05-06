<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="HotelSystem.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
      body{
        background-image:url("images/back.jpg");
        background-size:100% 100%;
        background-attachment:fixed;
        background-repeat:no-repeat;
        background-position:center;
         background-size: cover;
      }
         </style>
    <table>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
       <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="XX-Large" ForeColor="#0033CC" Text="Booking Details " Font-Bold="True"></asp:Label></td>

        </tr>
       <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
         <tr>
            <td>&nbsp;&nbsp;<asp:Label ID="lblfirstname" runat="server" Font-Size="Large" Text="Date :" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;
                 <asp:TextBox ID="txtcheckindate" runat="server"></asp:TextBox>
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/calender.jpg" ImageAlign="AbsBottom" OnClick="ImageButton1_Click" Width="30px" />
             </td>
        </tr>
       
    </table>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><i> </i>
    
    </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView2" position="center" runat="server" AutoGenerateColumns="False" ForeColor="#333333" HorizontalAlign="Center">
          
     
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          
     
     <Columns>
             
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" ItemStyle-Width="50px">
             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" VerticalAlign="Middle" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="middle_name" HeaderText="Middle Name" SortExpression="middle_name" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
          <asp:BoundField DataField="phone_no" HeaderText="Mobile Number" SortExpression="phone_no" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
          
         
          <asp:BoundField DataField="id_proof_no" HeaderText="Id Proof Number" SortExpression="id_proof_no" ItemStyle-Width="60px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="250px" />
            </asp:BoundField>
         <asp:BoundField DataField="room_no" HeaderText="Room Number" SortExpression="room_no" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
         <asp:BoundField DataField="category" HeaderText="category Name" SortExpression="category" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
         <asp:BoundField DataField="check_in_date" HeaderText="Check In Date" SortExpression="check_in_date" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
         <asp:BoundField DataField="check_out_date" HeaderText="Check Out Date" SortExpression="check_out_date" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
        
         <asp:BoundField DataField="no_of_day" HeaderText="No Of Days" SortExpression="no_of_day" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
         <asp:BoundField DataField="total_amount" HeaderText="Total Amount" SortExpression="total_amount" ItemStyle-Width="30px">
             <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Size="Large" Width="150px" />
            </asp:BoundField>
            
    </Columns>
            <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6"  ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
   
</asp:Content>
