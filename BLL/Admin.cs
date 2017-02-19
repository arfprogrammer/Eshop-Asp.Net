using System;
using System.Data;

namespace BLL
{
    public class Admin
    {
        DAL.Admin dl = new DAL.Admin();

        public void Insert(Common.AdminDatum dm)
        {
            dl.Insert(dm);
        }

        public DataTable CheckUserExist(Common.AdminDatum dm)
        {
            return dl.CheckUserExist(dm);
        }
        public DataTable CheckLogin(Common.AdminDatum dm)
        {
            return dl.CheckLogin(dm);
        }


        public void Update(Common.AdminDatum dm)
        {
            dl.Update(dm);
        }

        public void Delete(Common.AdminDatum dm)
        {
            dl.Delete(dm);
        }

        public void InsertSecurity(Common.AdminDatum dm)
        {
            dl.InsertSecurity(dm);
        }

        public void DeletSecurity(Common.AdminDatum dm)
        {
            dl.DeletSecurity(dm);
        }

        public DataTable SelectSecurity(Common.AdminDatum dm)
        {
            return dl.SelectSecurity(dm);
        }

        public DataTable SelectAllAdmin()
        {
            return dl.SelectAllAdmin();
        }

        public DataTable Select_page_One(Common.AdminDatum dm)
        {
            return dl.Select_page_One(dm);

        }

        public bool CheckSecurity(string NameSecurity, decimal ID_Admin)
        {
            DataTable dt = dl.CheckSecurity(NameSecurity, ID_Admin);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
