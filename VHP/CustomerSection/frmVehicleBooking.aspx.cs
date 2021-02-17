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

public partial class CustomerSection_frmVehicleBooking : System.Web.UI.Page
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
            DataSet ds = obj.DiplayVehicleaId ("select VehicleId from tblVehicle");
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
        if (DdlVehicleId .SelectedItem.Text != "Select")
        {
            //ClearData();
            obj.VehicleId = DdlVehicleId.SelectedItem.Text;
            obj.DisplyVehicleInfo();

            TxtDescription.Text  = obj.Description;
            TxtModel.Text = obj.Model;
            TxtManuFacturer.Text = obj.Make;
            TxtRatePerDay.Text = obj.RatePerDay.ToString();
            TxtVehicleType.Text= obj.VehicleType.ToString();
           TxtUserName .Text  = Session["User"].ToString();
           DataSet ds = obj.DiplayUserId("select UserId from tblUserRegistration where UserName='" + TxtUserName.Text + "'");
        TxtUserId.Text = ds.Tables[0].Rows[0][0].ToString();
            //TxtBookingStatus.Text =obj.BookingStatus .ToString ();   
                            


        }
        else
            ClearData();

    }

    public void ClearData()
    {
        TxtUserName.Text = "";
        TxtUserId.Text = "";
        TxtDescription.Text = "";
        TxtManuFacturer.Text = "";
        TxtModel.Text = "";
        TxtVehicleType.Text = "";
        TxtRatePerDay.Text  = "";
        TxtNoOfDays.Text = "";
       TxtBookingDate.Text = "";
      DdlVehicleId.SelectedIndex = 0;

        TxtDescription.Focus();
        


    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        ClearData();
    }
    protected void BtnBooking_Click(object sender, EventArgs e)
    {
        obj.DateOfBooked = TxtBookingDate.Text;
        obj.VehicleId = DdlVehicleId.SelectedItem.Text;
        obj.TimeOfPeriod = int.Parse (TxtNoOfDays .Text);
        obj.AmountPaid = DdlAmountPaid.SelectedItem.Text;
        obj.UserId = int.Parse (TxtUserId.Text);
        obj.AcceptBooking();
        

        if (DdlAmountPaid.SelectedItem.Text == "CreditCard")
        {
        //    DataSet ds = obj.GetBookingId("Select BookingAmount  from tblBookingInfo where BookingId =(select  Max(BookingId) from tblBookingInfo)");
        //    Response.Redirect("frmAmountPaid.aspx?BookingAmount=" + ds.Tables[0].Rows[0][0].ToString());
        //}
        //else
        //{
            DataSet ds = obj.GetBookingId("Select Max(BookingId) from tblBookingInfo");
            Response.Redirect("frmBookingDisplay.aspx?BookingId=" + ds.Tables[0].Rows[0][0].ToString()+"&Text=Processing Wait....");
        }

       



        

        
       

    }
    protected void DdlAmountPaid_SelectedIndexChanged(object sender, EventArgs e)
    {
       

    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserHome.aspx");
    }
}
