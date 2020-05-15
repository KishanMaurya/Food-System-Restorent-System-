<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.master" AutoEventWireup="true" CodeFile="UserAccount.aspx.cs" Inherits="ADMIN_UserAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 931px;
        }
        .style3
        {
            width: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                USER ACCOUNT -
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style2">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" GridLines="None" Width="921px" 
                                onselectedindexchanged="GridView2_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:BoundField DataField="fname" HeaderText="FirstName" />
                                    <asp:BoundField DataField="lname" HeaderText="LastName" />
                                    <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                                    <asp:BoundField DataField="email" HeaderText="Email" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" />
                                    <asp:BoundField DataField="city" HeaderText="City" />
                                    <asp:BoundField DataField="pincode" HeaderText="Pincode" />
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
            </td>
        </tr>
    </table>
</asp:Content>

