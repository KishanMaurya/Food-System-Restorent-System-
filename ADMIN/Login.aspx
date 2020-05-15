<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ADMIN_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="../css/style.css" rel="stylesheet" type="text/css" />
     <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/grid.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/camera.css">
    <link rel="stylesheet" href="../css/jquery.fancybox.css">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery-migrate-1.2.1.js"></script><script src='../js/device.min.js'></script> 
    <style type="text/css">
        .style1
        {
            width: 297px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
      
          <main>
          <%-- <section class="well">--%>            <%--<div class="container">--%>
                <h4><em>Welcome to Just Eat..</em></h4>
          <%-- </div>     --%>       <%-- </section>--%>
        <section class="well well__offset-1 bg-1">
         <div class="container">
         </div>
            <div id="login">
                <table class="tbl">
                    <tr>
                        <td colspan="2" height="30" 
                            style="border-bottom: thin solid #FFFFFF; color: #FFFFFF; font-weight: 700; text-align: center;" 
                            valign="middle">
                            ADMIN LOGIN</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            UserName :&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Password :&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" 
                                onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            <asp:Label ID="lbl" runat="server" ForeColor="#FFFFCC"></asp:Label>
                        </td>
                    </tr>
                </table>
          </div>
        </section>
    </main>
    </div>
    </form>
</body>
</html>
