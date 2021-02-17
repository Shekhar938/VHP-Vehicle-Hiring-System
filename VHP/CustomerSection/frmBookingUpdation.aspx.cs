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

public partial class CustomerSection_frmBookingUpdation : System.Web.UI.Page
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
            

          //  DataSet ds = obj.GetBookingId("select BookingId from tblBookingInfo ");
          //  DataSet ds1 = obj.GetUserId("select UserId from tblUserRegistration where UserName='" + Session["User"].ToString() + "'");
            

           DataSet ds = obj.GetBookingId("select BookingId from tblBookingInfo where UserId In (select UserId from tblUserRegistration where UserName='" + Session["User"].ToString() + "')");
           // DataSet ds = obj.GetBookingId("select BookingId from tblBookingInfo where UserId=();

           DdlBookingId.Items.Clear();
           DdlBookingId.Items.Insert(0, "Select");
         
           for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
           {

               DdlBookingId.Items.Add(ds.Tables[0].Rows[i][0].ToString());

           }
            
        }



    }
    protected void DdlPackageId_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DdlBookingId.SelectedItem.Text != null)
        {
            DataSet ds = obj.DisplayBookingInfo("select DateOfBooked,VehicleId,UserId from tblBookingInfo where BookingId=" + DdlBookingId.SelectedItem.Text);
            TxtBookingDate.Text = ds.Tables[0].Rows[0][0].ToString();
            TxtVehicleId.Text = ds.Tables[0].Rows[0][1].ToString();
            TxtUserName.Text = Session ["User"].ToString();
            TxtUseID.Text = ds.Tables[0].Rows[0][2].ToString();
        }
        else
        {
            LblMessage.Text = "Select Your TransId";
        }
    }
    protected void BtnBooking_Click(object sender, EventArgs e)
    {
        obj.UpdateBookingInfo("update tblBookingInfo set DateOfBooked='" + TxtRequiredDate.Text + "' where BookingId=" + DdlBookingId.SelectedItem.Text);
        Response.Redirect ("frmConfirmation.aspx?BookingId="+DdlBookingId.SelectedItem.Text.ToString ()+"&Date='"+TxtRequiredDate.Text +"'" );

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        TxtBookingDate.Text = "";
        TxtUseID.Text = "";
        TxtUserName.Text ="";
        TxtVehicleId.Text ="";
        TxtRequiredDate.Text = "";
        DdlBookingId.SelectedIndex = 0;
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
    protected void BtnAvaliability_Click(object sender, EventArgs e)
    {
        bool CheckAvaliblity;
        CheckAvaliblity = obj.CheckAvalibility("select * from tblBookingInfo where VehicleId='" + TxtVehicleId.Text + "' and DateOfBooked='" + TxtRequiredDate.Text + "'");
        if (CheckAvaliblity == true)
        {
            LblMessage.Visible = true;
            LblMessage.Text = " Vehicle Not Avliable ";
        }
        else
        {

            LblMessage.Visible = true;
            LblMessage.Text = " Vehicle  Avliable  ";
        }
        

    }
}
