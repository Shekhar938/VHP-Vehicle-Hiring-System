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
/// Summary description for clsReports
/// </summary>
public class clsReports
{
	public clsReports()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet DisplayBookingReport()
    {
        return SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "spDisplayBookingInfo", null);  
    }
    public DataSet DisplayUserReport()
    {
        string SqlStat = "select * from tblUserRegistration";
        return SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, SqlStat);
    }
    public DataSet DisplayVehicleReport()
    {
        string SqlStat = "select * from tblVehicle";
        return SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, SqlStat);
    }
}
