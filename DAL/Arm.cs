using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Arm
    {
        
        private sqlhelper sh = new sqlhelper();

        public DataTable Select_All()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_arm_select", prms);
        }

        public void Insert(Common.ArmDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[3];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@Link", dm.Link);
            prms[2] = new SqlParameter("@Pic", dm.Pic);
            sh.ExecuteNonQuery("shop_arm_insert", prms);
        }
        public void Delete(Common.ArmDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_arm_delete", prms);
        }


        public void Update(Common.ArmDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[4];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@Link", dm.Link);
            prms[2] = new SqlParameter("@Pic", dm.Pic);
            prms[3] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_arm_update", prms);
        }

        public DataTable SelectOne(Common.ArmDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Id", dm.Id);
            return sh.ExecuteDataSet("shop_arm_Select_One", prms);

        }

        public DataTable Select_All_User()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_arm_select_user", prms);

        }
    }
}
