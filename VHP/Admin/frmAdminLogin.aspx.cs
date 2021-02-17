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

public partial class Admin_frmAdminLogint : System.Web.UI.Page
{
    ClsLogin obj = new ClsLogin();
    bool Found;
    protected void Page_Load(object sender, EventArgs e)
    {
        TxtUserName.Focus();
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (TxtUserName.Text != "" && TxtPassWord.Text != "")
        {
            obj.UserName = TxtUserName.Text;
            obj.PassWord = TxtPassWord.Text;
            Found = obj.ValiDateUser();
            if (Found == true)
            {
                Session["Admin"] = obj.UserName;
                Response.Redirect("frmHome.aspx");
            }
            else
                Label1.Text = "InValid UserName/Password Try Again....";


        }
        else
            Label1.Text = "Must Enter UserName and PassWord";
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        TxtUserName.Text = "";
        TxtPassWord.Text = "";
        TxtUserName.Focus();
    }
    protected void LnkNewUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmEmployeeRegistration.aspx");
    }
}
