using System;

namespace BLL
{
    public class PublicClass
    {

        public static string numberToMoney(string input)
        {
            string outputT = "";
            string output = "";
            int j = 0;
            for (int i = input.Length - 1; i >= 0; i--)
            {
                outputT += input[i];
                if (j % 3 == 2 && j < input.Length - 1)
                {
                    outputT += ",";
                }
                j++;
            }
            for (int i = outputT.Length - 1; i >= 0; i--)
            {
                output += outputT[i];
            }
            return output;
        }
        public string GetDate()
        {

            System.Globalization.PersianCalendar c = new System.Globalization.PersianCalendar();

            DateTime date;

            date = DateTime.Now;

            string y = c.GetYear(date).ToString();

            string m = c.GetMonth(date).ToString();

            string d = c.GetDayOfMonth(date).ToString();

            if (decimal.Parse(m) < 10)
            {
                m = "0" + m;
            }
            if (decimal.Parse(d) < 10)
            {
                d = "0" + d;
            }


            string Result = (d + "/" + m + "/" + y);

            return Result;

        }
        //public string ConectionString()
        //{
        //    return System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"];

        //}


        public string EditorButton()
        {
            string Button = "['FullScreen','Preview','Print'," +
                    "'Cut','Copy','Paste','|','Undo','Redo','|'," +
                    "'ForeColor','BackColor','StyleAndFormatting','|','Hyperlink'," +

                    "'BRK','Numbering','Bullets','|','Indent','Outdent','LTR','RTL','|','Image','Flash','|'," +
                    "'Table','Guidelines','|','Characters','Line'," +
                    "'ClearAll','Superscript','BRK'," +
                    "'TextFormatting','ListFormatting','BoxFormatting'," +

                    "'Paragraph','FontName','FontSize','|'," +
                    "'Bold','Italic'," +
                    "'Underline','|'," +
                    "'JustifyLeft','JustifyCenter','JustifyRight','JustifyFull']";

            return Button;
        }
    }
}
