using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Payment : System.Web.UI.Page
{
    DS_ORDER.ORDERMST_SELECTDataTable ODT = new DS_ORDER.ORDERMST_SELECTDataTable();
    DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter();

    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    DS_PAYMENT.PAYMENTMST_SELECTDataTable PDT = new DS_PAYMENT.PAYMENTMST_SELECTDataTable();
    DS_PAYMENTTableAdapters.PAYMENTMST_SELECTTableAdapter PAdapter = new DS_PAYMENTTableAdapters.PAYMENTMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            UDT = UAdapter.SELECT();
            drpemail.DataSource = UDT;
            drpemail.DataTextField = "email";
            drpemail.DataValueField = "uid";
            drpemail.DataBind();
            drpemail.Items.Insert(0, "SELECT");
        }
        lbl.Text = "";
    }
    protected void btnselect_Click(object sender, EventArgs e)
    {
        if (drpemail.SelectedIndex == 0)
        {
            lbl.Text = "Select Email";
        }
        else
        {
           
          //  PDT = PAdapter.Select_By_PID(Convert.ToInt32( drpemail.SelectedValue));
            PDT = PAdapter.Select_B_EMAIL(drpemail.SelectedItem.Text);
            
            gvgrid.DataSource = PDT;
            gvgrid.DataBind();

            
            lbl.Text = "Total Record = " + gvgrid.Rows.Count.ToString();
        }
    }
    protected void gvgrid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}