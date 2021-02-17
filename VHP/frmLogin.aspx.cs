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

public partial class CustomerSection_frmLogin : System.Web.UI.Page
{
    ClsCustomerLogin obj = new ClsCustomerLogin();
    bool found;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TxtUserName.Focus();
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (TxtUserName.Text != "" && TxtPassWord.Text != "")
        {
            obj.UserName = TxtUserName.Text;
            obj.PassWord = TxtPassWord.Text;
            found = obj.ValiDateUser();
            if (found == true)
            {
                Session["User"] = obj.UserName;
                Response.Redirect("~/CustomerSection/frmUserHome.aspx");
            }
            else
            {
                LblMessage.Visible = true;
                LblMessage.Text = "Invalid UserName TryAgain...";
            }
        }
        else
        {

            LblMessage.Visible = true;
            LblMessage.Text = "Must Enter UserName and PassWord";
        }

    }


    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        TxtUserName.Text = "";
        TxtPassWord.Text = "";
        TxtUserName.Focus();

    }
    protected void LnkNewUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerSection//frmRegistration.aspx");
    }
}
