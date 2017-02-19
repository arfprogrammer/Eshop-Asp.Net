using System;
using System.Data;

namespace BLL
{
    public class OneRecord
    {
        DAL.OneRecord dl = new DAL.OneRecord();


        public void Update(Common.OneRecordDatum dm)
        {
           dl.Update( dm);
        }

        public DataTable SelectOne(Common.OneRecordDatum dm)
        {
            return dl.SelectOne(dm);

        }
    }
}
