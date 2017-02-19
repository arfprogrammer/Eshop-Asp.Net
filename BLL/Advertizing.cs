using System;
using System.Data;

namespace BLL
{
    public class Advertizing
    {
        DAL.Advertizing dl = new DAL.Advertizing();

        public void Insert(Common.AdvertizingDatum dm)
        {
           dl.Insert(dm);
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

        public DataTable Select()
        {

            return dl.Select();
        }
        public void Delete(Common.AdvertizingDatum dm)
        {
           dl.Delete( dm);           
        }

        public void Update_Row_View(Common.AdvertizingDatum dm)
        {
           dl.Update_Row_View(dm);
        }
        public bool Check_Row_View_Exist(Common.AdvertizingDatum dm)
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

        public void Update(Common.AdvertizingDatum dm)
        {
            dl.Update(dm);
        }
        public DataTable Select_page_One(Common.AdvertizingDatum dm)
        {
            
            return dl.Select_page_One(dm);
        }
        public bool Select_Advertizing_Number(Common.AdvertizingDatum dm)
        {
            DataTable dt= dl.Select_Advertizing_Number(dm);
            if (dt.Rows.Count > 0)
            {
                dm.Text = dt.Rows[0]["text"].ToString();
                dm.Show_Page = dt.Rows[0]["Show_Page"].ToString();

                return true;

            }
            else
            {
                return false;
            }
        }
        public DataTable advertizing_show_check(Common.AdvertizingDatum dm)
        {
            
            return dl.advertizing_show_check(dm);
        }
    }
}
