using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_MyCart : System.Web.UI.Page
{
    DS_ORDER.ORDERMST_SELECTDataTable ODT = new DS_ORDER.ORDERMST_SELECTDataTable();
    DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter();
    DS_PRODUCT.PRODUCTMST_SELECTDataTable PDT = new DS_PRODUCT.PRODUCTMST_SELECTDataTable();
    DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter PAdapter = new DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            ODT = OAdapter.SELECT_EMAIL_STATUS(Session["email"].ToString(), 0);
            GridView1.DataSource = ODT;
            GridView1.DataBind();
            lbl.Text = GridView1.Rows.Count.ToString();

            if (GridView1.Rows.Count == 0)
            {

                btnchckout.Visible = false;
                Button1.Visible = false;
            }
            else
            {
                btnchckout.Visible = true;
                Button1.Visible = true;
            
            
            }
        
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int oidd = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        OAdapter.Delete(oidd);
        ODT = OAdapter.SELECT_EMAIL_STATUS(Session["email"].ToString(), 0);
        GridView1.DataSource = ODT;
        GridView1.DataBind();
        lbl.Text = GridView1.Rows.Count.ToString();
        
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int oidd = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        TextBox txtqq = GridView1.Rows[e.RowIndex].Cells[3].FindControl("txtq") as TextBox;

        string pricee = GridView1.Rows[e.RowIndex].Cells[2].Text;
        double tpricee = Convert.ToInt32(pricee) * Convert.ToInt32(txtqq.Text);

        OAdapter.ORDERMST_UPDATE_Cart_ALLREADY_ADD(oidd, Convert.ToInt32(txtqq.Text), tpricee);
 ODT = OAdapter.SELECT_EMAIL_STATUS(Session["email"].ToString(), 0);
        GridView1.DataSource = ODT;
        GridView1.DataBind();
    }
  

    protected void btnchckout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}