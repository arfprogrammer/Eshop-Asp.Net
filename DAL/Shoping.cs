using System;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Shoping
    {
        
        private sqlhelper sh = new sqlhelper();


        public decimal Insert_Factor(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[8];
            prms[0] = new SqlParameter("@id_user", dm.Id_User);
            prms[1] = new SqlParameter("@date_register", dm.Register_Date);
            prms[2] = new SqlParameter("@sum_price", dm.Sum_Price);
            prms[3] = new SqlParameter("@factor_code", dm.Factor_Code);
            prms[4] = new SqlParameter("@factor_condition", dm.Factor_Condition);
            prms[5] = new SqlParameter("@send_price", dm.Send_Price);
            prms[6] = new SqlParameter("@customer_name", dm.Customer_Name);
            prms[7] = new SqlParameter("@Tasx", dm.Tasx);
            return sh.ExecuteNonQueryIdentity("shop_factor_insert", prms, "id_factor");
        }

        public void Insert_Factor_Details(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[3];
            prms[0] = new SqlParameter("@id_product", dm.Id_Product);
            prms[1] = new SqlParameter("@id_factor", dm.Id_Factor);
            prms[2] = new SqlParameter("@product_count", dm.Count);
            sh.ExecuteNonQuery("shop_details_insert", prms);
        }

        public void Update_Peyment_Factor(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[12];
            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            prms[1] = new SqlParameter("@peyment_code", dm.Peyment_Code);
            prms[2] = new SqlParameter("@bank_name", dm.Bank_Name);
            prms[3] = new SqlParameter("@bank_code", dm.Bank_Code);
            prms[4] = new SqlParameter("@peyment_date", dm.Peyment_Date);
            prms[5] = new SqlParameter("@peyment_kind", dm.Peyment_Kind);
            prms[6] = new SqlParameter("@peyment_price", dm.Peyment_Price);
            prms[7] = new SqlParameter("@customer_name", dm.Customer_Name);
            prms[8] = new SqlParameter("@customer_tell", dm.Customer_Tell);
            prms[9] = new SqlParameter("@customer_time_recive", dm.Customer_Time_Recive);
            prms[10] = new SqlParameter("@customer_address", dm.Customer_Address);
            prms[11] = new SqlParameter("@description", dm.Description);
            sh.ExecuteNonQuery("shop_factor_peyment_update", prms);
        }

        public DataTable select_user_factor(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_user", dm.Id_User);
            return sh.ExecuteDataSet("shop_factor_user_select", prms);
        }
        public DataTable select_user_factor_ok(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id_user", dm.Id_User);
            prms[1] = new SqlParameter("@factor_agreement", "True");
            return sh.ExecuteDataSet("shop_factor_user_select_ok", prms);
        }

        public DataTable select_factor_all()
        {
            SqlParameter[] prms = new SqlParameter[0];
            return sh.ExecuteDataSet("shop_factor_select_all", prms);
        }
        public DataTable select_factor_all_User(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_user", dm.Id_User);
            return sh.ExecuteDataSet("shop_factor_select_all_User", prms);
        }
        //<ÝÇ˜ÊæÑ åÇí ÇÒ ˜ÇÑÈÑ ˜å ÇÑÓÇá ÔÏ ÑÇ äÔÇä ãí ÏåÏ>
        public DataTable select_user_factor_send_ok(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_user", dm.Id_User);
            return sh.ExecuteDataSet("shop_factor_user_select_send_ok", prms);
        }

        public DataTable select_factor_detail(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id_factor", dm.Id_Factor);
            return sh.ExecuteDataSet("shop_factor_detail_select", prms);
        }

        public DataTable select_factor_one(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            return sh.ExecuteDataSet("shop_factor_select_one", prms);
        }
    



        //<ÈÑÑÓí ãí ˜äÏ Çíä ÔãÇÑå ÝÇ˜ÊæÑ ÈÑÇí ˜ÇÑÈÑ ãÑÈæØå ãí ÈÇÔÏ >
        public DataTable check_factor(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[3];
            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            prms[1] = new SqlParameter("@id_user", dm.Id_User);
            prms[2] = new SqlParameter("@factor_code", dm.Factor_Code);
            return sh.ExecuteDataSet("shop_factor_check", prms);
        }

        public void Update_Factor_Condition(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[2];
            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            prms[1] = new SqlParameter("@factor_condition", dm.Factor_Condition);
            sh.ExecuteNonQuery("shop_factor_condition_update", prms);
        }

        public void Factor_Update_Takhfif(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[6];

            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            prms[1] = new SqlParameter("@Tasx", dm.Tasx);
            prms[2] = new SqlParameter("@Sum_Price", dm.Sum_Price);
            prms[3] = new SqlParameter("@Discount", dm.Discount);
            prms[4] = new SqlParameter("@Send_Price", dm.Send_Price);
            prms[5] = new SqlParameter("@description", dm.Description);

            sh.ExecuteNonQuery("shop_factor_Update_Takhfif", prms);
        }

            public void Update_Send_Factor(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[3];
            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            prms[1] = new SqlParameter("@Date_Send", dm.Date_Send);
            prms[2] = new SqlParameter("@Send_Product", dm.Send_Product);
            sh.ExecuteNonQuery("shop_factor_Send_update", prms);
        }
        //<ÝÇ˜ÊæÑ ÑÇ ÊÇÆíÏ íÇ áÛæ ãí ˜äÏ>
        public void Update_Factor_Agreement(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[4];
            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            prms[1] = new SqlParameter("@factor_agreement", dm.Factor_Agreement);
            prms[2] = new SqlParameter("@date_agreement_factor", dm.Date_Agreement_Factor);
            prms[3] = new SqlParameter("@factor_condition", dm.Factor_Condition);
            sh.ExecuteNonQuery("shop_factor_agreement_update", prms);
        }
        public DataTable check_peyment_factor(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            return sh.ExecuteDataSet("shop_factor_select_one", prms);
        }
     

        //<äÔÇä ãí ÏåÏ Çíä ÔãÇÑå ÝÇ˜ÊæÑ ÊÇÆíÏ ÔÏ íÇ äÔÏ æ íÇ åäæÒ ÚãáíÇÊí ÇäÌÇã äÔÏå>
        public DataTable check_agreement_factor(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@id", dm.Id_Factor);
            return sh.ExecuteDataSet("shop_factor_select_one", prms);
        }

        //<åãå ÝÇ˜ÊæÑ åÇíí ˜å  åäæÒ ÑÏÇÎÊí ÇäÌÇã äÔÏå ÑÇ äÔÇä ãí ÏåÏ>
        public DataTable select_factor_nopeyment(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[4];
            dm.Register_Date = '%' + dm.Register_Date + '%';
            dm.Factor_Code = '%' + dm.Factor_Code + '%';
            dm.Bank_Name = '%' + dm.Bank_Name + '%';
            prms[0] = new SqlParameter("@date_register", dm.Register_Date);
            prms[1] = new SqlParameter("@Id_User", dm.Id_User);
            prms[2] = new SqlParameter("@Factor_Code", dm.Factor_Code);
            prms[3] = new SqlParameter("@id", dm.Bank_Name);

            return sh.ExecuteDataSet("shop_factor_select_nopeyment", prms);
        }

        public DataTable select_factor_peyment(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[4];
            dm.Register_Date = '%' + dm.Register_Date + '%';
            dm.Factor_Code = '%' + dm.Factor_Code + '%';
            dm.Bank_Name = '%' + dm.Bank_Name + '%';
            prms[0] = new SqlParameter("@date_register", dm.Register_Date);
            prms[1] = new SqlParameter("@Id_User", dm.Id_User);
            prms[2] = new SqlParameter("@Factor_Code", dm.Factor_Code);
            prms[3] = new SqlParameter("@id", dm.Bank_Name);
            return sh.ExecuteDataSet("shop_factor_select_peyment", prms);
            
        }
        public DataTable select_factor_sended(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[4];
            dm.Register_Date = '%' + dm.Register_Date + '%';
            dm.Factor_Code = '%' + dm.Factor_Code + '%';
            dm.Bank_Name = '%' + dm.Bank_Name + '%';
            prms[0] = new SqlParameter("@date_register", dm.Register_Date);
            prms[1] = new SqlParameter("@Id_User", dm.Id_User);
            prms[2] = new SqlParameter("@Factor_Code", dm.Factor_Code);
            prms[3] = new SqlParameter("@id", dm.Bank_Name);
            return sh.ExecuteDataSet("shop_factor_select_sended", prms);

        }


        public void Delete(Common.ShopingDatum dm)
        {
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@Id_Factor", dm.Id_Factor);
            sh.ExecuteNonQuery("shop_factor_Delete", prms);

        }

        /// <summary>
        /// Return NoPayment Facto Of Day
        /// </summary>        
        public DataTable shop_factor_select_nopeyment_today()
        {
            SqlParameter[] prms = new SqlParameter[1];
            string date_today;
            System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();

            date_today = string.Format("{0:d2}/{1:d2}/{2:d2}", pc.GetDayOfMonth(DateTime.Now), pc.GetMonth(DateTime.Now), pc.GetYear(DateTime.Now));
            prms[0] = new SqlParameter("@date_register", date_today);

            return sh.ExecuteDataSet("shop_factor_select_nopeyment_today", prms); 
        }

        /// <summary>
        /// Return Payment Today
        /// </summary>        
        public DataTable shop_factor_select_peyment_today()
        {
            SqlParameter[] prms = new SqlParameter[1];
            string peyment_date;
            System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();

            peyment_date = string.Format("{0:d2}/{1:d2}/{2:d2}", pc.GetDayOfMonth(DateTime.Now), pc.GetMonth(DateTime.Now), pc.GetYear(DateTime.Now));
            prms[0] = new SqlParameter("@peyment_date",'%'+ peyment_date+'%');

            
            return sh.ExecuteDataSet("shop_factor_select_peyment_today", prms); 
        }

    }
}
