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
/// Summary description for ClsAdmin
/// </summary>
public class ClsAdmin
{
	public ClsAdmin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    string _VehicleId, _Description, _Model, _Make;

    public string Make
    {
        get { return _Make; }
        set { _Make = value; }
    }

    public string Model
    {
        get { return _Model; }
        set { _Model = value; }
    }

    public string Description
    {
        get { return _Description; }
        set { _Description = value; }
    }

    public string VehicleId
    {
        get { return _VehicleId; }
        set { _VehicleId = value; }
    }
    int _VehicleType;

    public int VehicleType
    {
        get { return _VehicleType; }
        set { _VehicleType = value; }
    }
    float _RatePerDay;

    public float RatePerDay
    {
        get { return _RatePerDay; }
        set { _RatePerDay = value; }
    }

    public void AddVehicle()
    {
        SqlParameter[] p = new SqlParameter[6];
        p[0] = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p[0].Value = _VehicleId;


        p[1] = new SqlParameter("@Description", SqlDbType.VarChar);
        p[1].Value = _Description;

        p[2] = new SqlParameter("@Model", SqlDbType.VarChar);
        p[2].Value = _Model;

        p[3] = new SqlParameter("@Make", SqlDbType.VarChar);
        p[3].Value = _Make;

        p[4] = new SqlParameter("@vehicletype", SqlDbType.Int);
        p[4].Value = _VehicleType;

        p[5] = new SqlParameter("@RatePerDay", SqlDbType.Float);
        p[5].Value = _RatePerDay;
        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure , "Insert_vehicle", p);
        
        
    }

    public DataSet DisplayVehicles(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }
    public void UpdateVehicle()
    {
        SqlParameter[] p = new SqlParameter[6];
        p[0] = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p[0].Value = _VehicleId;


        p[1] = new SqlParameter("@Description", SqlDbType.VarChar);
        p[1].Value = _Description;

        p[2] = new SqlParameter("@Model", SqlDbType.VarChar);
        p[2].Value = _Model;

        p[3] = new SqlParameter("@Make", SqlDbType.VarChar);
        p[3].Value = _Make;

        p[4] = new SqlParameter("@vehicletype", SqlDbType.Int);
        p[4].Value = _VehicleType;

        p[5] = new SqlParameter("@RatePerDay", SqlDbType.Float);
        p[5].Value = _RatePerDay;
        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "update_vehicle", p);
        
    }

    public void DeleteVehicle()
    {
        SqlParameter p = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p.Value = _VehicleId;
        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "delete_vehicle", p);
    }

   
}
