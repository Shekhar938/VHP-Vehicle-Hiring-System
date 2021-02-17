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

public partial class CustomerSection_frmBookingCancellation : System.Web.UI.Page
{
    ClsUserBookings obj = new ClsUserBookings();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {

        obj.BookingId = Convert.ToInt32 (TxtBookingId.Text);
        obj.DateOfBooked = TxtDateOfBook.Text;
       int i= obj.CancelBooking();
       Response.Redirect("frmCancelReport.aspx?id="+i.ToString ()+"&BookingId="+obj.BookingId.ToString ());
       

    }
    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
}
