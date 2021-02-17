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

public partial class CustomerSection_frmPackageBook : System.Web.UI.Page
{
    ClsPackage obj = new ClsPackage();
    ClsAdminBookings obj1 = new ClsAdminBookings();
    ClsUserBookings uid = new ClsUserBookings();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            DataSet ds = obj.DiplayPackageId("select PackageId from tblPakageInfo");
            DdlPackageId.Items.Clear();
            DdlPackageId.Items.Insert(0, "Select");

            for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
            {

                DdlPackageId.Items.Add(ds.Tables[0].Rows[i][0].ToString());

            }


            DataSet ds1 = obj1.DiplayVehicleaId("select VehicleId from tblVehicle");
            DdlVehicleId.Items.Clear();
            DdlVehicleId.Items.Insert(0, "Select");

            for (int i = 0; i <= ds1.Tables[0].Rows.Count - 1; i++)
            {

                DdlVehicleId.Items.Add(ds1.Tables[0].Rows[i][0].ToString());

            }




        }
    }
    protected void DdlPackageId_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DdlPackageId.SelectedItem.Text != null)
        {
            obj.PackageId = Convert.ToInt32(DdlPackageId.SelectedItem.Text);
            obj.DisplayPackage();
            TxtDetails.Text =obj.Details.ToString ();
            TxtNoOfDays.Text =obj.NoOfDays.ToString ();
            TxtPrice .Text =obj.Price.ToString ();
            TxtUserName.Text = Session["User"].ToString();
            DataSet ds = uid.DiplayUserId("select UserId from tblUserRegistration where UserName='" + TxtUserName.Text + "'");
            TxtUseID.Text = ds.Tables[0].Rows[0][0].ToString();





        }
    }
    protected void BtnBooking_Click(object sender, EventArgs e)
    {
        obj.PackageId = Convert.ToInt32 (DdlPackageId.SelectedItem.Text);
        obj.DateOfBook = TxtBookingDate.Text;
        obj.VehicleId = DdlVehicleId.SelectedItem.Text;
        obj.UserId = Convert.ToInt16 (TxtUseID.Text);
        obj.BookPackage();
        Response.Redirect("frmPackageConformation.aspx");
        //LblMessage.Visible = true;

        //LblMessage.Text = "Package Conformed Happy Journey..";



        
        
       
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        GetData();
    }
    public void GetData()
    {
       
        TxtDetails.Text = "";
             TxtUseID.Text = "";
        TxtPrice.Text = "";
        TxtNoOfDays.Text = "";
        TxtBookingDate.Text = "";
        DdlVehicleId.SelectedIndex=0;
        DdlPackageId.SelectedIndex=0;
        DdlAmountPaid.SelectedIndex = 0;
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
}
