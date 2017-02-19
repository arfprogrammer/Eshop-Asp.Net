using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Support_Comment
    {
        
        private sqlhelper sh = new sqlhelper();

        public DataTable Select(Common.Support_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@SendType", dm.SendType);
            prms[1] = new SqlParameter("@ID_User", dm.ID_User);
            return sh.ExecuteDataSet("shop_Support_Comment_Select", prms);
        }

        public void Insert(Common.Support_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[5];
            prms[0] = new SqlParameter("@Title", dm.Title);
            prms[1] = new SqlParameter("@Text", dm.Text);
            prms[2] = new SqlParameter("@SendType", dm.SendType);
            prms[3] = new SqlParameter("@ID_User", dm.ID_User);
            prms[4] = new SqlParameter("@Date_send", dm.Date_send);
            sh.ExecuteNonQuery("shop_Support_Comment_insert", prms);
        }
        public void Delete(Common.Support_CommentDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id);
            sh.ExecuteNonQuery("shop_Support_Comment_delete", prms);
        }


        

    }
}
