using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Page_Manage
    {
        
        private sqlhelper sh = new sqlhelper();



        public void Insert(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[9];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@text", dm.Text);
            prms[2] = new SqlParameter("@date_send", dm.Date_Send);
            prms[3] = new SqlParameter("@id_admin", dm.Id_Admin);
            prms[4] = new SqlParameter("@show_page", dm.Show_Page);
            prms[5] = new SqlParameter("@row_view", dm.Row_View);
            prms[6] = new SqlParameter("@MetaKeyword", dm.MetaKeyword);
            prms[7] = new SqlParameter("@MetaDescription", dm.MetaDescription);
            prms[8] = new SqlParameter("@Place", dm.Place);
            sh.ExecuteNonQuery("shop_page_insert", prms);
        }

        public DataTable Select(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Place", dm.Place);
            return sh.ExecuteDataSet("shop_page_select", prms);
        }
        public void Delete(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_page_delete", prms);
        }

        public DataTable Select_page_One(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_page", dm.Id);
            return sh.ExecuteDataSet("shop_page_select_one", prms);
        }

        public void Update(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[8];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@text", dm.Text);
            prms[2] = new SqlParameter("@id", dm.Id);
            prms[3] = new SqlParameter("@id_admin", dm.Id_Admin);
            prms[4] = new SqlParameter("@show_page", dm.Show_Page);
            prms[5] = new SqlParameter("@MetaKeyword", dm.MetaKeyword);
            prms[6] = new SqlParameter("@MetaDescription", dm.MetaDescription);
            prms[7] = new SqlParameter("@Place", dm.Place);
            sh.ExecuteNonQuery("shop_page_Update", prms);
        }

        public void Update_Row_View(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id);
            prms[1] = new SqlParameter("@row_view", dm.Row_View);
            sh.ExecuteNonQuery("shop_page_update_row_view", prms);
        }
        public DataTable Check_Row_View_Exist(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@row_view", dm.Row_View);
            return sh.ExecuteDataSet("shop_page_check_row_view", prms);
        }
        public DataTable SelectMaxRowview(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Place", dm.Place);
            return sh.ExecuteDataSet("shop_page_select_max_rowview", prms);
        }


        public DataTable Select_User(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Place", dm.Place);
            return sh.ExecuteDataSet("shop_page_select_user", prms);
        }
        public DataTable Select_User_Top(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Place", dm.Place);
            return sh.ExecuteDataSet("shop_page_select_user_Top", prms);
        }
        public void Update_Page_View(Common.Page_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_page_update_page_view", prms);

        }
    }
}
