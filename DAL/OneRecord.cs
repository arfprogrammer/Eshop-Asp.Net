using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class OneRecord
    {
        
        private sqlhelper sh = new sqlhelper();

        public void Update(Common.OneRecordDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[3];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@Text", dm.Text);
            prms[2] = new SqlParameter("@Type", dm.Type);
            sh.ExecuteNonQuery("shop_OneRecord_Update", prms);
        }


        public DataTable SelectOne(Common.OneRecordDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Type", dm.Type);
            return sh.ExecuteDataSet("shop_OneRecord_Select_One", prms);

        }
    }
}
