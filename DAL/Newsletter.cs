using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Newsletter : sqlhelper
    {

        public DataTable SelectAll()
        {

            SqlParameter[] parameters = new SqlParameter[]
                {
 
                };
            return ExecuteDataSet("shop_newsletter_SelectAll", parameters);
        }

        public DataTable SelectByEmail(string email)
        {
            SqlParameter[] prm = new SqlParameter[]
            {
                 new SqlParameter("Email",email)
            };

            return ExecuteDataSet("shop_newsletter_SelectbyEmail", prm);
        }

        public int  Insert(string Email)
        {

            try
            {
                SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("Email",Email) 
				};
                ExecuteNonQuery("shop_newsletter_Insert", parameters);

                return 1;
            }
            catch 
            {

                return 0;
            }            
        }

    }
}

