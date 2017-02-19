using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;//external namespaces
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Drawing.Text;
public partial class Captcha : System.Web.UI.Page
{    //capecha code generation    
    protected void Page_Load(object sender, EventArgs e)
    {
        int ImageWidth = 103; // 150 with source text 
        int ImageHeight = 33;
        //string[] Words = { "mJyUb5", "KiR6yJ", "z9dTY9", "hjUtY6", "HTnJy4", "hyK9bh", "u975hK", "45MhuF", "uytdH6", "p9R7g3", "utFKu8", "8f456K", "hJgYu5", "jIgRA5t", "rA78Je", "58yU4K", "HuLL3Y" };
        //Random MyRand = new Random();
        //int RandomMunber = MyRand.Next(0, Words.Length - 1); 
        //Session["cIaptTchaS"] = Words[RandomMunber].ToString();
        Bitmap objBMP = new Bitmap(60, 20);
        Graphics objGraphics = Graphics.FromImage(objBMP);
        objGraphics.Clear(Color.Wheat);
        objGraphics.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
        //' Configure font to use for text
        Font objFont = new Font("Arial", 12, FontStyle.Italic);
        string randomStr = "";
        char[] myArray = new char[5];
        int x;

        //That is to create the random # and add it to our string
        Random autoRand = new Random();
        for (x = 0; x < 5; x++)
        {
            myArray[x] = System.Convert.ToChar(autoRand.Next(65, 90));
            randomStr += (myArray[x].ToString());
        }
        //This is to add the string to session, to be compared later
        Session.Remove("cIaptTchaS");
        Session.Add("cIaptTchaS", randomStr);
        //.............................................
        string TextToCreate = Session["cIaptTchaS"].ToString();
        Brush ObjBrush = Brushes.Black;
        HatchBrush myBrush = new HatchBrush(HatchStyle.Percent05, Color.DarkGreen, Color.White);
        Pen myPen = new Pen(myBrush, 3);
        Font ObjFont = new Font("Century", 18, FontStyle.Regular);  
        //Font ObjFontCopyright = new Font("Tahoma", 8, FontStyle.Regular);
        Bitmap ObjBitmap = new Bitmap(ImageWidth, ImageHeight); 
        Graphics ObjGraphics = Graphics.FromImage(ObjBitmap);
        //ObjGraphics.Clear(Color.White);
        ObjGraphics.FillRectangle(myBrush, 0, 0, ImageWidth, ImageHeight);
        //ObjGraphics.DrawLine(myPen, 1, ImageHeight - 20, ImageWidth - 5, ImageHeight - 12); 
        //ObjGraphics.DrawLine(myPen, 1, ImageHeight - 10, ImageWidth - 5, ImageHeight - 2);
        ObjGraphics.DrawString(TextToCreate, ObjFont, ObjBrush, 1, 1);
        //ObjGraphics.DrawString("source : mywebsitename.com", ObjFontCopyright, ObjBrush, 1, 29);
        ObjGraphics.SmoothingMode = SmoothingMode.AntiAlias;
        ObjGraphics.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAliasGridFit; 
        //SizeF mySize = ObjGraphics.MeasureString(TextToCreate, ObjFont);
        Response.ContentType = "image/jpeg"; 
        ObjBitmap.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
        ObjGraphics.Dispose(); 
        ObjBitmap.Dispose(); 
        myPen.Dispose();
        ObjFont.Dispose();
    }}