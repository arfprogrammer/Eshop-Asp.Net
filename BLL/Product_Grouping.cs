using System;
using System.Data;

namespace BLL
{
    public class Product_Grouping
    {
        DAL.Product_Grouping dl = new DAL.Product_Grouping();

        public void InsertGroup(Common.Product_GroupingDatum dm)
        {
            dl.InsertGroup(dm);
        }
        public DataTable SelectAll(Common.Product_GroupingDatum dm)
        {
            
            return dl.SelectAll(dm);
        }

        public DataTable SelectOne(Common.Product_GroupingDatum dm)
        {
           
            return dl.SelectOne(dm);
        }
        public DataTable CheckRowviewExist(Common.Product_GroupingDatum dm)
        {
           
            return dl.CheckRowviewExist(dm);
        }
        public decimal SelectMaxRowview(Common.Product_GroupingDatum dm)
        {
            DataTable dt= dl.SelectMaxRowview(dm);
            if (dt.Rows.Count > 0)
            {
                return decimal.Parse(dt.Rows[0][0].ToString()) + 1;
            }
            else
            {
                return 1;
            }
        }
        public DataTable Select_back_node(Common.Product_GroupingDatum dm)
        {
          
            return dl.Select_back_node(dm);
        }

        public void Update(Common.Product_GroupingDatum dm)
        {
          dl.Update(dm);
        }

        public void Delete(Common.Product_GroupingDatum dm)
        {
           dl.Delete( dm);
        }


        public int GetProductCout(int gid)
        {
            return new DAL.Product_Grouping().GetProductCount(gid);
        }

    }
}
