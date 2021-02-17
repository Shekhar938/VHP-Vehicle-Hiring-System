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
/// Summary description for ClsBookings
/// </summary>
public class ClsAdminBookings
{
	public ClsAdminBookings()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    int _BookingId, _UserId, _TimeOfPeriod, _BookingStatus;
 string  _AmountPaid;

    public string  AmountPaid
    {
        get { return _AmountPaid; }
        set { _AmountPaid = value; }
    }

    public int BookingStatus
    {
        get { return _BookingStatus; }
        set { _BookingStatus = value; }
    }

    public int TimeOfPeriod
    {
        get { return _TimeOfPeriod; }
        set { _TimeOfPeriod = value; }
    }

    public int UserId
    {
        get { return _UserId; }
        set { _UserId = value; }
    }

    public int BookingId
    {
        get { return _BookingId; }
        set { _BookingId = value; }
    }
    string _DateOfBooked, _VehicleId;

    public string VehicleId
    {
        get { return _VehicleId; }
        set { _VehicleId = value; }
    }

    public string DateOfBooked
    {
        get { return _DateOfBooked; }
        set { _DateOfBooked = value; }
    }
    float _BookingAmount;

    public float BookingAmount
    {
        get { return _BookingAmount; }
        set { _BookingAmount = value; }
    }
    public int ShowBookingInfo()
    {
        SqlParameter p = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p.Value = _VehicleId;
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "DisplayBooking", p);
        DataRowCollection rec = ds.Tables[0].Rows;
        if (rec.Count > 0)
        {
            _BookingId = Convert.ToInt16(rec[0]["BookingId"]);
            _DateOfBooked = rec[0]["DateOfBooked"].ToString();
            _VehicleId = rec[0]["VehicleId"].ToString();
            _UserId = Convert.ToInt16(rec[0]["UserId"]);
            _TimeOfPeriod = Convert.ToInt16(rec[0]["TimePeriod"]);
            _BookingAmount = Convert.ToInt32(rec[0]["BookingAmount"]);
            _AmountPaid = rec[0]["AmountPaid"].ToString();
            _BookingStatus = Convert.ToInt16(rec[0]["BookingStatus"]);
            return 1;

        }
        else
            return 0;
        

    }
    public DataSet DiplayVehicleaId(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text , stat);
        return ds;
    }

    public DataSet DisplayBookingPackgeInfo(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }

    public DataSet DisplayCancelBookings()
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "AdminBookingCancelDiplay");
        return ds;
    }
    public DataSet DisplayCanelSorting(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text ,stat);
        return ds;
    }
    public DataSet DisplayConformBookings()
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "AdminBookingConformDiplay");
        return ds;
    }
    public int DisplayTotalAmount(string stat)
    {
        int i = 0;
        i = Convert.ToInt32 (SqlHelper.ExecuteScalar(ClsConnection.GetConnection(), CommandType.Text, stat));
        return i;
    }
}
