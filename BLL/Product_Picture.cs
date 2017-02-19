using System;
using System.Data;

namespace BLL
{
    public class Product_Picture
    {
        DAL.Product_Picture dl = new DAL.Product_Picture();

        public DataTable select(Common.Product_PictureDatum dm)
        {

            return dl.select( dm);
        }
        public void Delete(Common.Product_PictureDatum dm)
        {
           dl.Delete(dm);
        }
        public void Insert(Common.Product_PictureDatum dm)
        {
           dl.Insert(dm);
        }
    }
}
