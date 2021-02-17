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

public partial class Admin_frmCustomerReports : System.Web.UI.Page
{
    clsReports objReport = new clsReports();  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            DisplayUserReport(); 
        }
    }
    public void DisplayUserReport()
    {
        DataSet dsUser = objReport.DisplayUserReport();
        if (dsUser.Tables[0].Rows.Count > 0)
        {
            GvUser.DataSource = dsUser.Tables[0];
            GvUser.DataBind();
        }
    }
    protected void GvUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvUser.PageIndex = e.NewPageIndex;
        DisplayUserReport(); 
    }
    protected void btnExcel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=DocumentReport.xls");
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
        GvUser .RenderControl(htmlWrite);
        Response.Write(stringWrite.ToString());
        Response.End();
    }
    protected void btnPdf_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=DocumentReport.pdf");
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/pdf";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
        GvUser .RenderControl(htmlWrite);
        Response.Write(stringWrite.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
}
