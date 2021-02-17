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

public partial class CustomerSection_frmRegistration : System.Web.UI.Page
{
    ClsUserRegistration obj = new ClsUserRegistration();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        obj.UserName = TxtName.Text;
        obj.Surname = TxtSurName.Text;
        obj.EmailId = TxtEmaiId.Text;
        obj.MobileNo =TxtMobileNo.Text;
        obj.Address = TxtAddress.Text;
        obj.City = DdlCity.SelectedItem.Text;
        obj.State = DdlState.SelectedItem.Text;
        obj.ZipCode =TxtZipCode.Text;
        obj.InsertUserRegistration();

        ClsCustomerLogin LoginObj = new ClsCustomerLogin();
        LoginObj.UserName = TxtName.Text;
        LoginObj.PassWord = TxtPassWord.Text;
        LoginObj.HintQuestion = DdlHintQuestion.SelectedItem.Text;
        LoginObj.Answer = TxtAnswer.Text;
        LoginObj.InsertUserLogn();
        
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        TxtName.Text = "";
        TxtSurName.Text = "";
        TxtPassWord.Text = "";
        TxtMobileNo.Text = "";
        TxtEmaiId.Text = "";
        TxtAnswer.Text = "";
        TxtAddress.Text = "";
        TxtZipCode.Text = "";
        DdlCity.SelectedIndex = 0;
        DdlState.SelectedIndex = 0;
        DdlHintQuestion.SelectedIndex = 0;

        

    }
    protected void LnkLogin_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/frmLogin.aspx");
    }
}
