using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_Payment : System.Web.UI.Page
{
    DS_PAYMENT.PAYMENTMST_SELECTDataTable PtDT = new DS_PAYMENT.PAYMENTMST_SELECTDataTable();
    DS_PAYMENTTableAdapters.PAYMENTMST_SELECTTableAdapter PtAdapter = new DS_PAYMENTTableAdapters.PAYMENTMST_SELECTTableAdapter();
    DS_ORDER.ORDERMST_SELECTDataTable ODT = new DS_ORDER.ORDERMST_SELECTDataTable();
    DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        ODT = OAdapter.SELECT_AMT(Session["email"].ToString()); 

        lblamt.Text = ODT.Rows[0]["tprice"].ToString();
    }
    protected void rdoonine_CheckedChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void rdooffline_CheckedChanged(object sender, EventArgs e)
    {
        ODT = OAdapter.SELECT_AMT(Session["email"].ToString());

        lblamtt.Text = ODT.Rows[0]["tprice"].ToString();
    
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnpayonline_Click(object sender, EventArgs e)
    {
        PtAdapter.Insert(Session["email"].ToString(), "Online", drpbankname.SelectedItem.Text, txtcard.Text, Convert.ToInt32(txtcvv.Text), Convert.ToDouble(lblamt.Text));
        OAdapter.ORDERMST_UPDATE_STATUS_BY_EMAIL(Session["email"].ToString(), 1);
        
        Response.Redirect("Thanks.aspx");
    }
    protected void btnpayoffline_Click(object sender, EventArgs e)
    {
        
       // lblamtt.Text = lblamt.Text;
        PtAdapter.Insert(Session["email"].ToString(), "Offline", "-", "-", 0, Convert.ToDouble(lblamt.Text));
        OAdapter.ORDERMST_UPDATE_STATUS_BY_EMAIL(Session["email"].ToString(), 1);
        Response.Redirect("Thanks.aspx");
    }
}