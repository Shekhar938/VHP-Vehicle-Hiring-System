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

public partial class CustomerSection_frmPackageConformation : System.Web.UI.Page
{
    ClsPackage obj = new ClsPackage();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["User"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }

        if (!IsPostBack)
        {
            DataSet ds = obj.GetPackageBookingId("select Max(BookingId) from tblPackageBookings");
            LblTransId.Text = "Transaction Id:  "+ds.Tables[0].Rows[0][0].ToString();
            LblUserName.Text = "UserName: "+Session["User"].ToString();
            LblMessage.Text = "Package Conformed. Happy Journey!....";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
}
