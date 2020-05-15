﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="food">
        <table width="100%">
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="150px" 
                        ImageUrl="~/foodimg/images.jpg" Width="470px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="150px" 
                        ImageUrl="~/foodimg/maxresdefault.jpg" Width="470px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="150px" 
                        ImageUrl="~/foodimg/images.jpg" Width="470px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" Height="150px" 
                        ImageUrl="~/foodimg/maxresdefault.jpg" Width="470px" />
                </td>
            </tr>
            
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>

   <div id="regi">
       <table class="tbl">
           <tr>
               <td bgcolor="#FFFFCC" class="tblhead">
                   MEMBER LOGIN FORM</td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   <table align="center" class="style1">
                       <tr>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                               UserName :&nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtusername" runat="server" CssClass="txt"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtusername" ErrorMessage="??" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl">
                               Password :&nbsp;&nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtpassword" runat="server" CssClass="txt" 
                                   ontextchanged="txtpassword_TextChanged" TextMode="Password"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="txtpassword" ErrorMessage="??" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               <asp:Button ID="btnlogin" runat="server" CssClass="btn" Height="35px" 
                                   Text="Login" Width="100px" onclick="btnlogin_Click" />
                           &nbsp;
                               <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                   Font-Underline="True" ForeColor="Yellow" PostBackUrl="~/Rgistration.aspx">New User?</asp:LinkButton>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow"></asp:Label>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Yellow" 
                                   PostBackUrl="~/Fpassword.aspx" CausesValidation="False">Forgot Password ?</asp:LinkButton>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                   </table>
               </td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
</div>
</asp:Content>

