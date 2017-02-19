using System;
using System.Data;

namespace BLL
{
    public class Email_Sender_Manage
    {
        DAL.Email_Sender_Manage dl = new DAL.Email_Sender_Manage();

        public DataTable select_email_bank_nosend()
        {

            return dl.select_email_bank_nosend();
        }
        public DataTable select_email_bank_send()
        {

            return dl.select_email_bank_send();
        }
        public DataTable select_email_bank_all()
        {

            return dl.select_email_bank_all();
        }

        public void Update_Send_Condition(Common.Email_Sender_ManageDatum dm)
        {
            dl.Update_Send_Condition(dm);
        }
    }
}
