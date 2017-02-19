using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Product_State
    {
        
        private sqlhelper sh = new sqlhelper();

        public DataTable Select_All()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_product_state_select", prms);
        }

        public void Insert(Common.Product_StateDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@title", dm.Title);
            sh.ExecuteNonQuery("shop_product_state_insert", prms);
        }
        public void Delete(Common.Product_StateDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_product_state_delete", prms);
        }

        public DataTable CheckStateExist(Common.Product_StateDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@title", dm.Title);
            return sh.ExecuteDataSet("shop_product_state_check", prms);
        }


        public void Update(Common.Product_StateDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@id_state", dm.Id);
            sh.ExecuteNonQuery("shop_product_state_update", prms);
        }

        public DataTable SelectOne(Common.Product_StateDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Id", dm.Id);
            return sh.ExecuteDataSet("shop_product_state_Select_One", prms);
        }
    }
}
