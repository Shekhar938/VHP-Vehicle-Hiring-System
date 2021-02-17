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

public partial class Admin_frmBookings : System.Web.UI.Page
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
            DataSet ds = obj.DiplayVehicleaId("select VehicleId from tblVehicle");
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
        if (DdlVehicleId.SelectedItem.Text != "Select")
        {
            obj.VehicleId = DdlVehicleId.SelectedItem.Text;
           int i= obj.ShowBookingInfo();

           if (i == 1)
           {

               TxtBookId.Text = obj.BookingId.ToString();
               TxtDate.Text = obj.DateOfBooked;
               TxtUserId.Text = obj.UserId.ToString();
               TxtTimePeriod.Text = obj.TimeOfPeriod.ToString();
               TxtBookingAmount.Text = obj.BookingAmount.ToString();
               TxtAmountPaid.Text = obj.AmountPaid.ToString();
               TxtBookingStatus.Text = obj.BookingStatus.ToString() + " - NotAvaliable";
           }
           if (i == 0)
           {
               TxtBookingStatus.Text = obj.BookingStatus .ToString ()+" - Vehicle Avaliable";
           }
          


        }
        else
            ClearData();
    }

        public void ClearData()
        {
            TxtAmountPaid.Text = "";
            TxtBookId.Text = "";
            TxtBookingAmount.Text = "";
            TxtBookingStatus.Text = "";
            TxtDate.Text = "";
            TxtTimePeriod.Text = "";
            TxtUserId.Text = "";
            TxtBookId.Focus();
            DdlVehicleId.SelectedIndex = 0;
            
        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClearData();
    }
    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmHome.aspx");
    }
}
