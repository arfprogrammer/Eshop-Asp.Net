using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Administrator_User_Controls_PhotoManager : System.Web.UI.UserControl
{

    public string FileName { get; set; }
    public string Caption { get; set; }


    protected void Page_Load(object sender, EventArgs e)
    {
        
        FileName = ((Stack)Application["PhotoManager_fields"]).Pop().ToString();
        string icaption = Caption == null ? FileName : Caption;
        spTitle.InnerText = string.Format(spTitle.InnerText, icaption);

  
        hpl.NavigateUrl = string.Format("~/Administrator/files/Design/{0}", FileName);
        hpl.ImageUrl = string.Format("~/Administrator/files/Design/{0}", FileName);


        if (((Stack)Application["PhotoManager_fields"]).Count == 0)
        {
            Application.Remove("PhotoManager_fields");
        }

    }

    void btn_Click(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\"+FileName);
        d = Server.MapPath("~\\Administrator\\files\\Design\\"+ FileName );
        System.IO.File.Copy(s, d, true);
        lbErr.Visible = false;
    }

    private void UploadFile()
    {
        if (iFileUpload.HasFile)
        {            
            string Address = "~\\Administrator\\files\\Design\\" + FileName;
            string str = "";
            str = Server.MapPath(Address);

            iFileUpload.PostedFile.SaveAs(str);


            string s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\" + FileName);
            string d = Server.MapPath("~\\Administrator\\files\\Design\\" + FileName);

            System.Drawing.Image oimg = System.Drawing.Image.FromFile(s);
            System.Drawing.Image nimg = System.Drawing.Image.FromFile(d);

            if (oimg.Size == nimg.Size)
            {
                lbErr.Visible = false;
            }
            else
            {
                nimg.Dispose();
                oimg.Dispose();
                LinkButton1_Click(null, null);
                lbErr.Visible = true;
            }

            nimg.Dispose(); 
            oimg.Dispose();
        }
    }


    protected void btnSaveFile_Click(object sender, EventArgs e)
    {
        UploadFile();
    }
}
