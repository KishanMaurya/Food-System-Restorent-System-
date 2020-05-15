using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_Password : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UAdapter.USERMST_UPDATE_PASSWORD(Convert.ToInt32(Session["uid"].ToString()), txtnewpass.Text);
        lbl.Text = "Password Changed";
    }
}