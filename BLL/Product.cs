using System;
using System.Data;

namespace BLL
{
    public class Product
    {
        DAL.Product dl = new DAL.Product();

        public void Insert(Common.ProductDatum dm)
        {
           dl.Insert(dm);
        }

        public void Update(Common.ProductDatum dm)
        {
           dl.Update(dm);
        }
        public void Delete(Common.ProductDatum dm)
        {
            dl.Delete(dm);
        }

        public bool Check_Row_View_Exist(Common.ProductDatum dm)
        {
            if (dl.Check_Row_View_Exist(dm).Rows.Count > 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public void Update_Row_View(Common.ProductDatum dm)
        {
            dl.Update_Row_View(dm);
        }
        public void Update_Number_View(Common.ProductDatum dm)
        {
            dl.Update_Number_View(dm);
        }

        public void Update_Number_Shop(Common.ProductDatum dm)
        {
           dl.Update_Number_Shop(dm);
        }

        public DataTable Select_Product(Common.ProductDatum dm)
        {
            DataTable dt = dl.Select_Product();
            bool row = false;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                row = false;
                string delimitedInfo = dt.Rows[i]["Path"].ToString();
                string[] discreteInfo = delimitedInfo.Split(new char[] { ',' });
                foreach (string Data in discreteInfo)
                {
                    if (Data == dm.Id_Group.ToString() || dt.Rows[i]["id_group"].ToString() == dm.Id_Group.ToString())
                    {
                        row = true;
                    }
                    else
                    {

                    }
                }
                if (!row)
                {             
                    dt.Rows.RemoveAt(i);
                    i--;
                }
            }
            
            return dt;
        }

        public DataTable Select_ProductDataList(Common.ProductDatum dm)
        {
            DataTable dt = dl.Select_ProductDataList();
            bool row = false;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                row = false;
                string delimitedInfo = dt.Rows[i]["Path"].ToString();
                string[] discreteInfo = delimitedInfo.Split(new char[] { ',' });
                foreach (string Data in discreteInfo)
                {
                    if (Data == dm.Id_Group.ToString() || dt.Rows[i]["id_group"].ToString() == dm.Id_Group.ToString())
                    {
                        row = true;
                    }
                    else
                    {

                    }
                }
                if (!row)
                {
                    dt.Rows.RemoveAt(i);
                    i--;
                }
            }

            return dt;
        }


        public decimal SelectMaxRowview()
        {
            DataTable dt = dl.SelectMaxRowview();
            if (dt.Rows.Count > 0)
            {
                return decimal.Parse(dt.Rows[0][0].ToString()) + 1;
            }
            else
            {
                return 1;
            }            
        }

        public DataTable Select_Product_One(Common.ProductDatum dm)
        {
          
            return dl.Select_Product_One( dm);
        }
        public DataTable select_product_max_view()
        {

            return dl.select_product_max_view();
        }
        public DataTable select_product_max_shop()
        {

            return dl.select_product_max_shop();
        }

        public DataTable Select_Product_Search(Common.ProductDatum dm, decimal price1, decimal price2)
        {
            return dl.Select_Product_Search(dm, price1, price2);
        }

        public DataTable Select_Product_State(Common.ProductDatum dm)
        {
            return dl.Select_Product_State(dm);

        }
        public DataTable Select_Product_Group_Node(Common.ProductDatum dm)
        {

            return dl.Select_Product_Group_Node(dm);

        }
        public DataTable Select_Product_Group_Node_SiteMap(Common.ProductDatum dm)
        {

            return dl.Select_Product_Group_Node_SiteMap(dm);

        }
    }
}
