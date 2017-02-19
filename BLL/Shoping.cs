using System;
using System.Data;

namespace BLL
{
    public class Shoping
    {
        DAL.Shoping dl = new DAL.Shoping();

        public decimal Insert_Factor(Common.ShopingDatum dm)
        {

            return dl.Insert_Factor(dm);
        }
        public void Factor_Update_Takhfif(Common.ShopingDatum dm)
        {
            dl.Factor_Update_Takhfif(dm);
        }
        public void Insert_Factor_Details(Common.ShopingDatum dm)
        {
            dl.Insert_Factor_Details(dm);
        }

        public void Update_Peyment_Factor(Common.ShopingDatum dm)
        {
            dl.Update_Peyment_Factor(dm);
        }

        public DataTable select_user_factor(Common.ShopingDatum dm)
        {
           
            return dl.select_user_factor(dm);
        }
        public DataTable select_user_factor_ok(Common.ShopingDatum dm)
        {
           
            return dl.select_user_factor_ok( dm);
        }

        public DataTable select_factor_all()
        {

            return dl.select_factor_all();
        }
        public DataTable select_factor_all_User(Common.ShopingDatum dm)
        {
            return dl.select_factor_all_User(dm);
        }
        //<ÝÇ˜ÊæÑ åÇí ÇÒ ˜ÇÑÈÑ ˜å ÇÑÓÇá ÔÏ ÑÇ äÔÇä ãí ÏåÏ>
        public DataTable select_user_factor_send_ok(Common.ShopingDatum dm)
        {
           
            return dl.select_user_factor_send_ok( dm);
        }

        public DataTable select_factor_detail(Common.ShopingDatum dm)
        {

            return dl.select_factor_detail(dm);
        }

        public DataTable select_factor_one(Common.ShopingDatum dm)
        {

            return dl.select_factor_one(dm);
        }

        private DataTable FilterFactorByCityCountry(DataTable sor,string City,string Country)
        {
            //filter by city and country
            DataTable dtUser = new DAL.user().Select_All(new Common.userDatum());
            DataTable res = new DataTable();

            foreach (DataColumn dc in sor.Columns)
            {
                res.Columns.Add(dc.ColumnName, dc.DataType);
            }

            

            foreach (DataRow dr in sor.Rows)
            {

                if (City == "" && Country == "")
                {
                    res.Rows.Add(dr.ItemArray);
                    continue;
                }

                //check city
                if (City != "")
                {
                    foreach (DataRow dru in dtUser.Rows)
                    {
                        if (dr["id_user"].ToString() == dru["id"].ToString() && dru["city"].ToString() == City)
                        {
                            res.Rows.Add(dr.ItemArray);
                        }
                    }
                }
                //check country
                if (Country != "")
                {
                    foreach (DataRow dru in dtUser.Rows)
                    {
                        if (dr["id_user"].ToString() == dru["id"].ToString() && dru["country"].ToString() == Country)
                        {
                            res.Rows.Add(dr.ItemArray);
                        }
                    }
                }                                
            }

            return res;
        }

        //<åãå ÝÇ˜ÊæÑ åÇíí ˜å  åäæÒ ÑÏÇÎÊí ÇäÌÇã äÔÏå ÑÇ äÔÇä ãí ÏåÏ>
        public DataTable select_factor_nopeyment(Common.ShopingDatum dm,string City,string Country)
        {
            DataTable dt = dl.select_factor_nopeyment(dm);

            return FilterFactorByCityCountry(dt,City,Country);
        }

        public DataTable select_factor_nopeyment(Common.ShopingDatum dm)
        {
            DataTable res = dl.select_factor_nopeyment(dm);

            return res;
        }


        //<ÈÑÑÓí ãí ˜äÏ Çíä ÔãÇÑå ÝÇ˜ÊæÑ ÈÑÇí ˜ÇÑÈÑ ãÑÈæØå ãí ÈÇÔÏ >
        public bool check_factor(Common.ShopingDatum dm)
        {

            if (dl.check_factor(dm).Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false; ;

            }
        }
        public void Update_Send_Factor(Common.ShopingDatum dm)
        {
            dl.Update_Send_Factor(dm);
        }
        public void Update_Factor_Condition(Common.ShopingDatum dm)
        {
            dl.Update_Factor_Condition( dm);
        }

        //<ÝÇ˜ÊæÑ ÑÇ ÊÇÆíÏ íÇ áÛæ ãí ˜äÏ>
        public void Update_Factor_Agreement(Common.ShopingDatum dm)
        {
            dl.Update_Factor_Agreement( dm);
        }
        public DataTable check_peyment_factor(Common.ShopingDatum dm)
        {
           
            return dl.check_peyment_factor( dm);
        }


        //<äÔÇä ãí ÏåÏ Çíä ÔãÇÑå ÝÇ˜ÊæÑ ÊÇÆíÏ ÔÏ íÇ äÔÏ æ íÇ åäæÒ ÚãáíÇÊí ÇäÌÇã äÔÏå>
        public DataTable check_agreement_factor(Common.ShopingDatum dm)
        {
          
            return dl.check_agreement_factor( dm);
        }

        public DataTable select_factor_peyment(Common.ShopingDatum dm, string City, string Country)
        {
            DataTable dt= dl.select_factor_peyment(dm);

            return FilterFactorByCityCountry(dt, City, Country);
        }


        public DataTable select_factor_peyment(Common.ShopingDatum dm)
        {
            return dl.select_factor_peyment(dm);
        }

        public DataTable select_factor_sended(Common.ShopingDatum dm)
        {
            return dl.select_factor_sended(dm);
        }

        public DataTable select_factor_sended(Common.ShopingDatum dm,string City,string Country)
        {
            DataTable dt = dl.select_factor_sended(dm);
            return FilterFactorByCityCountry(dt, City, Country);
        }

        public void Delete(Common.ShopingDatum dm)
        {
            dl.Delete(dm);
        }

        /// <summary>
        /// NotPayment Today
        /// </summary>        
        public DataTable shop_factor_select_nopeyment_today()
        {            
            return  dl.shop_factor_select_nopeyment_today();            
        }


        /// <summary>
        /// Return Payment today
        /// </summary>        
        public DataTable shop_factor_select_peyment_today()
        {
            return dl.shop_factor_select_peyment_today();
        }
    }
}
