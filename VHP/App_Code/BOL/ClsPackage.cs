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
/// Summary description for ClsPackage
/// </summary>
public class ClsPackage
{
    public ClsPackage()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    int _PackageId, _Price, _BookingStatus, _NoOfDays, _UserId;

    public int Price
    {
        get { return _Price; }
        set { _Price = value; }
    }

    public int PackageId
    {
        get { return _PackageId; }
        set { _PackageId = value; }
    }

    public int BookingStatus
    {
        get { return _BookingStatus; }
        set { _BookingStatus = value; }
    }

    public int NoOfDays
    {
        get { return _NoOfDays; }
        set { _NoOfDays = value; }
    }

    public int UserId
    {
        get { return _UserId; }
        set { _UserId = value; }
    }

    public string VehicleId
    {
        get { return _VehicleId; }
        set { _VehicleId = value; }
    }

    public string DateOfBook
    {
        get { return _DateOfBook; }
        set { _DateOfBook = value; }
    }

    public string Details
    {
        get { return _Details; ; }
        set { _Details = value; }
    }
    string _VehicleId, _DateOfBook, _Details;

    public DataSet GetPackageTours(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }
    public DataSet DiplayPackageId(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }

    public DataSet DiplayVehicleaId(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }

    public void BookPackage()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@PackageId", SqlDbType.Int);
        p[0].Value = _PackageId;

        p[1] = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p[1].Value = _VehicleId;



        p[2] = new SqlParameter("@UserId", SqlDbType.VarChar);
        p[2].Value = _UserId;

        p[3] = new SqlParameter("@DateOfBook", SqlDbType.VarChar);
        p[3].Value = _DateOfBook;





        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "BookPackage", p);

    }


    public void  DisplayPackage()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@PackageId", SqlDbType.Int);
        p[0].Value = _PackageId;
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "DiplayAvaliabePackage", p);
        DataRowCollection rec = ds.Tables[0].Rows;
        if (rec.Count > 0)
        {
            _Details = rec[0]["Details"].ToString();
            _NoOfDays = Convert.ToInt32(rec[0]["NoOfDays"]);
            _Price = Convert.ToInt32(rec[0]["Price"]);
        }
        

    }
    public DataSet GetPackageBookingId(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }
    

}






        









