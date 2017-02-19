using System;
using System.Data;

namespace BLL
{
    public class Product_Comment
    {
        DAL.Product_Comment dl = new DAL.Product_Comment();

        public void Insert(Common.Product_CommentDatum dm)
        {
            dl.Insert( dm);
        }
        public DataTable select_product_comment_show_true(Common.Product_CommentDatum dm)
        {
           
            return dl.select_product_comment_show_true(dm);
        }
        public DataTable select_product_comment_show_all(Common.Product_CommentDatum dm)
        {
            
            return dl.select_product_comment_show_all( dm);
        }
        public void Delete(Common.Product_CommentDatum dm)
        {
            dl.Delete( dm);
        }
        public void Update_product_comment_show(Common.Product_CommentDatum dm)
        {
           dl.Update_product_comment_show( dm);
        }


        public DataTable select_all(Common.Product_CommentDatum dm)
        {

            return dl.select_all(dm);
        }

        /// <summary>
        /// return today commects
        /// </summary>        
        public DataTable select_today()
        {
            return dl.select_today(new PublicClass().GetDate());
        }
    }
}
