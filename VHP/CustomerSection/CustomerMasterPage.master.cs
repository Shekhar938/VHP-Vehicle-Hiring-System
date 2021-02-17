using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CustomerSection_CustomerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LnkSignOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("frmLogin.aspx");
    }
    protected void CustomerWebUserControl_Load(object sender, EventArgs e)
    {

    }
}
