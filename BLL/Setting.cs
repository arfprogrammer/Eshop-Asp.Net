using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace BLL
{
public    class Setting
    {
    public Common.Setting Select()
    {
        Common.Setting inf = new Common.Setting();
        DataTable tbl = new DAL.Setting().SelectAll();

        inf.google_search = "";
        inf.help_shoping = "";
        inf.webgozar = "";

        if (tbl.Rows.Count > 0)
        {
            if (tbl.Rows[0]["google_search"] != null) { inf.google_search = tbl.Rows[0]["google_search"].ToString(); }
            if (tbl.Rows[0]["help_shoping"] != null) { inf.help_shoping = tbl.Rows[0]["help_shoping"].ToString(); }
            if (tbl.Rows[0]["webgozar"] != null) { inf.webgozar = tbl.Rows[0]["webgozar"].ToString(); }
        }

        return inf;
    }

    public void Save(Common.Setting inf)
    {
        if (inf.google_search == null) { inf.google_search  = ""; }
        if (inf.help_shoping == null) { inf.help_shoping = ""; }
        if (inf.webgozar == null) { inf.webgozar = ""; }

        new DAL.Setting().Save(inf);
    }


    }
}
