using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Net.Mail;
using System.Net;

public class Email_Sender
{
    private string _Subject;
    private string _Body;
    private string _To_Email_Address;
    private string _From_Email_Address;
    private string _Sender_Email_Address;
    private string _Sender_Email_Pass;
    private string _Display_Name;
    private string _Smtp_Host;
    private int    _port_number;


    private MailMessage mail = new MailMessage();

    public string Sender_Email_Pass
    {
        get
        {
            return _Sender_Email_Pass;
        }
        set
        {
            _Sender_Email_Pass = value;
        }
    }

    public string Sender_Email_Address
    {
        get
        {
            return _Sender_Email_Address;
        }
        set
        {
            _Sender_Email_Address = value;
        }
    }

    public string Smtp_Host
    {
        get
        {
            return _Smtp_Host;
        }
        set
        {
            _Smtp_Host = value;
        }
    }

    public string Display_Name
    {
        get
        {
            return _Display_Name;
        }
        set
        {
            _Display_Name = value;
        }
    }
    public string From_Email_Address
    {
        get
        {
            return _From_Email_Address;
        }
        set
        {
            _From_Email_Address = value;
        }
    }


    public int Port_Number
    {
        get
        {
            return _port_number;
        }
        set
        {
            _port_number = value;
        }
    }

    public string Subject
    {
        get
        {
            return _Subject;
        }
        set
        {
            _Subject = value;
        }
    }

    public string Body
    {
        get
        {
            return _Body;   
        }
        set
        {
            _Body = value;
        }
    }

    public string To_Email_Address
    {
        get
        {
            return _To_Email_Address;
        }
        set
        {
            _To_Email_Address = value;
        }
    }

    public bool Send_Email_By_Host()
    {
        mail.Subject = Subject;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = Body;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.From = new MailAddress(From_Email_Address, Display_Name, System.Text.Encoding.GetEncoding("windows-1256"));
        mail.To.Add(To_Email_Address);
        SmtpClient smtp = new SmtpClient();
        smtp.Port = Port_Number;
        smtp.Host = Smtp_Host;
        smtp.Credentials = new NetworkCredential(Sender_Email_Address, Sender_Email_Pass);
           

        smtp.Send(mail);
        System.Threading.Thread.Sleep(5000);
        return true;

    }
    public bool Send_Email_By_Smtp()
    {
        mail.Subject = Subject;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = Body;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.From = new MailAddress(From_Email_Address, Display_Name, System.Text.Encoding.GetEncoding("windows-1256"));
        mail.To.Add(To_Email_Address);
        SmtpClient smtp = new SmtpClient();
        smtp.Port = Port_Number;
        smtp.Host = Smtp_Host;
        smtp.Credentials = new NetworkCredential(Sender_Email_Address, Sender_Email_Pass);

        smtp.EnableSsl = true;
        smtp.Send(mail);
        System.Threading.Thread.Sleep(5000);
        return true;

    }
    public void Mail_Dispose()
    {
        mail.Dispose();
    }

}
