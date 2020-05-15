using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_View : System.Web.UI.Page
{
    DS_ORDER.ORDERMST_SELECTDataTable ODT = new DS_ORDER.ORDERMST_SELECTDataTable();
    DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter();

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
        ODT = OAdapter.SELECT_EMAIL_PNAME(Session["email"].ToString(), lblname.Text);
        if (ODT.Rows.Count == 1)
        {
            OAdapter.ORDERMST_UPDATE_CART(Convert.ToInt32(ODT.Rows[0]["oid"].ToString()), 1, Convert.ToDouble(lblprice.Text));

        }
        else
        {
            OAdapter.Insert(Session["email"].ToString(), lblname.Text, Convert.ToDouble(lblprice.Text), 1, Convert.ToDouble(lblprice.Text), Image1.ImageUrl.ToString(), 0);
        }
        Response.Redirect("MyCart.aspx");
    }
}