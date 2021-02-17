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
/// Summary description for UserBookings
/// </summary>
public class ClsUserBookings
{
	public ClsUserBookings()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    string _VehicleId, _Description, _Model, _Make, _DateOfBooked, _AmountPaid;

    public string Description
    {
        get { return _Description; }
        set { _Description = value; }
    }

    public string AmountPaid
    {
        get { return _AmountPaid ; }
        set { _AmountPaid  = value; }
    }


    public string DateOfBooked
    {
        get { return _DateOfBooked ; }
        set { _DateOfBooked  = value; }
    }


    public string VehicleId
    {
        get { return _VehicleId; }
        set { _VehicleId = value; }
    }

    public string Model
    {
        get { return _Model ; }
        set { _Model  = value; }
    }

    public string Make
    {
        get { return _Make ; }
        set { _Make  = value; }
    }

    public int VehicleType
    {
        get { return _VehicleType; }
        set { _VehicleType = value; }
    }

    public int UserId
    {
        get { return _UserId ; }
        set { _UserId  = value; }
    }

    public int BookingStatus
    {
        get { return _BookingStatus ; }
        set { _BookingStatus  = value; }
    }

    public int TimeOfPeriod
    {
        get { return _TimeOfPeriod ; }
        set { _TimeOfPeriod  = value; }
    }

    public int BookingId
    {
        get { return _BookingId; }
        set { _BookingId = value; }
    }

    public float RatePerDay
    {
        get { return _RatePerDay ; }
        set { _RatePerDay  = value; }
    }

    public float BookingAmount
    {
        get { return _BookingAmount ; }
        set { _BookingAmount  = value; }
    }

    int _VehicleType, _BookingStatus, _UserId, _TimeOfPeriod, _BookingId;
    float _RatePerDay, _BookingAmount;


    public DataSet DiplayVehicleaId(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }

    public void DisplyVehicleInfo()
    {
        SqlParameter p = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p.Value = _VehicleId;
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "DisplayVehicleAvaliability", p);
        DataRowCollection rec = ds.Tables[0].Rows;
        if (rec.Count > 0)
        {
            _Description = rec[0]["Description"].ToString();
            _Model = rec[0]["Model"].ToString();
            _Make = rec[0]["Make"].ToString();
            _VehicleType = Convert.ToInt32(rec[0]["VehicleType"]);
            _RatePerDay = Convert.ToInt32(rec[0]["RatePerDay"]);
            //_BookingStatus = Convert.ToInt32(rec[0]["BookingStatus"]);

        }
        
    }

    public void AcceptBooking()
    {
        SqlParameter[] p = new SqlParameter[6];
        p[0] = new SqlParameter("@DateBooked", SqlDbType.VarChar);
        p[0].Value = _DateOfBooked;

        p[1] = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p[1].Value = _VehicleId;

        p[2]=new SqlParameter ("@TimePeriod",SqlDbType.Int );
        p[2].Value =_TimeOfPeriod ;

       
        p[3] = new SqlParameter("@AmountPaid", SqlDbType.VarChar);
        p[3].Value = _AmountPaid;

        p[4] = new SqlParameter("@BookingStatus", SqlDbType.Int);
        p[4].Value = _BookingStatus;

        p[5] = new SqlParameter("@UserId", SqlDbType.Int);
        p[5].Value = _UserId;


        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "AddBookingInfo", p);

            }

    public DataSet   ShowBookingConform()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@BookingId", SqlDbType.Int);
        p[0].Value = _BookingId;

        DataSet ds = SqlHelper.ExecuteDataset (ClsConnection.GetConnection(), CommandType.StoredProcedure, "ShowBookingConform", p);
        
        return ds;

    }

    public DataSet  GetBookingId(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }


    public DataSet GetBookingAmount(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }

    public DataSet AvaliableVehicleById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p[0].Value = _VehicleId;



        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "AvaliableVehicleById", p);
        return ds;
    }
    public DataSet   AvaliableVehicleByDate()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@DateOfBooked", SqlDbType.VarChar);
        p[0].Value = _DateOfBooked ;
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "AvaliableVehicleByDate", p);
        return ds;


    }

    public int CancelBooking()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@BookingId", SqlDbType.Int);
        p[0].Value = _BookingId;

        p[1] = new SqlParameter("@DateOfBooked", SqlDbType.VarChar);
        p[1].Value = _DateOfBooked;

        p[2] = new SqlParameter("@str", SqlDbType.Int);
        p[2].Direction = ParameterDirection.Output;
      
        SqlHelper.ExecuteScalar(ClsConnection.GetConnection(), CommandType.StoredProcedure, "CancelBooking", p);
        //SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "CancelBooking", p);
        return (int)p[2].Value;

    }
    public DataSet DisplayCancelBooking()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@BookingId", SqlDbType.Int);
        p[0].Value = _BookingId;
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "DisplayCancelBooking", p);
        return ds;
    }

    public DataSet MupleSearchDisplay()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@VehicleId", SqlDbType.VarChar);
        p[0].Value = _VehicleId;

        p[1] = new SqlParameter("@DateOfBooked", SqlDbType.VarChar);
        p[1].Value = _DateOfBooked;

        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.StoredProcedure, "SpMultipleSearch", p);
        return ds;

    }
    public DataSet   DiplayUserId(string stat)
    {
      DataSet  ds=SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
      return ds;
    }

    public DataSet DisplayBookingInfo(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }

    public bool  CheckAvalibility(string stat)
    {
        SqlDataReader dr = SqlHelper.ExecuteReader(ClsConnection.GetConnection(), CommandType.Text, stat);
        dr.Read();
        if (dr.HasRows)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public void UpdateBookingInfo(string stat)
    {
        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.Text, stat);
    }

    public DataSet GetUserId(string stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, stat);
        return ds;
    }

    



}


