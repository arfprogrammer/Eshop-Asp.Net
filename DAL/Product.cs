using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Product
    {
        
        private sqlhelper sh = new sqlhelper();


        public void Insert(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[17];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@text_short", dm.Text_short);
            prms[2] = new SqlParameter("@price", dm.Price);
            prms[3] = new SqlParameter("@date_send", dm.Date_Send);
            prms[4] = new SqlParameter("@text_long", dm.Text_Long);
            prms[5] = new SqlParameter("@id_group", dm.Id_Group);
            prms[6] = new SqlParameter("@MetaDescription", dm.MetaDescription);
            prms[7] = new SqlParameter("@pic", dm.Pic);
            prms[8] = new SqlParameter("@demo", dm.Demo);
            prms[9] = new SqlParameter("@catalug", dm.Catalug);
            prms[10] = new SqlParameter("@post_price", dm.Post_Price);
            prms[11] = new SqlParameter("@id_admin", dm.Id_Admin);
            prms[12] = new SqlParameter("@row_view", dm.Row_View);
            prms[13] = new SqlParameter("@weight", dm.Weight);
            prms[14] = new SqlParameter("@id_state", dm.Id_State);
            prms[15] = new SqlParameter("@rate", dm.Rate);
            prms[16] = new SqlParameter("@MetaKeyword", dm.MetaKeyword);
            sh.ExecuteNonQuery("shop_product_insert", prms);
        }

        public void Update(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[16];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@text_short", dm.Text_short);
            prms[2] = new SqlParameter("@price", dm.Price);
            prms[3] = new SqlParameter("@text_long", dm.Text_Long);
            prms[4] = new SqlParameter("@id_group", dm.Id_Group);
            prms[5] = new SqlParameter("@id_product", dm.Id);
            prms[6] = new SqlParameter("@pic", dm.Pic);
            prms[7] = new SqlParameter("@demo", dm.Demo);
            prms[8] = new SqlParameter("@catalug", dm.Catalug);
            prms[9] = new SqlParameter("@post_price", dm.Post_Price);
            prms[10] = new SqlParameter("@id_admin", dm.Id_Admin);
            prms[11] = new SqlParameter("@weight", dm.Weight);
            prms[12] = new SqlParameter("@id_state", dm.Id_State);
            prms[13] = new SqlParameter("@rate", dm.Rate);
            prms[14] = new SqlParameter("@MetaKeyword", dm.MetaKeyword);
            prms[15] = new SqlParameter("@MetaDescription", dm.MetaDescription);

            sh.ExecuteNonQuery("shop_product_Update", prms);
        }
        public void Delete(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_product_delete", prms);
        }

        public DataTable Check_Row_View_Exist(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@row_view", dm.Row_View);
            return sh.ExecuteDataSet("shop_product_check_row_view", prms);
        }
        public void Update_Row_View(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id);
            prms[1] = new SqlParameter("@row_view", dm.Row_View);
            sh.ExecuteNonQuery("shop_product_update_row_view", prms);
        }
        public void Update_Number_View(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_product_update_number_view", prms);
        }

        public void Update_Number_Shop(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id);
            prms[1] = new SqlParameter("@number_shop", dm.Number_Shop);
            sh.ExecuteNonQuery("shop_product_update_number_shop", prms);
        }

        public DataTable Select_Product()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_product_select", prms);
        }
        public DataTable Select_ProductDataList()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_product_selectDataList", prms);
        }


        public DataTable SelectMaxRowview()
        {
            SqlParameter[] prms = new SqlParameter[0];

            return sh.ExecuteDataSet("shop_product_select_max_rowview", prms);
        }

        public DataTable Select_Product_One(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_product", dm.Id);
            return sh.ExecuteDataSet("shop_product_select_one", prms);
        }
        public DataTable select_product_max_view()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_product_select_max_view", prms);
        }
        public DataTable select_product_max_shop()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_product_select_max_shop", prms);
        }

        public DataTable Select_Product_Search(Common.ProductDatum dm,decimal price1 ,decimal price2)
        {
            SqlParameter[] prms = new SqlParameter[7];

            string search1 = dm.Title.Replace('ک', 'ك');
            search1 = search1.Replace('ی', 'ي');
            string search2 = dm.Title.Replace('ك', 'ک');
            search2 = search2.Replace('ي', 'ی');
            string search3 = dm.Title.Replace('ک', 'ك');
            search3 = search3.Replace('ي', 'ی');
            string search4 = dm.Title.Replace('ك', 'ک');
            search4 = search4.Replace('ی', 'ي');

            search1 = '%' + search1.Replace(" ", "% ") + '%';
            search2 = '%' + search2.Replace(" ", "% ") + '%';
            search3 = '%' + search3.Replace(" ", "% ") + '%';
            search4 = '%' + search4.Replace(" ", "% ") + '%';

            prms[0] = new SqlParameter("@Id_State", dm.Id_State);
            prms[1] = new SqlParameter("@price1", price1);
            prms[2] = new SqlParameter("@price2", price2);
            prms[3] = new SqlParameter("@search1", search1);
            prms[4] = new SqlParameter("@search2", search2);
            prms[5] = new SqlParameter("@search3", search3);
            prms[6] = new SqlParameter("@search4", search4);
            return sh.ExecuteDataSet("shop_product_select_search", prms);
        }



        public DataTable Select_Product_State(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Id_State", dm.Id_State);
            return sh.ExecuteDataSet("shop_product_select_State", prms);

        }
        public DataTable Select_Product_Group_Node(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Id_Group", dm.Id_Group);
            return sh.ExecuteDataSet("shop_product_select_Group_node", prms);

        }

        public DataTable Select_Product_Group_Node_SiteMap(Common.ProductDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Id_Group", dm.Id_Group);
            return sh.ExecuteDataSet("shop_product_select_Group_node_SiteMap", prms);

        }

    }
}
