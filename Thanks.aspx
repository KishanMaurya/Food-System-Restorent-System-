<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="Member_Thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 154px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="color: #FFFFCC; font-weight: bold; font-size: xx-large">
                <br />
                Thank you for Shopping...</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn" 
                    PostBackUrl="~/Home.aspx" Text="Continew Shopping" />
            </td>
        </tr>
    </table>
</asp:Content>

