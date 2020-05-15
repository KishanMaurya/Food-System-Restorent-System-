<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="ADMIN_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            VIEW REPORT</td>
    </tr>
    <tr>
        <td class="tblhead">
            Select User :
            <asp:DropDownList ID="drpemail" runat="server" CssClass="txt">
            </asp:DropDownList>
            <asp:Button ID="btnselect" runat="server" CssClass="btn" 
                onclick="btnselect_Click" Text="Select" />
&nbsp;</td>
    </tr>
    <tr>
        <td class="tblhead">
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames="oid" 
                                 Width="938px" >
                              
                                
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" 
                                        SortExpression="email" >
                    <ItemStyle Width="250px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="imgg" runat="server" ImageUrl='<%#Eval("Image") %>' Height="40px" Width="40px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="pname" HeaderText="ProductName" 
                                        SortExpression="pname" >
                    <ItemStyle Width="180px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="Qnt" HeaderText="Qnt" 
                                        SortExpression="cname" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="totalprice" 
                                        SortExpression="cname" />
                    <%--<asp:TemplateField HeaderText="Dispatch">
                        <ItemTemplate>
                            <asp:LinkButton Text="Dispatch" runat="server" ID="lnkclear" CommandArgument='<%#Eval("oid") %>' ForeColor="Blue"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
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

