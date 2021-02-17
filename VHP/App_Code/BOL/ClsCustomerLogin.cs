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
/// Summary description for ClsCustomerLogin
/// </summary>
public class ClsCustomerLogin
{
	public ClsCustomerLogin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    string _UserName, _PassWord, _HintQuestion, _Answer;

    public string PassWord
    {
        get { return _PassWord; }
        set { _PassWord = value; }
    }

    public string HintQuestion
    {
        get { return _HintQuestion; }
        set { _HintQuestion = value; }
    }
    public string Answer
    {
        get { return _Answer; }
        set { _Answer = value; }
    }

    public string UserName
    {
        get { return _UserName; }
        set { _UserName = value; }
    }

    public void InsertUserLogn()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@username", SqlDbType.VarChar);
        p[0].Value = _UserName;

        p[1] = new SqlParameter("@password", SqlDbType.VarChar);
        p[1].Value = _PassWord;


        p[2] = new SqlParameter("@HintQuestion", SqlDbType.VarChar);
        p[2].Value = _HintQuestion;


        p[3] = new SqlParameter("@Answer", SqlDbType.VarChar);
        p[3].Value = _Answer ;

        SqlHelper.ExecuteNonQuery(ClsConnection.GetConnection(), CommandType.StoredProcedure, "Insert_LoginUsers", p);

    }
    public bool ValiDateUser()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@username", SqlDbType.VarChar);
        p[0].Value = _UserName;

        p[1] = new SqlParameter("@password", SqlDbType.VarChar);
        p[1].Value = _PassWord;

        SqlDataReader dr;
        dr = SqlHelper.ExecuteReader(ClsConnection.GetConnection(), CommandType.StoredProcedure, "Validate_LoginUsers", p);
        dr.Read();
        if (dr.HasRows)
            return true;
        else
            return false;


    }

}
