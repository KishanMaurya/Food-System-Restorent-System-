using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fpassword : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.select_forgot_password(txtusername.Text, txtmobile.Text);
        if (UDT.Rows.Count > 0)
        {

            lblmsg.Text = "Password =" + UDT.Rows[0]["password"].ToString();


        }
        else
        {

            lblmsg.Text = "Invalid name or mobile";
        }
    }
}