using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    DS_PRODUCT.PRODUCTMST_SELECTDataTable PDT = new DS_PRODUCT.PRODUCTMST_SELECTDataTable();
    DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter PAdapter = new DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string idd = Request.QueryString["id"].ToString();
            if (idd == "1")
            {
                PDT = PAdapter.SELECT_BY_CNAME("GUJARATI");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "2")
            {
                PDT = PAdapter.SELECT_BY_CNAME("CHINEES");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            
            }
            else if (idd == "3")
            {
                PDT = PAdapter.SELECT_BY_CNAME("SOUTH INDIAN");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "4")
            {
                PDT = PAdapter.SELECT_BY_CNAME("PUNJABI");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "5")
            {
                PDT = PAdapter.SELECT_BY_CNAME("KATHIYAWADI");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "6")
            {
                PDT = PAdapter.SELECT_BY_CNAME("SOFT DRINK");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "7")
            {
                PDT = PAdapter.SELECT_BY_CNAME("ICE CREAM");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "8")
            {
                PDT = PAdapter.SELECT_BY_CNAME("BRAK FAST");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "9")
            {
                PDT = PAdapter.SELECT_BY_CNAME("ITALIAN");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }

          
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["vid"] = e.CommandArgument.ToString();
        Response.Redirect("Viewmore.aspx");
    }
}