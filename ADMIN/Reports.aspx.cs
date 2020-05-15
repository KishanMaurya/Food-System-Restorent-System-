using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Reports : System.Web.UI.Page
{
    DS_ORDER.ORDERMST_SELECTDataTable ODT = new DS_ORDER.ORDERMST_SELECTDataTable();
    DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDERMST_SELECTTableAdapter();
   
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
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
            ODT = OAdapter.Select_By_email(drpemail.SelectedItem.Text);
            GridView1.DataSource = ODT;
            GridView1.DataBind();
            lbl.Text = "Total Record = " + GridView1.Rows.Count.ToString();
        }
    }
}