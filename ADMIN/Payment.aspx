<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="ADMIN_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                PAYMENT REPORT </td>
        </tr>
        <tr>
            <td class="tblhead">
                Select User :
                <asp:DropDownList ID="drpemail" runat="server" CssClass="txt">
                </asp:DropDownList>
                <asp:Button ID="btnselect" runat="server" CssClass="btn" 
                    onclick="btnselect_Click" Text="Select" />
            </td>
        </tr>
        <tr>
            <td class="tblhead">
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvgrid" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames="pid" 
                                 Width="938px" onselectedindexchanged="gvgrid_SelectedIndexChanged"                         
                                 >
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" 
                                        SortExpression="email" >
                        <ItemStyle Width="250px" />
                        </asp:BoundField>
                        
                       
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="type" />
                         <asp:BoundField DataField="bankname" HeaderText="Bank Name" SortExpression="bank" />
                          <asp:BoundField DataField="cardno" HeaderText="Card No" SortExpression="card" />
                           <asp:BoundField DataField="ccv" HeaderText="CCV" SortExpression="ccv" />
                        <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

