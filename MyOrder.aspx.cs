using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_MyOrder : System.Web.UI.Page
{
    DS_ORDER.ORDERMST_SELECTDataTable ODT = new DS_ORDER.ORDERMST_SELECTDataTable();
    DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        ODT = OAdapter.Select_By_email(Session["email"].ToString());
        GridView1.DataSource = ODT;
        GridView1.DataBind();
        lbl.Text = GridView1.Rows.Count.ToString();
    }
}