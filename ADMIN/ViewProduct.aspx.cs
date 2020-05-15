using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_ViewProduct : System.Web.UI.Page
{
    DS_PRODUCT.PRODUCTMST_SELECTDataTable PDT = new DS_PRODUCT.PRODUCTMST_SELECTDataTable();
    DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter PAdapter = new DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            PDT = PAdapter.SELECT();
            GridView1.DataSource = PDT;
            GridView1.DataBind();
            lblcnt.Text = PDT.Rows.Count.ToString();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        PAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));

        PDT = PAdapter.SELECT();
        GridView1.DataSource = PDT;
        GridView1.DataBind();
        lblcnt.Text = GridView1.Rows.Count.ToString();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;

        PDT = PAdapter.SELECT();
        GridView1.DataSource = PDT;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}