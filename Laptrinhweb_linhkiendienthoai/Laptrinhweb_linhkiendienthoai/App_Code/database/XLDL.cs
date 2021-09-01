using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Webbanhang.App_Code
{
    public class XLDL
    {
        public static string strcon = ConfigurationManager.ConnectionStrings["QL_linhKienDienThoaiConnectionString"].ConnectionString.ToString();
        public static DataTable GetData(string Lenhsql)
        {
            using (SqlConnection sqlcon = new SqlConnection(strcon)) 
            try
            {
                SqlDataAdapter sqlda = new SqlDataAdapter(Lenhsql, sqlcon);
                DataTable dt = new DataTable();
                sqlda.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static void Execute(string Lenhsql)
        {
            using (SqlConnection sqlcon = new SqlConnection(strcon))
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand(Lenhsql, sqlcon);
                sqlcmd.ExecuteNonQuery();
                sqlcon.Close();
            }
        }
        public static string GetValue(string Lenhsql)
        {
            using (SqlConnection sqlcon = new SqlConnection(strcon))
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand(Lenhsql, sqlcon);
                string value = sqlcmd.ExecuteScalar().ToString();
                sqlcon.Close();
                return (value);
            }
        }
      

    }
}