using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Email_Sender_Manage
    {
        
        private sqlhelper sh = new sqlhelper();

 

        public DataTable select_email_bank_nosend()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("emailsender_email_bank_select_nosend", prms);
        }
        public DataTable select_email_bank_send()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("emailsender_email_bank_select_send", prms);
        }
        public DataTable select_email_bank_all()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("emailsender_email_bank_select_all", prms);
        }

        public void Update_Send_Condition(Common.Email_Sender_ManageDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id);
            prms[1] = new SqlParameter("@send_condition", dm.Send_Condition);
            sh.ExecuteNonQuery("emailsender_email_bank_send_condition_update", prms);
        }
     
    }
}
