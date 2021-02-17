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

public partial class Admin_frmAdminModifyEmp : System.Web.UI.Page
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
    protected void DetailsEmpView_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
    TextBox  t2, t3, t4, t5, t6, t7, t8, t9, t10;
     string   t1 = DetailsEmpView.Rows[0].Cells[1].Text;
        t2 = (TextBox)DetailsEmpView.Rows[1].Cells[1].Controls[0];
        t3 = (TextBox)DetailsEmpView.Rows[2].Cells[1].Controls[0];
        t4 = (TextBox)DetailsEmpView.Rows[3].Cells[1].Controls[0];
        t5 = (TextBox)DetailsEmpView.Rows[4].Cells[1].Controls[0];
        t6 = (TextBox)DetailsEmpView.Rows[5].Cells[1].Controls[0];
        t7 = (TextBox)DetailsEmpView.Rows[6].Cells[1].Controls[0];
        t8 = (TextBox)DetailsEmpView.Rows[7].Cells[1].Controls[0];
        t9 = (TextBox)DetailsEmpView.Rows[8].Cells[1].Controls[0];
        t10 = (TextBox)DetailsEmpView.Rows[9].Cells[1].Controls[0];       
        
        
        obj.EmpId = int.Parse(t1);
        obj.EmpName = t2.Text;
        obj.Surname = t3.Text;
        obj.Address = t4.Text;
        obj.City = t5.Text;
        obj.State = t6.Text;
        obj.ZipCode = Convert.ToInt32(t7.Text);
        obj.WorkOnVehicle = Convert.ToInt32(t8.Text);
        obj.Salary = Convert.ToInt32(t9.Text);        
        obj.JobDesc = t10.Text;
        obj.UpdateEmployee();
        Response.Redirect("frmEmployeeUpdation.aspx");
    }
    
   
    protected void DetailsEmpView_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
       
        //Response.Redirect("frmEmployeeUpdation.aspx");

    }
}
