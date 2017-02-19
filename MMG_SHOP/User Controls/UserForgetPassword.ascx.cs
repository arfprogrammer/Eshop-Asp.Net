using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BLL;
using Common;
public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    user ac = new user();
    userDatum dm = new userDatum();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {


        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Email_Sender mail = new Email_Sender();

        dm.Email = TextBox1.Text.ToString();
        string pass = ac.GetUserPass(dm).Rows.Count.ToString();

        Button1.Enabled = false;
        Button2.Enabled = false;
        Label11.Visible = false;

        if (pass == "0")
        {
            Label11.Text = "ایمیل مورد نظر در فروشگاه ثبت نشده است.لطفا ایمیل را صحیح وارد کنید.";
            Label11.Visible = true;
            Button1.Enabled = true;
            Button2.Enabled = true;


        }
        else
        {

            try
            {
                OneRecord aco = new OneRecord();
                OneRecordDatum dmo = new OneRecordDatum();

                DataTable dt;
                dmo.Type = "EmailForgetPassword";
                dt = aco.SelectOne(dmo);
                if (dt.Rows.Count > 0)
                {

                    string title = dt.Rows[0]["title"].ToString();
                    string text = dt.Rows[0]["text"].ToString();
                    text = text.Replace("username", TextBox2.Text.ToString());
                    text = text.Replace("password", pass);
                    mail.Subject = title;
                    mail.Body = text;

                    dmo.Type = "EmailDisplay_Name";
                    dt = aco.SelectOne(dmo);
                    mail.Display_Name = dt.Rows[0]["text"].ToString();// "MMG SOFT Sales";

                    dmo.Type = "EmailFrom_Email_Address";
                    dt = aco.SelectOne(dmo);
                    mail.From_Email_Address = dt.Rows[0]["text"].ToString();// "info@sms-soft.com";
                    mail.To_Email_Address = TextBox2.Text;

                    mail.Port_Number = 25;// 465;


                    dmo.Type = "EmailSmtp_Host";
                    dt = aco.SelectOne(dmo);
                    mail.Smtp_Host = dt.Rows[0]["text"].ToString();// "mail.mmg-soft.com";

                    dmo.Type = "EmailSender_Email_Address";
                    dt = aco.SelectOne(dmo);
                    mail.Sender_Email_Address = dt.Rows[0]["text"].ToString();//"userpass@mmg-soft.com";

                    dmo.Type = "EmailSender_Email_Pass";
                    dt = aco.SelectOne(dmo);
                    mail.Sender_Email_Pass = dt.Rows[0]["text"].ToString();// "mmg-softkarafarin";
                    


                    mail.Port_Number = 25;// 465;

                    mail.Send_Email_By_Host();

                    Label11.Text = "هم اکنون ایمیلی حاوی رمز عبور، برایتان ارسال شده است.";

                    Label11.Visible = true;
                    Button1.Enabled = true;
                    Button2.Enabled = true;

                }
            }
            catch
            {
                Label11.Text = "ارسال رمز عبور با خطا مواجه شده است , لطفا دوباره تلاش کنید.";
                Label11.Visible = true;
                Button1.Enabled = true;
                Button2.Enabled = true;

            }
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");

    }
}
