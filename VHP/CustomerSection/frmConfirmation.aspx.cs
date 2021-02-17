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

public partial class CustomerSection_frmConfirmation : System.Web.UI.Page
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
            if (Request["BookingId"] == null)
            {
                DataSet ds = obj.GetBookingId("select Max(BookingId) from tblBookingInfo");
                LblBookingId.Text = "Booking TransId : " + ds.Tables[0].Rows[0][0].ToString();
                LblUserName.Text = "UserName: " + Session["User"].ToString();
                LblMessage.Text = "Congrats, Your Booking is Successful!..";
            }
            else
            {
                LblBookingId.Text = "Booking TransId : " + Request["BookingId"];
                LblUserName.Text = "UserName: " + Session["User"].ToString();
                LblMessage.Text = " New  Date of Journey  :" + Request["Date"].ToString();
            }


         }
            

        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
}

