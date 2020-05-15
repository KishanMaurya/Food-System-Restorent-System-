using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_UserAccount : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false )
        {
            UDT = UAdapter.SELECT();
            GridView2.DataSource = UDT;
            GridView2.DataBind();
            lbl.Text = GridView2.Rows.Count.ToString();
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}