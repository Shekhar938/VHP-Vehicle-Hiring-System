using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using CompNetwork.DAL;

/// <summary>
/// Summary description for clsVehicle
/// </summary>
public class clsVehicle
{
	public clsVehicle()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string vehicleId;
    public string VehicleId
    {
        get { return vehicleId; }
        set { vehicleId = value; }
    }
    public DataSet GetVehicleDetails()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@VechicleId", VehicleId);
        p[0].SqlDbType = SqlDbType.VarChar;
        return SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure,"spDisplayVehicleById",p);    
    }
    public DataSet GetVehicleId()
    {
        string SqlStat = "Select vehicleId from tblVehicle";
        return SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, SqlStat);    
    }
}
