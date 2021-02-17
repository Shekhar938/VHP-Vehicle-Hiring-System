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

public partial class Admin_frmAdminBookingCancelDisplay : System.Web.UI.Page
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
            DataSet ds = obj.DisplayCancelBookings();
            GridCancelRec.DataSource = ds.Tables[0];
            GridCancelRec.DataBind();
        }
    }
    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmHome.aspx");
    }
    protected void GridCancelRec_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataSet ds = obj.DisplayCanelSorting("select * from tblbookinginfo order by " + e.SortExpression);
        GridCancelRec.DataSource = ds.Tables[0];
        GridCancelRec.DataBind();
    }
    protected void GridCancelRec_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridCancelRec.PageIndex = e.NewPageIndex;
        DataSet ds = obj.DisplayCancelBookings();
        GridCancelRec.DataSource = ds.Tables[0];
        GridCancelRec.DataBind();

    }

    public int Sum()
    {
        int i;
        i = obj.DisplayTotalAmount("select sum(BookingAmount) from tblbookinginfo where BookingStatus=2");
        return i;

    }
}
