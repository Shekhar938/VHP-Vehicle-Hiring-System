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
/// Summary description for ClsLogin
/// </summary>
public class ClsLogin
{
	public ClsLogin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    string _UserName, _PassWord;

    public string PassWord
    {
        get { return _PassWord; }
        set { _PassWord = value; }
    }

    public string UserName
    {
        get { return _UserName; }
        set { _UserName = value; }
    }
    public void InserUser()
    {
        SqlParameter []p=new SqlParameter [2];
        p[0] = new SqlParameter("@username", SqlDbType.VarChar);
        p[0].Value = _UserName;

        p[1] = new SqlParameter("@password", SqlDbType.VarChar);
        p[1].Value = _PassWord;

        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "Insert_EmpUsers", p);

    }
    public bool ValiDateUser()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@username", SqlDbType.VarChar);
        p[0].Value = _UserName;

        p[1] = new SqlParameter("@password", SqlDbType.VarChar);
        p[1].Value = _PassWord;

        SqlDataReader dr;        
        dr= SqlHelper.ExecuteReader(ClsConnection.GetConnection(), CommandType.StoredProcedure, "Validate_EmpUsers", p);
        dr.Read();
        if (dr.HasRows)
            return true;
        else
            return false;


    }
}
