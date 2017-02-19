using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace BLL
{
    public class SuccessStory
    {

        /// <summary>
        /// select all rows
        /// </summary>       
        public DataTable SelectAllActive()
        {
            return new DAL.SuccessStory().SelectAllActive();
        }

        public DataTable SelectAllDeactive()
        {
            return new DAL.SuccessStory().SelectAllDeactive();
        }

        public DataTable SelectAll()
        {
            return new DAL.SuccessStory().SelectAll();
        }

        /// <summary>
        /// select row by id
        /// </summary>
        /// <param name="id">id if row</param>       
        public DataTable SelectRow(long id)
        {
            return new DAL.SuccessStory().SelectRow(id);
        }

        /// <summary>
        /// select story by user id
        /// </summary>
        /// <param name="uid">id of user</param>      
        public DataTable SelectByUserId(int uid)
        {
            return new DAL.SuccessStory().SelectByUserId(uid);
        }

        public DataTable SelectOne()
        {
            return new DAL.SuccessStory().SelectOne();
        }

        /// <summary>
        /// Increase Visitor Count
        /// </summary>
        /// <param name="id"></param>
        public void UpdateVisitor(int id)
        {
            new DAL.SuccessStory().UpdateVisitor(id);
        }


        /// <summary>
        /// insert new story 
        /// </summary>        
        public void Insert(Common.SuccessStory data)
        {
            DAL.SuccessStory adp = new DAL.SuccessStory();

            data.admin_active = false;
            data.date_register = new PublicClass().GetDate();            
            data.visit_count = 0;

            adp.Insert(data);            
        }

        /// <summary>
        /// update new story 
        /// </summary>        
        public void Update(Common.SuccessStory data)
        {
            DAL.SuccessStory adp = new DAL.SuccessStory();

            data.admin_active = false;
            data.date_register = new PublicClass().GetDate();
            
            adp.Update(data);
        }


        public void UpdateAdminActive(int id,bool active)
        {
            new DAL.SuccessStory().UpdateAdminActive(id,active);
        }

        /// <summary>
        /// return count of deactive success story
        /// </summary>
        public int DeactiveCount()
        {
            return new DAL.SuccessStory().DeactiveCount();
        }


        public void Delete(int id)
        {
            new DAL.SuccessStory().Delete(id);
        }
        
    }

}
