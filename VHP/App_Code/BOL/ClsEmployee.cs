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
/// Summary description for ClsEmployee
/// </summary>
public class ClsEmployee
{
	public ClsEmployee()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string _EmpName, _Surname, _Address, _City, _State, _JobDesc;

    public string JobDesc
    {
        get { return _JobDesc; }
        set { _JobDesc = value; }
    }

    public string State
    {
        get { return _State; }
        set { _State = value; }
    }

    public string City
    {
        get { return _City; }
        set { _City = value; }
    }

    public string Address
    {
        get { return _Address; }
        set { _Address = value; }
    }

    public string Surname
    {
        get { return _Surname; }
        set { _Surname = value; }
    }

    public string EmpName
    {
        get { return _EmpName; }
        set { _EmpName = value; }
    }
    int _EmpId, _WorkOnVehicle, _ZipCode;

    public int ZipCode
    {
        get { return _ZipCode; }
        set { _ZipCode = value; }
    }

    public int WorkOnVehicle
    {
        get { return _WorkOnVehicle; }
        set { _WorkOnVehicle = value; }
    }

    public int EmpId
    {
        get { return _EmpId; }
        set { _EmpId = value; }
    }
    float _Salary;

    public float Salary
    {
        get { return _Salary; }
        set { _Salary = value; }
    }
    public void InsertEmployee()
    {
        SqlParameter[] p = new SqlParameter[9];
       
        p[0] = new SqlParameter("@Ename", SqlDbType.VarChar );
        p[0].Value = _EmpName ;

        p[1] = new SqlParameter("@Surname", SqlDbType.VarChar );
        p[1].Value = _Surname;

        p[2] = new SqlParameter("@Address", SqlDbType.VarChar );
        p[2].Value = _Address;

        p[3] = new SqlParameter("@City", SqlDbType.VarChar);
        p[3].Value = _City ;

        p[4] = new SqlParameter("@State", SqlDbType.VarChar);
        p[4].Value = _State ;

        p[5] = new SqlParameter("@ZipCode", SqlDbType.Float);
        p[5].Value = _ZipCode ;

        p[6] = new SqlParameter("@WorkOnVehicle", SqlDbType.Int);
        p[6].Value = _WorkOnVehicle ;

        p[7] = new SqlParameter("@Salary", SqlDbType.Float);
        p[7].Value = _Salary;

        p[8]=new SqlParameter ("@JobDesc",SqlDbType.VarChar );
        p[8].Value = _JobDesc;

        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "Insert_Employee", p);



    }

    public DataSet DisplyEmployee(string Stat)
    {
        DataSet ds = SqlHelper.ExecuteDataset(ClsConnection.GetConnection(), CommandType.Text, Stat);
        return ds;
    }

    public void UpdateEmployee()
    {
        SqlParameter[] p = new SqlParameter[10];
        p[0] = new SqlParameter("@EmpId", SqlDbType.Int);
        p[0].Value = _EmpId;

        p[1] = new SqlParameter("@Ename", SqlDbType.VarChar);
        p[1].Value = _EmpName;

        p[2] = new SqlParameter("@Surname", SqlDbType.VarChar);
        p[2].Value = _Surname;

        p[3] = new SqlParameter("@Address", SqlDbType.VarChar);
        p[3].Value = _Address;

        p[4] = new SqlParameter("@City", SqlDbType.VarChar);
        p[4].Value = _City;

        p[5] = new SqlParameter("@State", SqlDbType.VarChar);
        p[5].Value = _State;

        p[6] = new SqlParameter("@ZipCode", SqlDbType.Float);
        p[6].Value = _ZipCode;

        p[7] = new SqlParameter("@WorkOnVehicle", SqlDbType.Int);
        p[7].Value = _WorkOnVehicle;

        p[8] = new SqlParameter("@Salary", SqlDbType.Float);
        p[8].Value = _Salary;

        p[9] = new SqlParameter("@JobDesc", SqlDbType.VarChar);
        p[9].Value = _JobDesc;

        

        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "Update_Employee", p);
    }

    public void DeleteEmployee()
    {
        SqlParameter p = new SqlParameter("@EmpId", SqlDbType.Int);
        p.Value = _EmpId;
        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "Delete_Employee", p);

    }

}
