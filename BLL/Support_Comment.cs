using System;
using System.Data;

namespace BLL
{
    public class Support_Comment
    {
        DAL.Support_Comment dl = new DAL.Support_Comment();

        public void Insert(Common.Support_CommentDatum dm)
        {
            dl.Insert(dm);
        }
        public DataTable Select(Common.Support_CommentDatum dm)
        {
            return dl.Select(dm);
        }

        public void Delete(Common.Support_CommentDatum dm)
        {
            dl.Delete(dm);

        }

    
    }
}
