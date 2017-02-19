using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Admin
    {
        
        private sqlhelper sh = new sqlhelper();

        public void Insert(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[3];
            prms[0] = new SqlParameter("@name", dm.Name);
            prms[1] = new SqlParameter("@password", dm.Password);
            prms[2] = new SqlParameter("@userName", dm.UserName);
            sh.ExecuteNonQuery("shop_admin_insert", prms);
        }

        public DataTable CheckUserExist(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@username", dm.UserName);
            return sh.ExecuteDataSet("shop_admin_user_check", prms);
        }
        public DataTable CheckLogin(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@username", dm.UserName);
            prms[1] = new SqlParameter("@Password", dm.Password);
            return sh.ExecuteDataSet("shop_admin_Check_Login", prms);
        }

        public void Update(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[4];
            prms[0] = new SqlParameter("@id", dm.Id_admin);
            prms[1] = new SqlParameter("@name", dm.Name);
            prms[2] = new SqlParameter("@password", dm.Password);
            prms[3] = new SqlParameter("@userName", dm.UserName);
            sh.ExecuteNonQuery("shop_admin_update", prms);
        }

        public void Delete(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id_admin);
            sh.ExecuteNonQuery("shop_admin_delete", prms);
        }

        public void InsertSecurity(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id_admin", dm.Id_admin);
            prms[1] = new SqlParameter("@security", dm.Security);
            sh.ExecuteNonQuery("shop_admin_security_insert", prms);
        }



        public void DeletSecurity(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_admin", dm.Id_admin);
            sh.ExecuteNonQuery("shop_admin_security_delete", prms);
        }

        public DataTable SelectSecurity(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_admin", dm.Id_admin);
            return sh.ExecuteDataSet("shop_admin_security_select", prms);
        }

        public DataTable SelectAllAdmin()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_admin_select_all", prms);
        }


        public DataTable Select_page_One(Common.AdminDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_admin", dm.Id_admin);
            return sh.ExecuteDataSet("shop_admin_select_one", prms);
        }

        public DataTable CheckSecurity(string NameSecurity, decimal ID_Admin)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id_admin", ID_Admin);
            prms[1] = new SqlParameter("@security", NameSecurity);
            return sh.ExecuteDataSet("shop_admin_Security_Check", prms);
        }
    }
}
