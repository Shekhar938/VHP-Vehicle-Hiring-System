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

public partial class CustomerSection_frmVehicleInformation : System.Web.UI.Page
{
    ClsAdmin obj = new ClsAdmin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            GetData();
        }
    }
    public void GetData()
    {
        DataSet ds = obj.DisplayVehicles("select * from tblvehicle");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }
}
