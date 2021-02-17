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

public partial class Admin_frmDriverInfo : System.Web.UI.Page
{
    ClsEmployee obj = new ClsEmployee();
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
    public void GetData()
    {
        DataSet ds = obj.DisplyEmployee ("select * from tblEmployeeInfo");
        GridEmployee.DataSource = ds.Tables[0];
        GridEmployee.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmEmployeeUpdation.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        
        GridEmployee.PageIndex = e.NewPageIndex;
        GetData();
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataSet ds = obj.DisplyEmployee("select * from tblEmployeeInfo order by " + e.SortExpression);
        
        GridEmployee.DataSource = ds.Tables[0];
        GridEmployee.DataBind();
    }
}
