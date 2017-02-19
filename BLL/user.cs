using System;
using System.Data;

namespace BLL
{
    public class user
    {
        DAL.user dl = new DAL.user();

        public decimal Insert(Common.userDatum dm)
        {
            return dl.Insert(dm, new PublicClass().GetDate());
        }

        public DataTable Check_Login(Common.userDatum dm)
        {
           return dl.Check_Login(dm);
        }

        public DataTable select_one_user(Common.userDatum dm)
        {
            return dl.select_one_user(dm);
        }

        public DataTable Select_All(Common.userDatum dm)
        {
            return dl.Select_All(dm);
        }


        public void Update_User(Common.userDatum dm)
        {
            dl.Update_User(dm);
        }

        public void Update_User_Pass(Common.userDatum dm)
        {
            dl.Update_User_Pass(dm);
        }

        public bool CheckUserExist(Common.userDatum dm)
        {
            if (dl.CheckUserExist(dm).Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataTable Check_Pass_User(Common.userDatum dm)
        {

            return dl.Check_Pass_User(dm);
        }
        public DataTable GetUserPass(Common.userDatum dm)
        {

            return dl.GetUserPass(dm);
        }

        public void Delete(Common.userDatum dm)
        {
            dl.Delete(dm);
        }

        /// <summary>
        /// Filter User
        /// </summary>
        /// <param name="dm">Send Parameters</param>
        public DataTable Find_All(Common.userDatum dm)
        {
            DataTable tb;
            DataTable res = new DataTable();            
            tb= dl.Select_All(new Common.userDatum());

            foreach (DataColumn dc in tb.Columns)
            {
                res.Columns.Add(dc.ColumnName,dc.DataType );
            }
            

            foreach (DataRow dr in tb.Rows)
            {                
                if (dm.City != "")
                {
                    if (!dr["city"].ToString().Contains( dm.City)) {  continue; }
                }
                if (dm.Country != "")
                {
                    if (!dr["country"].ToString().Contains(dm.Country)) {  continue; }
                }
                if (dm.Email != "")
                {
                    if (!dr["email"].ToString().Contains( dm.Email)) {  continue; }
                }
                if (dm.Family != "")
                {
                    if (!dr["family"].ToString().Contains(dm.Family)) {  continue; }
                }
                if (dm.How_Find != "«‰ Œ«» ò‰Ìœ...")
                {
                    if (dr["how_find"].ToString() != dm.How_Find) {  continue; }
                }
                if (dm.Mobile != "")
                {
                    if (!dr["mobile"].ToString().StartsWith(dm.Mobile)) {  continue; }
                }
                if (dm.Tell != "")
                {
                    if (!dr["tell"].ToString().StartsWith(dm.Tell)) { continue; }
                }
                if (dm.Post_Code != "")
                {
                    if (!dr["post_code"].ToString().StartsWith(dm.Post_Code)) { continue; }
                }
                if (dm.Name != "")
                {
                    if (!dr["name"].ToString().Contains(dm.Name)) {  continue; }
                }
                if (dm.Province != "«‰ Œ«» ò‰Ìœ...")
                {
                    if (dr["province"].ToString() != dm.Province) {  continue; }
                }
                                 
                res.Rows.Add(dr.ItemArray);
            }

            return res;
        }


        public DataTable shop_user_select_new_today()
        {
            return new DAL.user().shop_user_select_new_today('%'+new PublicClass().GetDate()+'%');
        }
    }
}
