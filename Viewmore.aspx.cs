using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewmore : System.Web.UI.Page
{
    DS_PRODUCT.PRODUCTMST_SELECTDataTable PDT = new DS_PRODUCT.PRODUCTMST_SELECTDataTable();
    DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter PAdapter = new DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        PDT = PAdapter.SELECT_BY_PID(Convert.ToInt32(Session["vid"].ToString()));
        lblname.Text = PDT.Rows[0]["pname"].ToString();
        lblprice.Text = PDT.Rows[0]["price"].ToString();
        lbldetail.Text = PDT.Rows[0]["detail"].ToString();
        lblcate.Text = PDT.Rows[0]["cname"].ToString();
        Image1.ImageUrl = PDT.Rows[0]["image"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}