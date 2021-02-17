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

public partial class CustomerSection_frmBookingDisplay : System.Web.UI.Page
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
            if (Request["Text"] != null)
            {
                LblPaid.Visible = true;
                LblPaid.Text = Request["Text"].ToString();
                LblPaid.Visible = true;

            }

            if (Request["Text2"] != null)
            {
                LblPaid.Text = Request["Text2"].ToString();
                LblPaid.Visible = true;
            }

            obj.BookingId = Convert.ToInt32(Request["BookingId"]);
            DataSet ds = obj.ShowBookingConform();
            LblMessage.Visible = true;
            LblMessage.Text = "For Amount Paying Click On Amount!   ";
            GridViewDisplay.DataSource = ds.Tables[0];
            GridViewDisplay.DataBind();

        }


    }
    public int DisplayUserId()
    {
        string UserName = Session["User"].ToString();
        DataSet ds = obj.DiplayUserId("select UserId from tblUserRegistration where UserName='" + UserName + "'");
        int i = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        return i;
    }
    public string DisplayUserName()
    {
        string UserName = Session["User"].ToString();
        return UserName;
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmVehicleBooking.aspx");
    }
    protected void BtnAmountPay_Click(object sender, EventArgs e)
    {
        DataSet ds = obj.GetBookingId("Select Max(BookingId) from tblBookingInfo");
        Response.Redirect("frmAmountPaid.aspx?BookingId=" + ds.Tables[0].Rows[0][0].ToString() + "&Text2=AmountPaid");



    }
}
