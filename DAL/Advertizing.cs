using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Advertizing
    {
        
        private sqlhelper sh = new sqlhelper();



        public void Insert(Common.AdvertizingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[6];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@text", dm.Text);
            prms[2] = new SqlParameter("@date_send", dm.Date_Send);
            prms[3] = new SqlParameter("@id_admin", dm.Id_Admin);
            prms[4] = new SqlParameter("@show_page", dm.Show_Page);
            prms[5] = new SqlParameter("@row_view", dm.Row_View);
            sh.ExecuteNonQuery("shop_advertizing_insert", prms);
        }

        public DataTable SelectMaxRowview()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_advertizing_select_max_rowview", prms);
        }

        public DataTable Select()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_advertizing_select", prms);
        }
        public void Delete(Common.AdvertizingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_advertizing_delete", prms);
        }

        public void Update_Row_View(Common.AdvertizingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id);
            prms[1] = new SqlParameter("@row_view", dm.Row_View);
            sh.ExecuteNonQuery("shop_advertizing_update_row_view", prms);
        }
        public DataTable Check_Row_View_Exist(Common.AdvertizingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@row_view", dm.Row_View);
            return sh.ExecuteDataSet("shop_advertizing_check_row_view", prms);
        }

        public void Update(Common.AdvertizingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[5];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@text", dm.Text);
            prms[2] = new SqlParameter("@id", dm.Id);

            prms[3] = new SqlParameter("@id_admin", dm.Id_Admin);
            prms[4] = new SqlParameter("@show_page", dm.Show_Page);
            sh.ExecuteNonQuery("shop_advertizing_Update", prms);
        }
        public DataTable Select_page_One(Common.AdvertizingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_page", dm.Id);
            return sh.ExecuteDataSet("shop_advertizing_select_one", prms);
        }
        public DataTable Select_Advertizing_Number(Common.AdvertizingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@row_view", dm.Row_View);
            return sh.ExecuteDataSet("shop_advertizing_select_row_view", prms);
        }
        public DataTable advertizing_show_check(Common.AdvertizingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@row_view", dm.Row_View);
            return sh.ExecuteDataSet("shop_advertizing_check_show_page", prms);
        }


    }
}
