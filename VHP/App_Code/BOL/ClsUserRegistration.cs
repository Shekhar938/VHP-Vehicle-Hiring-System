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
/// Summary description for ClsUserRegistration
/// </summary>
public class ClsUserRegistration
{
	public ClsUserRegistration()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    int _UserId;

    public int UserId
    {
        get { return _UserId; }
        set { _UserId = value; }
    }
    string _UserName, _Surname, _EmailId, _Address, _City, _State, _PassWord;

    public string City
    {
        get { return _City; }
        set { _City = value; }
    }
    public string State
    {
        get { return _State; }
        set { _State = value; }
    }
    public string PassWord
    {
        get { return _PassWord; }
        set { _PassWord = value; }
    }
   

    public string Address
    {
        get { return _Address; }
        set { _Address = value; }
    }

    public string EmailId
    {
        get { return _EmailId; }
        set { _EmailId = value; }
    }

    public string Surname
    {
        get { return _Surname; }
        set { _Surname = value; }
    }

    public string UserName
    {
        get { return _UserName; }
        set { _UserName = value; }
    }
    string  _MobileNo, _ZipCode;

    public string MobileNo
    {
        get { return _MobileNo; }
        set { _MobileNo = value; }
    }
    public string  ZipCode
    {
        get { return _ZipCode; }
        set { _ZipCode = value; }
    }

    public void InsertUserRegistration()
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@UserName", SqlDbType.VarChar);
        p[0].Value = _UserName;

        p[1] = new SqlParameter("@Surname", SqlDbType.VarChar);
        p[1].Value = _Surname ;

        p[2] = new SqlParameter("@EmailId", SqlDbType.VarChar);
        p[2].Value = _EmailId ;

        p[3] = new SqlParameter("@MobileNo", SqlDbType.VarChar);
        p[3].Value = _MobileNo ;

        p[4] = new SqlParameter("@Address", SqlDbType.VarChar);
        p[4].Value = _Address ;

        p[5] = new SqlParameter("@City", SqlDbType.VarChar);
        p[5].Value = _City ;

        p[6] = new SqlParameter("@State", SqlDbType.VarChar);
        p[6].Value = _State ;

        p[7] = new SqlParameter("@ZipCode", SqlDbType.VarChar);
        p[7].Value = _ZipCode;


        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "Insert_userRegistraion", p);
             



    }



}
