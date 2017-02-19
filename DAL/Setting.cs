using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class Setting : sqlhelper
    {


        public DataTable SelectAll()
        {

            SqlParameter[] parameters = new SqlParameter[]
                {
 
                };
            return ExecuteDataSet("shop_setting_SelectAll", parameters);
        }

        public void Save(Common.Setting inf)
        {
            if (SelectAll().Rows.Count == 0)
            {
                Insert(inf);
            }
            else
            {
                Update(inf);
            }
        }


        private void Insert(Common.Setting inf)
        {

            SqlParameter[] parameters = new SqlParameter[]
				{
					new SqlParameter("help_shoping",inf.help_shoping),
					new SqlParameter("webgozar",inf.webgozar),
					new SqlParameter("google_search",inf.google_search) 
				};
            ExecuteNonQuery("shop_setting_Insert", parameters);

        }


        private void Update(Common.Setting inf)
        {

            SqlParameter[] parameters = new SqlParameter[]
				{					
					new SqlParameter("help_shoping",inf.help_shoping),
					new SqlParameter("webgozar",inf.webgozar),
					new SqlParameter("google_search",inf.google_search) 
				};
            ExecuteNonQuery("shop_setting_Update", parameters);

        }

    }
}
