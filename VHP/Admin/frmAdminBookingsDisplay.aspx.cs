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

public partial class Admin_frmAdminBookingsDisplay : System.Web.UI.Page
{
    ClsAdminBookings obj = new ClsAdminBookings();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            DataSet ds = obj.DisplayConformBookings();
            GridBookingRec.DataSource = ds.Tables[0];
            GridBookingRec.DataBind();
        }
    }
    protected void GridCancelRec_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataSet ds = obj.DisplayCanelSorting("select * from tblbookinginfo where BookingStatus=0 order by BookingId");
        GridBookingRec.DataSource = ds.Tables[0];
        GridBookingRec.DataBind();
    }
    protected void GridCancelRec_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridBookingRec.PageIndex = e.NewPageIndex;
        DataSet ds = obj.DisplayConformBookings();
        GridBookingRec.DataSource = ds.Tables[0];
        GridBookingRec.DataBind();
    }
    
    protected void BtnCancelRec_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmAdminBookingCancelDisplay.aspx");
    }
    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmHome.aspx");
    }
    public int Sum()
    {
        int i;
        i = obj.DisplayTotalAmount("select sum(BookingAmount) from tblbookinginfo where BookingStatus=0");
        return i;
        
    }
    
    
    protected void GridBookingRec_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        ClsUserBookings obj1 = new ClsUserBookings();
        int id = Convert.ToInt32(e.CommandArgument.ToString());
        obj1.UpdateBookingInfo("update tblBookingInfo set BookingStatus=2 where BookingId="+id);
        DataSet ds = obj.DisplayConformBookings();
        GridBookingRec.DataSource = ds.Tables[0];
        GridBookingRec.DataBind();
    }
    
}
