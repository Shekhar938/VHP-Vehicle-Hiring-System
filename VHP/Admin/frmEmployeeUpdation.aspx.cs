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

public partial class Admin_frmEmployeeUpdation : System.Web.UI.Page
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
        DataSet ds = obj.DisplyEmployee("select * from tblEmployeeInfo");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GetData();

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GetData();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataSet ds = obj.DisplyEmployee("select * from tblEmployeeInfo order by " + e.SortExpression);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
     
        TextBox t1;
        t1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEmpno");
       
        Response.Redirect("frmAdminModifyEmp.aspx?EmpId=" + t1.Text);
        
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
       Label  l1;
       l1 = (Label)GridView1.Rows[e.RowIndex].FindControl("LblEmpNo");
       

        Response.Redirect("frmEmployeeDelation.aspx?EmpId=" + l1.Text);
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmEmployeeInfo.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
}
