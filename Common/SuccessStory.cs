using System;
using System.Collections.Generic;
using System.Text;

namespace Common
{
   public class SuccessStory
    {     
       public int id { get; set; }
       public int id_user { get; set; }
       public string title { get; set; }
       public string body { get; set; }
       public bool admin_active { get; set; }
       public string date_register { get; set; }
       public int visit_count { get; set; }
    }
}
