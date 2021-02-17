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

public partial class CustomerSection_frmPackages : System.Web.UI.Page
{
    ClsPackage obj = new ClsPackage();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            DataSet ds = obj.GetPackageTours("select * from tblPakageInfo");
            GridPackage.DataSource = ds.Tables[0];
            GridPackage.DataBind();

        }
    }
    protected void BtnPackage_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmPackageBook.aspx");
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
}
