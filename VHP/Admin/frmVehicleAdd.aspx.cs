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

public partial class Admin_frmVehicleAdd : System.Web.UI.Page
{
    ClsAdmin obj = new ClsAdmin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            GetData();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox t1, t2, t3, t4, t5, t6;
        t1 = (TextBox)GridView1.FooterRow.FindControl("TxtVehicleNO");
        t2 = (TextBox)GridView1.FooterRow.FindControl("TxtDescription");
        t3 = (TextBox)GridView1.FooterRow.FindControl("TxtModel");
        t4 = (TextBox)GridView1.FooterRow.FindControl("TxtMake");
        t5 = (TextBox)GridView1.FooterRow.FindControl("TxtVehicleType");
        t6 = (TextBox)GridView1.FooterRow.FindControl("TxtRate");
        obj.VehicleId = t1.Text;
        obj.Description = t2.Text;
        obj.Model = t3.Text;
        obj.Make = t4.Text;
        obj.VehicleType  =Convert.ToInt16 ( t5.Text);
        obj.RatePerDay =Convert.ToInt16 ( t6.Text);
        obj.AddVehicle();
        GetData();    

        
    }
    public void GetData()
    {

        DataSet ds = obj.DisplayVehicles("select * from tblvehicle");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    
    protected void BtnHome_Click1(object sender, EventArgs e)
    {
        Response.Redirect("frmHome.aspx");
    }
}
