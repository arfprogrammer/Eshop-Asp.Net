using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Product_Comment
    {
        
        private sqlhelper sh = new sqlhelper();

        public void Insert(Common.Product_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[7];
            prms[0] = new SqlParameter("@text", dm.Text);
            prms[1] = new SqlParameter("@Email", dm.Email);
            prms[2] = new SqlParameter("@show_comment", dm.Show_Comment);
            prms[3] = new SqlParameter("@id_product", dm.Id_Product);
            prms[4] = new SqlParameter("@NameUser", dm.NameUser);
            prms[5] = new SqlParameter("@Title", dm.Title);
            prms[6] = new SqlParameter("@Date_Send", dm.Date_Send);

            sh.ExecuteNonQuery("shop_product_comment_insert", prms);
        }
        public DataTable select_product_comment_show_true(Common.Product_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_product", dm.Id_Product);
            return sh.ExecuteDataSet("shop_product_comment_select_true_show", prms);
        }
        public DataTable select_product_comment_show_all(Common.Product_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_product", dm.Id_Product);
            return sh.ExecuteDataSet("shop_product_comment_select_all_show", prms);
        }
        public void Delete(Common.Product_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_product_comment_delete", prms);
        }
        public void Update_product_comment_show(Common.Product_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id);
            prms[1] = new SqlParameter("@show_comment", dm.Show_Comment);
            sh.ExecuteNonQuery("shop_product_comment_update_show", prms);
        }


        public DataTable select_all(Common.Product_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Id_Product", dm.Id_Product);
            return sh.ExecuteDataSet("shop_product_comment_select_Admin", prms);
        }


        /// <summary>
        /// return today comments
        /// </summary>        
        public DataTable select_today(string today)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@date_send", today);
            return sh.ExecuteDataSet("shop_product_comment_select_today", prms);
        }


    }
}
