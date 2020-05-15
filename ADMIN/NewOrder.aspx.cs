using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_NewOrder : System.Web.UI.Page
{
    DS_ORDER.ORDERMST_SELECTDataTable ODT = new DS_ORDER.ORDERMST_SELECTDataTable();
    DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter();

    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            ODT = OAdapter.Select_BySTATUS(1);
            GridView1.DataSource = ODT;
            GridView1.DataBind();
            lbll.Text = GridView1.Rows.Count.ToString();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        OAdapter.ORDERMST_UPDATE_STATUS(Convert.ToInt32(e.CommandArgument.ToString()), 2);
        ODT = OAdapter.Select_BySTATUS(1);
        GridView1.DataSource = ODT;
        GridView1.DataBind();
        lbll.Text = GridView1.Rows.Count.ToString();
    }
}