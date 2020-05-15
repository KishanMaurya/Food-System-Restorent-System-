using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "")
        {
            lbl.Text = "Enter name";
        }
        else if (txtpass.Text == "")
        {
            lbl.Text = "Enter password";
        }
        else
        {
            if (txtname.Text == "admin" && txtpass.Text == "admin")
            {
                Response.Redirect("AddProduct.aspx");
            }
            else
            {
                lbl.Text = "Invalid detail";
            }
        }
    }
}