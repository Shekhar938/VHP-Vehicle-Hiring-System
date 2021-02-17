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

public partial class CustomerSection_frmAmountPaid : System.Web.UI.Page
{
    ClsUserBookings obj = new ClsUserBookings();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            DataSet ds = obj.GetBookingAmount("select BookingAmount from tblBookingInfo where BookingId=" + Request["BookingId"]);
            TxtBookingAmount.Text = ds.Tables[0].Rows[0][0].ToString();

            TxtUserName.Text = Session["User"].ToString();
        }

    }
    protected void BtnOk_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmConfirmation.aspx");
    }
}
