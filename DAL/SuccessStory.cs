using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class SuccessStory:sqlhelper
    {

        /// <summary>
        /// Select All Rows
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllActive()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return ExecuteDataSet("shop_success_story_select_all", prms);
        }

        
        /// <summary>
        /// Select All Deactive Rows
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllDeactive()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return ExecuteDataSet("shop_success_story_select_deactive", prms);
        }

        /// <summary>
        /// select all rows
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAll()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return ExecuteDataSet("shop_success_story_select_all", prms);

        }
        /// <summary>
        /// Select by id
        /// </summary>
        /// <param name="id">row id</param>        
        public DataTable SelectRow(long id)
        {            
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("id", id);
            return ExecuteDataSet("shop_success_story_SelectRow", prms);
        }

        public DataTable SelectByUserId(int uid)
        {            
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("id_user", uid );
            return ExecuteDataSet("shop_success_story_selectby_userid", prms);
        }

        /// <summary>
        /// Select One Row
        /// </summary>        
        public DataTable SelectOne()
        {            
            SqlParameter[] prms = new SqlParameter[0];

            return ExecuteDataSet("shop_success_story_select_one", prms);
        }


        /// <summary>
        /// increase visitro count
        /// </summary>
        /// <param name="id">id of story</param>
        public void UpdateVisitor(int id)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("id", id);
            ExecuteNonQuery("shop_success_story_update_visit", prms);
        }

        /// <summary>
        /// insert new story
        /// </summary>
        /// <param name="data">story data</param>
        public void Insert(Common.SuccessStory data)
        {
            SqlParameter[] prms = new SqlParameter[6];

            prms[0] = new SqlParameter("admin_active", data.admin_active);
            prms[1] = new SqlParameter("body", data.body);
            prms[2] = new SqlParameter("date_register", data.date_register);
            prms[3] = new SqlParameter("id_user", data.id_user);
            prms[4] = new SqlParameter("title", data.title);
            prms[5] = new SqlParameter("visit_count", data.visit_count);

            ExecuteNonQuery("shop_success_story_Insert", prms);
        }



        public void Update(Common.SuccessStory inf)
        {
            SqlParameter[] prms = new SqlParameter[5];

            prms[0] = new SqlParameter("admin_active", inf.admin_active);
            prms[1] = new SqlParameter("body", inf.body);
            prms[2] = new SqlParameter("date_register", inf.date_register);
            prms[3] = new SqlParameter("id", inf.id);
            prms[4] = new SqlParameter("title", inf.title);

            ExecuteNonQuery("shop_success_story_Update", prms);
        }


        /// <summary>
        /// return count of deactive success story
        /// </summary>        
        public int DeactiveCount()
        {
            return Convert.ToInt32( ExecuteNonQueryIdentity("shop_success_story_deactivecount", new SqlParameter[0], "cv"));
        }


        public void Delete(int id)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0]=new SqlParameter("id",id);

            ExecuteNonQuery("shop_success_story_DeleteRow", prms);

        }


        public void UpdateAdminActive(int id, bool active)
        {
            
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("id", id);
            prms[1] = new SqlParameter("admin_active", active);

            ExecuteNonQuery("shop_success_story_Update_admin_active", prms);
        }

    }
}
