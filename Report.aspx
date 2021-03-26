<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Report.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <asp:Label ID="lblfn" runat="server" Text="Search Customer First Name"></asp:Label>
                    <asp:TextBox ID="txtfn" runat="server"></asp:TextBox>
                     <asp:Label ID="lblln" runat="server" Text="Last Name"></asp:Label>
                    <asp:TextBox ID="txtln" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1" />
            <br />
            <br />
                     <asp:GridView ID="grdReport" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="CustomerFirstName" HeaderText="First Name" SortExpression="CustomerFirstName"  />
                             <asp:BoundField DataField="CustomerLastName" HeaderText="Last Name" SortExpression="CustomerLastName" />
                             <asp:BoundField DataField="AuctionPickUp" HeaderText="Pack Date" SortExpression="AuctionPickUp" />
                             <asp:BoundField DataField="MoveDate" HeaderText="Move Time" SortExpression="MoveDate" />
                             <asp:BoundField DataField="CAddress" HeaderText="Street Address Moving from" SortExpression="CAddress" />
                             <asp:BoundField DataField="CustomerCity" HeaderText="City Moving from" SortExpression="CustomerCity" />
                             <asp:BoundField DataField="CustomerState" HeaderText="State Moving from" SortExpression="CustomerState" />
                             <asp:BoundField DataField="CustomerZip" HeaderText="Zip Code Moving From" SortExpression="CustomerZip" />
                             <asp:BoundField DataField="ToStreet" HeaderText="Street Address Moving to" SortExpression="ToStreet" />
                             <asp:BoundField DataField="ToCity" HeaderText="City Moving to" SortExpression="ToCity" />
                             <asp:BoundField DataField="ToState" HeaderText="State Moving to" SortExpression="ToState" />
                             <asp:BoundField DataField="ToZipcode" HeaderText="Zip Code Moving to" SortExpression="ToZipcode" />
                             <asp:BoundField DataField="CustomerPhone" HeaderText="Cell Phone Number" SortExpression="CustomerPhone" />
                             <asp:BoundField DataField="CustomerEmail" HeaderText="Email Address" SortExpression="CustomerEmail" />
                             <asp:BoundField DataField="AddServices" HeaderText="Add on Service" SortExpression="AddServices" />
                             <asp:BoundField DataField="FinalCost" HeaderText="Final Cost of Move($)" SortExpression="FinalCost" />
                             <asp:BoundField DataField="Experience" HeaderText="Positive/Negative Experience" SortExpression="Experience" />
                             <asp:BoundField DataField="Review" HeaderText="Review Received from" SortExpression="Review" />
                             <asp:BoundField DataField="NoteContents" HeaderText="Notes" SortExpression="NoteContents" />
                             <asp:BoundField DataField="EmployeeHandler" HeaderText="Employee who is working with" SortExpression="EmployeeHandler" />
                         </Columns>
                         <EditRowStyle BackColor="#7C6F57" />
                         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#E3EAEB" />
                         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F8FAFA" />
                         <SortedAscendingHeaderStyle BackColor="#246B61" />
                         <SortedDescendingCellStyle BackColor="#D4DFE1" />
                         <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>     
        </div>
        </br>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CustomerFirstName" HeaderText="First Name" SortExpression="CustomerFirstName" />
                    <asp:BoundField DataField="CustomerLastName" HeaderText="Last Name" SortExpression="CustomerLastName" />
                    <asp:BoundField DataField="AuctionPickUp" HeaderText="Pack Date" SortExpression="AuctionPickUp" />
                    <asp:BoundField DataField="MoveDate" HeaderText="Move Date" SortExpression="MoveDate" />
                    <asp:BoundField DataField="CAddress" HeaderText="Street Address Moving from" SortExpression="CAddress" />
                    <asp:BoundField DataField="CustomerCity" HeaderText="City Moving from" SortExpression="CustomerCity" />
                    <asp:BoundField DataField="CustomerState" HeaderText="State Moving from" SortExpression="CustomerState" />
                    <asp:BoundField DataField="CustomerZip" HeaderText="Zip Code Moving From" SortExpression="CustomerZip" />
                    <asp:BoundField DataField="ToStreet" HeaderText="Street Address Moving to" SortExpression="ToStreet" />
                    <asp:BoundField DataField="ToCity" HeaderText="City Moving to" SortExpression="ToCity" />
                    <asp:BoundField DataField="ToState" HeaderText="State Moving to" SortExpression="ToState" />
                    <asp:BoundField DataField="ToZipcode" HeaderText="Zip Code Moving to" SortExpression="ToZipcode" />
                    <asp:BoundField DataField="CustomerPhone" HeaderText="Cell Phone Number" SortExpression="CustomerPhone" />
                    <asp:BoundField DataField="CustomerEmail" HeaderText="Email Address" SortExpression="CustomerEmail" />
                    <asp:BoundField DataField="AddServices" HeaderText="Add on Service" SortExpression="AddServices" />
                    <asp:BoundField DataField="FinalCost" HeaderText="Final Cost of Move($)" SortExpression="FinalCost" />
                    <asp:BoundField DataField="Experience" HeaderText="Positive/Negative Experience" SortExpression="Experience" />
                    <asp:BoundField DataField="Review" HeaderText="Review Received from" SortExpression="Review" />
                    <asp:BoundField DataField="NoteContents" HeaderText="Notes" SortExpression="NoteContents" />
                    <asp:BoundField DataField="EmployeeHandler" HeaderText="Employee who is working with" SortExpression="EmployeeHandler" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab3ConnectionString2 %>" SelectCommand="
SELECT c.CustomerFirstName, c.CustomerLastName, a.AuctionPickUp, m.MoveDate, c.CAddress,c.CustomerCity, c.CustomerState,c.CustomerZip,m.ToStreet,m.ToCity,m.ToState,m.ToZipcode,c.CustomerPhone, c.CustomerEmail, s.AddServices, m.FinalCost, t.Experience, t.Review, t.NoteContents, c.EmployeeHandler
FROM ((((Customer c
INNER JOIN Auction a ON c.CustomerID = a.CustomerID)
INNER JOIN Moving m ON c.CustomerID = m.CustomerID)
INNER JOIN ServiceTicket s ON c.CustomerID = s.CustomerID)
INNER JOIN TicketHistory t ON s.ServiceTicketID=t.ServiceTicketID) ;"></asp:SqlDataSource>
            </div>
    </form>
</body>
</html>
