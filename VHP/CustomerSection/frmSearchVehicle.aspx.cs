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

public partial class CustomerSection_frmSearchVehicle : System.Web.UI.Page
{
    clsVehicle objVehcile = new clsVehicle(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DisplayVehicleId(); 
        }
    }
    public void DisplayVehicleId()
    {
        DataSet dsVehicle = objVehcile.GetVehicleId();
        DataListVechile.DataSource = dsVehicle.Tables[0];
        DataListVechile.DataBind(); 
        
    }

    protected void DataListVechile_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string vehicleId = e.CommandArgument.ToString();
        objVehcile.VehicleId = vehicleId;
        DataSet dsVehicle = objVehcile.GetVehicleDetails();
        DVVehicle.DataSource = dsVehicle.Tables[0];
        DVVehicle.DataBind();  
    }
}
