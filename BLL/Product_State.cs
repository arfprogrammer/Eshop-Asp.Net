using System;
using System.Data;

namespace BLL
{
    public class Product_State
    {
        DAL.Product_State dl = new DAL.Product_State();

        public DataTable Select_All()
        {

            return dl.Select_All();
        }

        public void Insert(Common.Product_StateDatum dm)
        {
            dl.Insert( dm);
        }
        public void Delete(Common.Product_StateDatum dm)
        {
            dl.Delete( dm);
        }

        public DataTable CheckStateExist(Common.Product_StateDatum dm)
        {
            
            return dl.CheckStateExist(dm);
        }


        public void Update(Common.Product_StateDatum dm)
        {
           dl.Update( dm);
        }

        public DataTable SelectOne(Common.Product_StateDatum dm)
        {
            return dl.SelectOne(dm);

        }
    }
}
