using System;
using System.Data;

namespace BLL
{
    public class Arm
    {
        DAL.Arm dl = new DAL.Arm();

        public DataTable Select_All()
        {

            return dl.Select_All();
        }

        public void Insert(Common.ArmDatum dm)
        {
            dl.Insert( dm);
        }
        public void Delete(Common.ArmDatum dm)
        {
            dl.Delete(dm);
        }

        public void Update(Common.ArmDatum dm)
        {
           dl.Update( dm);
        }

        public DataTable SelectOne(Common.ArmDatum dm)
        {
            return dl.SelectOne(dm);

        }

        public DataTable Select_All_User()
        {
            return dl.Select_All_User();
        }
    }
}
