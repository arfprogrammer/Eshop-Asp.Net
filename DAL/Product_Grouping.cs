using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Product_Grouping
    {
        
        private sqlhelper sh = new sqlhelper();


        public void InsertGroup(Common.Product_GroupingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[6];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@id_root", dm.Id_root);
            prms[2] = new SqlParameter("@rowview", dm.Rowview);
            prms[3] = new SqlParameter("@MetaKeyword", dm.MetaKeyword);
            prms[4] = new SqlParameter("@MetaDescription", dm.MetaDescription);
            prms[5] = new SqlParameter("@Path", dm.Path);

            sh.ExecuteNonQuery("shop_group_insert_node", prms);
        }
        public DataTable SelectAll(Common.Product_GroupingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            return sh.ExecuteDataSet("shop_group_select_node", prms);
        }

        public DataTable SelectOne(Common.Product_GroupingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            return sh.ExecuteDataSet("shop_group_select_One", prms);
        }
        public DataTable CheckRowviewExist(Common.Product_GroupingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id_root", dm.Id_root);
            prms[1] = new SqlParameter("@rowview", dm.Rowview);
            return sh.ExecuteDataSet("shop_group_chech_rowview", prms);
        }
        public DataTable SelectMaxRowview(Common.Product_GroupingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_root", dm.Id_root);
            return sh.ExecuteDataSet("shop_group_select_max_rowview", prms);
        }
        public DataTable Select_back_node(Common.Product_GroupingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            return sh.ExecuteDataSet("shop_group_select_back_node", prms);
        }

        public void Update(Common.Product_GroupingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[6];
            prms[0] = new SqlParameter("@title", dm.Title);
            prms[1] = new SqlParameter("@id", dm.Id);
            prms[2] = new SqlParameter("@rowview", dm.Rowview);
            prms[3] = new SqlParameter("@MetaKeyword", dm.MetaKeyword);
            prms[4] = new SqlParameter("@MetaDescription", dm.MetaDescription);
            prms[5] = new SqlParameter("@Path", dm.Path);
            sh.ExecuteNonQuery("shop_group_update_node", prms);
        }

        public void Delete(Common.Product_GroupingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_group_delete_node", prms);
        }

        public int GetProductCount(int GroupId)
        {
            int res = 0;
            Product prd = new Product();
            DataTable tg;
            System.Collections.Generic.List<int> gli = new System.Collections.Generic.List<int>();
            SqlParameter[] prms = new SqlParameter[0];
            tg = sh.ExecuteDataSet("shop_group_select_all", prms);

            gli.Add(GroupId);

            foreach (DataRow dr in tg.Rows)
            {
                if (dr["path"].ToString().Contains("," + GroupId.ToString()))
                {
                    gli.Add(int.Parse(dr["id"].ToString()));
                }
            }

            foreach (int gid in gli)
            {
                res += prd.Select_Product_Group_Node(new Common.ProductDatum() { Id_Group = gid }).Rows.Count ;
            }

            return res;
        }
    }
}
