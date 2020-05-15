<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="Member_MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style3
        {
         width: 151px;
     }
        .style4
        {
     }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="3"  style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">
                            MY CART -
                            <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4">
                            &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="902px" 
                                DataKeyNames="oid" onrowdeleting="GridView1_RowDeleting" 
                                onrowupdating="GridView1_RowUpdating">
                                <AlternatingRowStyle BackColor="White" />
                            <Columns>
                            <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                            <asp:Image runat="server" ID="imff" ImageUrl='<%#Eval("image") %>' Height="50px" Width="45px" />
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="ProductName" DataField="pname" />
                            <asp:BoundField HeaderText="Price" DataField="price" />
                            <asp:TemplateField HeaderText="Qnt">
                            <ItemTemplate>
                            <asp:TextBox runat="server" ID="txtq" Text='<%#Eval("qnt") %>' Height="20px" Width="40px"></asp:TextBox>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="TotalPrice" DataField="totalprice" />
                            <asp:TemplateField HeaderText="Update">
                            <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Update" ID="lnkupd" CommandName="update" ForeColor="Blue" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>

                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Remove">
                            <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Remove" ID="lnkrem" CommandName="Delete" ForeColor="Red" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>

                            </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4">
                            &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4">
                            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" 
                                Text="Continew Shopping" onclick="Button1_Click" />
&nbsp;<asp:Button ID="btnchckout" runat="server" Text="CheckOut" onclick="btnchckout_Click" />
            </td>
            <td>
                            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

