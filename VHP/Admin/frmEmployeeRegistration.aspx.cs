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

public partial class Admin_frmEmployeeRegistration : System.Web.UI.Page
{
    ClsEmployee obj = new ClsEmployee();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        obj.EmpName  = TxtName.Text;
        obj.Surname = TxtSurName.Text;
        obj.Address = TxtAddress.Text;
        obj.City = DdlCity.SelectedItem.ToString();
        obj.State = DdlState.SelectedItem.ToString();
        obj.ZipCode = Convert.ToInt32(TxtZipCode.Text);
        obj.WorkOnVehicle = int.Parse(TxtWorkOnVehicle.Text);
        obj.Salary = Convert.ToInt16(TxtSalary.Text);
        obj.JobDesc = TxtJobDesc.Text;
        obj.InsertEmployee();

        ClsLogin log = new ClsLogin();
        log.UserName = TxtName.Text;
        log.PassWord = TxtPassWord.Text;
        log.InserUser();
        LblMessage.Visible = true;
        LblMessage.Text = "Employee Successfully Registered...";
        Page.RegisterClientScriptBlock("Dhanush","<script>alert('Registered Successfully..')</script>");
        GetData();

        



       

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        GetData();
    }
    protected void LinkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmAdminLogin.aspx");
    }

    public void GetData()
    {
        TxtName.Text = "";
        TxtSurName.Text = "";
        TxtSalary.Text = "";
        TxtWorkOnVehicle.Text = "";
        TxtAddress.Text = "";
        TxtZipCode.Text = "";
        DdlState.SelectedIndex = 0;
        DdlCity.SelectedIndex = 0;
        TxtName.Focus();
    }


}

