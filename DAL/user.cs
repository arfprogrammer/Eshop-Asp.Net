using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class user
    {
        
        private sqlhelper sh = new sqlhelper();

        public decimal Insert(Common.userDatum dm,string RegDate)
        {
            var prms = new SqlParameter[]
            {
                 new SqlParameter("@name", dm.Name),
                 new SqlParameter("@family", dm.Family),
                 new SqlParameter("@email", dm.Email),
                 new SqlParameter("@pass", dm.Pass),
                 new SqlParameter("@mobile", dm.Mobile),
                 new SqlParameter("@tell", dm.Tell),
                 new SqlParameter("@company", dm.Company),
                 new SqlParameter("@address", dm.Address),
                 new SqlParameter("@country", dm.Country),
                 new SqlParameter("@province", dm.Province),
                 new SqlParameter("@city", dm.City),
                 new SqlParameter("@post_code", dm.Post_Code),
                 new SqlParameter("@recive_news", dm.Recive_News),
                 new SqlParameter("@how_find", dm.How_Find),
                // new SqlParameter("@date_register", RegDate)
            };
            

            return sh.ExecuteNonQueryIdentity("shop_user_insert", prms,"id_user");

          					
        }



        public DataTable Check_Login(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@email", dm.Email);
            prms[1] = new SqlParameter("@pass", dm.Pass);
            return sh.ExecuteDataSet("shop_user_check_login", prms);
        }

        public DataTable select_one_user(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            return sh.ExecuteDataSet("shop_user_select_one", prms);
        }



        public void Update_User(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[15];
            prms[0] = new SqlParameter("@name", dm.Name);
            prms[1] = new SqlParameter("@family", dm.Family);
            prms[2] = new SqlParameter("@how_find", dm.How_Find);
            prms[3] = new SqlParameter("@id", dm.Id);
            prms[4] = new SqlParameter("@mobile", dm.Mobile);
            prms[5] = new SqlParameter("@tell", dm.Tell);
            prms[6] = new SqlParameter("@company", dm.Company);
            prms[7] = new SqlParameter("@address", dm.Address);
            prms[8] = new SqlParameter("@country", dm.Country);
            prms[9] = new SqlParameter("@province", dm.Province);
            prms[10] = new SqlParameter("@city", dm.City);
            prms[11] = new SqlParameter("@post_code", dm.Post_Code);
            prms[12] = new SqlParameter("@recive_news", dm.Recive_News);
            prms[13] = new SqlParameter("@recive_news", dm.Email);
            prms[13] = new SqlParameter("@Email", dm.Email);
            prms[14] = new SqlParameter("@Pass", dm.Pass);

            sh.ExecuteNonQuery("shop_user_update", prms);
        }

        public void Update_User_Pass(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id);
            prms[1] = new SqlParameter("@pass", dm.Pass);

            sh.ExecuteNonQuery("shop_user_pass_update", prms);
        }

        public DataTable CheckUserExist(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@email", dm.Email);
            return sh.ExecuteDataSet("shop_user_check", prms);
        }

        public DataTable Check_Pass_User(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id);
            prms[1] = new SqlParameter("@pass", dm.Pass);

            return sh.ExecuteDataSet("shop_user_pass_check", prms);
        }
        public DataTable GetUserPass(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@email", dm.Email);

            return sh.ExecuteDataSet("shop_user_check", prms);
        }

        public DataTable Select_All(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[0];

            return sh.ExecuteDataSet("shop_user_Select_All", prms);
        }

        public void Delete(Common.userDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_user_Delete", prms);
        }

        /// <summary>
        /// return new today user
        /// </summary>
        /// <param name="today">today date</param>        
        public DataTable shop_user_select_new_today(string today)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@date_register ", today);

            return sh.ExecuteDataSet("shop_user_select_new_today", prms);
        }

    }
}
