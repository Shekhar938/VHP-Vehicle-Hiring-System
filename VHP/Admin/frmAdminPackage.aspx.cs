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

public partial class Admin_frmAdminPackage : System.Web.UI.Page
{
    ClsAdminBookings obj = new ClsAdminBookings();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            GetData();
        }
    }
    protected void GridPackage_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridPackage.PageIndex = e.NewPageIndex;
        GetData();

    }
    public void GetData()
    {
        DataSet ds = obj.DisplayBookingPackgeInfo("select * from tblPackageBookings");
        GridPackage.DataSource = ds.Tables[0];
        GridPackage.DataBind();
    }
    protected void GridPackage_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataSet ds = obj.DisplayBookingPackgeInfo("select * from tblPackageBookings order by " + e.SortExpression);
        GridPackage.DataSource = ds.Tables[0];
        GridPackage.DataBind();
    }
    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmHome.aspx");
    }

    public int Sum()
    {
        int i;
        i = obj.DisplayTotalAmount ("select sum(PackagePrice) from tblPackageBookings");
        return i;

    }
}
