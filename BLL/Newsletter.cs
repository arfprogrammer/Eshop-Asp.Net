using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace BLL
{
   public class Newsletter
    {
       public DataTable SelectAll()
       {
           return new DAL.Newsletter().SelectAll();
       }


       public DataTable SelectByEmail(string email)
       {
           return new DAL.Newsletter().SelectByEmail(email);
       }


       /// <summary>
       /// Insert Email to email list
       /// </summary>
       /// <param name="Email">email address</param>
       /// <returns>0: error 1:insert 2:duplicat </returns>
       public int  Insert(string Email)
       {
           DAL.Newsletter adp = new DAL.Newsletter();

           if (adp.SelectByEmail(Email).Rows.Count == 0)
           {
               return new DAL.Newsletter().Insert(Email);
           }
           else
           {
               return 2;
           }
       }


    }
}
