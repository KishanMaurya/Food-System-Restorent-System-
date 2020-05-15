<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Member_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> <style type="text/css">
        .style3
        {
                                                                           }
        .style4
        {
     }
                                                                           .style5
                                                                           {
                                                                               width: 339px;
                                                                           }
                                                                           .style6
                                                                           {
                                                                               text-align: right;
                                                                               color: #fff;
                                                                               font-size: 20px;
                                                                               height: 35px;
                                                                               width: 175px;
                                                                           }
                                                                           .style7
                                                                           {
                                                                               width: 175px;
                                                                           }
                                                                           .style8
                                                                           {
                                                                               width: 348px;
                                                                           }
                                                                           .style9
                                                                           {
                                                                               width: 331px;
                                                                           }
                                                                           .style10
                                                                           {
                                                                               width: 221px;
                                                                           }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="3"  style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">
                            Payment Checkout</td>
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
                <table align="center" class="style5">
                    <tr>
                        <td class="style6">
                            Total Amount :
                        </td>
                        <td align="left">
                            <asp:Label ID="lblamt" runat="server" ForeColor="#FFFFCC"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Payment Type :
                        </td>
                        <td align="left">
                            <asp:RadioButton ID="rdoonine" runat="server" AutoPostBack="True" 
                                ForeColor="#FFFFCC" GroupName="a" oncheckedchanged="rdoonine_CheckedChanged" 
                                Text="Online" />
                            <asp:RadioButton ID="rdooffline" runat="server" AutoPostBack="True" 
                                ForeColor="#FFFFCC" GroupName="a" oncheckedchanged="rdooffline_CheckedChanged" 
                                Text="Offline" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4">
                            <table align="center" class="style8">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:MultiView ID="MultiView1" runat="server">
                                            <asp:View ID="View1" runat="server">
                                                <table class="style9">
                                                    <tr>
                                                        <td class="lbl">
                                                            Bank Name :
                                                        </td>
                                                        <td align="left">
                                                            <asp:DropDownList ID="drpbankname" runat="server" CssClass="txt">
                                                                <asp:ListItem>SELECT BANK</asp:ListItem>
                                                                <asp:ListItem>SBI Bank</asp:ListItem>
                                                                <asp:ListItem>ICICI Bank</asp:ListItem>
                                                                <asp:ListItem>BOB Bank</asp:ListItem>
                                                                <asp:ListItem>HDFC Bank</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbl">
                                                            Card No :
                                                        </td>
                                                        <td align="left">
                                                            <asp:TextBox ID="txtcard" runat="server" CssClass="txt" MaxLength="16"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbl">
                                                            CVV :
                                                        </td>
                                                        <td align="left">
                                                            <asp:TextBox ID="txtcvv" runat="server" CssClass="txt" MaxLength="3" 
                                                                Width="50px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td align="left">
                                                            <asp:Button ID="btnpayonline" runat="server" CssClass="btn" 
                                                                onclick="btnpayonline_Click" Text="Pay Now" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:View>
                                            <asp:View ID="View2" runat="server">
                                                <table class="style10">
                                                    <tr>
                                                        <td style="color: #FFFFCC; font-weight: 700;">
                                                            CASH ON DELIVERY</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="color: #FFFFCC">
                                                            Total Amount :
                                                            <asp:Label ID="lblamtt" runat="server"></asp:Label>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="btnpayoffline" runat="server" CssClass="btn" 
                                                                onclick="btnpayoffline_Click" Text="PayNow" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:View>
                                        </asp:MultiView>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
            </td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4">
&nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

