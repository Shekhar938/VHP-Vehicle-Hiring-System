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

public partial class CustomerSection_frmCancelReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
        ClsUserBookings obj = new ClsUserBookings();
        if (!IsPostBack)
        {            
            if (Request["id"] != null)
            {
                int i = Convert.ToInt16(Request["id"]);
                int BookId = Convert.ToInt16(Request["BookingId"]);
                if (i == 1)
                {
                 obj.BookingId =BookId ;
                  DataSet ds=  obj.DisplayCancelBooking ();
                    GridConform.DataSource =ds.Tables [0];
                    GridConform.DataBind ();
                }
                if (i == -1)
                {
                    LblMessage.Visible = true;
                    LblMessage.Text = "BookingId="+BookId .ToString ()+" Already Cancelled";

                }

                                
            }
        }
    }
    
    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
}
