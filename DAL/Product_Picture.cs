using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Product_Picture
    {
        
        private sqlhelper sh = new sqlhelper();



        public DataTable select(Common.Product_PictureDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_product", dm.Id_Product);
            return sh.ExecuteDataSet("shop_product_picture_select", prms);
        }
        public void Delete(Common.Product_PictureDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_product_picture_delete", prms);
        }
        public void Insert(Common.Product_PictureDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[3];
            prms[0] = new SqlParameter("@pic", dm.Pic);
            prms[1] = new SqlParameter("@id_product", dm.Id_Product);
            prms[2] = new SqlParameter("@id_admin", dm.Id_Admin);
            sh.ExecuteNonQuery("shop_product_picture_insert", prms);
        }

    }
}
