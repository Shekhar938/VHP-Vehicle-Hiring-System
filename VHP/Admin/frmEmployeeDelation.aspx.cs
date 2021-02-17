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

public partial class Admin_AdminUserControl_frmEmployeeDelation : System.Web.UI.Page
{
    ClsEmployee obj = new ClsEmployee();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = Convert.ToInt32(Request["EmpId"]);
            DataSet ds = obj.DisplyEmployee("select * from tblEmployeeInfo where EmpId=" + i);
            DetailsEmpView.DataSource = ds.Tables[0];
            DetailsEmpView.DataBind();

        }
    }


    protected void DetailsEmpView_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        string t1 = DetailsEmpView.Rows[0].Cells[1].Text;
        obj.EmpId = int.Parse(t1);
        obj.DeleteEmployee();
        Response.Redirect("frmEmployeeUpdation.aspx");
    }
    protected void DetailsEmpView_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void DetailsEmpView_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {

    }
    protected void DetailsEmpView_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmEmployeeUpdation.aspx?");
    }
}
