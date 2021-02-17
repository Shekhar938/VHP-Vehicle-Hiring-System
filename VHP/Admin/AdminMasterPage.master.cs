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

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void UcHeader1_Load(object sender, EventArgs e)
    {

    }

    protected void LnkSingOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("frmAdminLogin.aspx");
    }
}
