using System;
using System.Data;
using System.Data.SqlClient;


namespace DAL
{
    public class sqlhelper
    {
        String connectionstring = "";

        SqlConnection con = new SqlConnection();

        public sqlhelper()
        {
       //    connectionstring = "Data Source=saeed-pc\\ssss;Initial Catalog=shop_mmgsoft;User ID=sa;Password=1234";

      //      connectionstring = "Data Source=mssql.pars-soft.ir;Initial Catalog=ShopDatabase;User ID=user_pars;Password=userpars1234";

     //     connectionstring = "Data Source=mmg-softcompany;Initial Catalog=mmg;User ID=sa;Password=1234";
        //   connectionstring = "Data Source=dev-pc;Initial Catalog=mmg;User ID=sa;Password=1234";

            connectionstring = "Data Source=sql3.mmg-soft.com;Initial Catalog=mmg;User ID=mmg_soft;Password=bestmmgsoft;";
            //connectionstring = "Data Source=mssql.sendsms-soft.com;Initial Catalog=mmg;User ID=mmg_soft;Password=bestmmgsoft";
///            connectionstring = "Data Source=sql3.30eb.com;Initial Catalog=shop_mmgsoft;User ID=shop_30eb;Password=best30eb";


            con.ConnectionString = connectionstring;
        }

        public DataTable ExecuteDataSet(String sql, SqlParameter[] params1)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            int length = params1.Length;
            for (int i = 0; i < length; i++)
            {
                da.SelectCommand.Parameters.Add(params1[i]);
            }
            da.Fill(dt);
            return dt;
        }

        public void ExecuteNonQuery(String sql, SqlParameter[] params1)
        {
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.StoredProcedure;
            int length = params1.Length;
            for (int i = 0; i < length; i++)
            {
                cmd.Parameters.Add(params1[i]);
            }
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public decimal ExecuteNonQueryIdentity(String sql, SqlParameter[] params1,string FieldIDentity)
        {
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.StoredProcedure;
            int length = params1.Length;
            for (int i = 0; i < length; i++)
            {
                cmd.Parameters.Add(params1[i]);
            }
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            decimal identity = decimal.Parse(dr[FieldIDentity].ToString());
            dr.Close();
            con.Close();
            return identity;
        }


    }

}