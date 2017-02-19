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
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Email_Sender mail = new Email_Sender();

        dm.Email = TextBox1.Text;
        if (ac.CheckUserExist(dm))
        {
            Label18.Visible = true;
        }
        else
        {
            dm.Name = TextBox4.Text;
            dm.Family = TextBox5.Text;
            dm.Tell = TextBox6.Text;
            dm.Mobile = TextBox7.Text;
            dm.Post_Code = TextBox8.Text;
            dm.Country = TextBox9.Text;
            dm.Province = DropDownList1.Text;
            dm.City = TextBox10.Text;
            dm.Address = TextBox11.Text;
            dm.How_Find = DropDownList2.Text;
            
                dm.Recive_News = CheckBox1.Checked.ToString();


                dm.Pass = TextBox2.Text;
                dm.Company = TextBox12.Text;

                Response.Cookies.Add(new HttpCookie("Id_User", ac.Insert(dm).ToString()));
            //<ارسال پیام خوشامد گویی برای کاربرهایی که جدید ثبت نام کرده اند>
            try
            {
                OneRecord aco = new OneRecord();
                OneRecordDatum dmo = new OneRecordDatum();

                DataTable dt;
                dmo.Type = "EmailRegisterUser";
                dt = aco.SelectOne(dmo);
                if (dt.Rows.Count > 0)
                {
                    string title = dt.Rows[0]["title"].ToString();
                    string text = dt.Rows[0]["text"].ToString();
                     text=text.Replace("username", TextBox1.Text.ToString());
                   text=text.Replace("name", TextBox4.Text.ToString() + " " + TextBox5.Text.ToString());
                    text=text.Replace("password", TextBox2.Text.ToString());
                    mail.Subject = title;
                    mail.Body = text;


                    dmo.Type = "EmailDisplay_Name";
                    dt = aco.SelectOne(dmo);
                    mail.Display_Name = dt.Rows[0]["text"].ToString();// "MMG SOFT Sales";

                    dmo.Type = "EmailFrom_Email_Address";
                    dt = aco.SelectOne(dmo);
                    mail.From_Email_Address = dt.Rows[0]["text"].ToString();// "info@sms-soft.com";
                    mail.To_Email_Address =  TextBox1.Text;

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
                    
                    
                    mail.Send_Email_By_Host();
                }

            }
            catch
            { }

            Response.Cookies.Add(new HttpCookie("Family_User", TextBox4.Text + " " + TextBox5.Text));
            Response.Cookies.Add(new HttpCookie("Email_User", TextBox1.Text));
            Response.Cookies.Add(new HttpCookie("Login_User", "True"));

            if (Request.QueryString["Kind"] == null)
            {
                Response.Redirect("~/index.aspx?Type=UserRegisterOK");
            }
            else
            {
                Response.Redirect("~/index.aspx?Type=ShopFactorRegister");

            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }
}
