using System;
using System.Data;

namespace BLL
{
    public class Page_Manage
    {
        DAL.Page_Manage dl = new DAL.Page_Manage();

        public void Insert(Common.Page_ManageDatum dm)
        {
           dl.Insert(dm);
        }

        public DataTable Select(Common.Page_ManageDatum dm)
        {

            return dl.Select(dm);
        }
        public void Delete(Common.Page_ManageDatum dm)
        {
            dl.Delete( dm);
        }

        public DataTable Select_page_One(Common.Page_ManageDatum dm)
        {
           
            return dl.Select_page_One(dm);
        }

        public void Update(Common.Page_ManageDatum dm)
        {
            dl.Update(dm);
        }

        public void Update_Row_View(Common.Page_ManageDatum dm)
        {
            dl.Update_Row_View(dm);
        }
        public bool Check_Row_View_Exist(Common.Page_ManageDatum dm)
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
        public decimal SelectMaxRowview(Common.Page_ManageDatum dm)
        {
            DataTable dt = dl.SelectMaxRowview(dm);
            if (dt.Rows.Count > 0)
            {
                return decimal.Parse(dt.Rows[0][0].ToString()) + 1;
            }
            else
            {
                return 1;
            }
        }

        public DataTable Select_User(Common.Page_ManageDatum dm)
        {
            return dl.Select_User(dm);

        }
        public DataTable Select_User_Top(Common.Page_ManageDatum dm)
        {
            return dl.Select_User_Top(dm);

        }

        public void Update_Page_View(Common.Page_ManageDatum dm)
        {
            dl.Update_Page_View(dm);

        }
    }
}
