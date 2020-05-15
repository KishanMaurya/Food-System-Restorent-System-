<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="Member_MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 1173px;
        }
        .style2
        {
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" 
                style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">
                MY ORDER -
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
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
            </td>
        </tr>
    </table>
</asp:Content>

