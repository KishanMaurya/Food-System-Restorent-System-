<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Member_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 388px;
            height: 255px;
        }
        .style4
        {
            width: 304px;
        }
        .style6
        {
            width: 36px;
        }
        .style10
        {
            width: 70px;
        }
        .style14
        {
            width: 291px;
            height: 55px;
        }
        .style15
        {
            width: 75px;
        }
        .style16
        {
            width: 210px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                    RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table class="style2">
                            <tr>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style4">
                                    <asp:Image ID="Image1" runat="server" Height="231px" 
                                        ImageUrl='<%#Eval("Image") %>' Width="300px" />
                                </td>
                                <td class="style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="color: #FFFF66" class="style10">
                                    &nbsp;</td>
                                <td class="style4" style="color: #FFFF66">
                                    <table class="style14">
                                        <tr>
                                            <td class="style16">
                                                Name :
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                                            </td>
                                            <td rowspan="2" valign="middle">
                                                <table class="style15">
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" CssClass="btn" Height="30px" 
                                                                Text="VIEW" Width="70px" CommandArgument='<%#Eval("pid") %>' />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style16">
                                                Price&nbsp; :
                                                <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style6" style="color: #FFFF66">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

