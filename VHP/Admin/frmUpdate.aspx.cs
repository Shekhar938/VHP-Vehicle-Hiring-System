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


public partial class Admin_frmUpdate : System.Web.UI.Page
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
            ClsAdminBookings VehicleObj = new ClsAdminBookings();
            DataSet ds = VehicleObj.DiplayVehicleaId("select VehicleId from tblVehicle");
            DdlVehicleId.Items.Clear();
            DdlVehicleId.Items.Insert(0, "Select");

            for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
            {

                DdlVehicleId.Items.Add(ds.Tables[0].Rows[i][0].ToString());

            }
        }
    }
    protected void DdlVehicleId_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetData();
    }
    public void GetData()
    {

        DataSet ds = obj.DisplayVehicles("select * from tblvehicle where VehicleId='"+DdlVehicleId.SelectedItem.ToString ()+"'");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GetData();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GetData();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox t1, t2, t3, t4, t5, t6;
        t1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtVehicleId");
        t2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDescription");
        t3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtModel");
        t4 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtMake");
        t5 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtVehicleType");
        t6 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtRate");
        
        obj.VehicleId = t1.Text;
        obj.Description = t2.Text;
        obj.Model = t3.Text;
        obj.Make = t4.Text;
        obj.VehicleType = Convert.ToInt16 (t5.Text);
        obj.RatePerDay = Convert.ToInt16(t6.Text);
        obj.UpdateVehicle();
        GridView1.EditIndex = -1;
        GetData();
        
        
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label l1;
        l1 = (Label)GridView1.Rows[e.RowIndex].FindControl("LblVehicleId");
        obj.VehicleId = l1.Text;
        obj.DeleteVehicle();
        GridView1.EditIndex = -1;
        GetData();

    }
    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmHome.aspx");
    }
}
