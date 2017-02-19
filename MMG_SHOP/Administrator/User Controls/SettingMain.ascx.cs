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
using System.IO;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    OneRecord ac = new OneRecord();
    OneRecordDatum dm = new OneRecordDatum();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!new Admin().CheckSecurity("Setting", decimal.Parse(Request.Cookies["ID_Admin"].Value)))
            {
                Response.Redirect("~/Administrator/index.aspx?Type=Accessdenied");
            }

            Fill();
        }
    }


    private void Fill()
    {
        DataTable dt;
        dm.Type = "Maliat";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["text"].ToString();
        }
        dm.Type = "MetaTagTitle";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox2.Text = dt.Rows[0]["text"].ToString();

        }
        dm.Type = "MetaTagKeyword";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox3.Text = dt.Rows[0]["text"].ToString();

        }
        dm.Type = "MetaTagDescription";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox4.Text = dt.Rows[0]["text"].ToString();

        }
        dm.Type = "HazineErsal";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox5.Text = dt.Rows[0]["text"].ToString();

        }
        dm.Type = "AddressPrint";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            FCKeditor1.Value = dt.Rows[0]["text"].ToString();
        }

        Common.Setting iset=new Common.Setting();
        iset = new BLL.Setting().Select();

        txtGoogleSearch.Text = iset.google_search;
    }
    private void Cancel()
    {
        Fill();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Cancel();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dm.Title = "Maliat";
        dm.Text = TextBox1.Text;
        dm.Type = "Maliat";
        ac.Update(dm);
        dm.Title = "Title";
        dm.Text = TextBox2.Text;
        dm.Type = "MetaTagTitle";
        ac.Update(dm);
        dm.Title = "Keyword";
        dm.Text = TextBox3.Text;
        dm.Type = "MetaTagKeyword";
        ac.Update(dm);
        dm.Title = "Description";
        dm.Text = TextBox4.Text;
        dm.Type = "MetaTagDescription";
        ac.Update(dm);
        dm.Title = "HazineErsal";
        dm.Text = TextBox5.Text;
        dm.Type = "HazineErsal";
        ac.Update(dm);
        dm.Title = "AddressPrint";
        dm.Text = FCKeditor1.Value;
        dm.Type = "AddressPrint";
        ac.Update(dm);

        new BLL.Setting().Save(new Common.Setting() { google_search = txtGoogleSearch.Text });

    }

    //----------------------------------------------------------------------------------------------


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        StreamWriter asw = new StreamWriter(Server.MapPath("~//administrator//files//Web.sitemap"), false, System.Text.Encoding.UTF8);
        asw.Write("");
        asw.Close();
        string p = "";
        string title = "";
        string desc = "";
        int i = 0;
        OneRecord ac2 = new OneRecord();
        OneRecordDatum dm2 = new OneRecordDatum();
        DataTable dt2;
        dm2.Type = "MetaTagTitle";
        dt2 = ac2.SelectOne(dm2);
        if (dt2.Rows.Count > 0)
        {
            title = dt2.Rows[0]["text"].ToString();
        }
        dm2.Type = "MetaTagDescription";
        dt2 = ac2.SelectOne(dm2);
        if (dt2.Rows.Count > 0)
        {
            desc = dt2.Rows[0]["text"].ToString();
        }
        p += "<?xml version='1.0' encoding='utf-8' ?>" +
            "<siteMap  xmlns='http://schemas.microsoft.com/AspNet/SiteMap-File-1.0' >";
        p += "<siteMapNode url='~/index.aspx' title='" + title + "'  description='" + desc + "' >";
        //-----------------

        title = "ثبت نام سایت";
        desc = "در این بخش می توانید با ثبت نام در سایت از امکانات بیشتری بهره مند گردید";
        p += "<siteMapNode url='~/index.aspx?Type=UserRegister' title='" + title + "'  description='" + desc + "' />";
        title = "جستجو پیشرفته";
        desc = "در این بخش می توانید با امکانات بیشتری به جستجوی محصول مورد نظر خود بپردازید";
        p += "<siteMapNode url='~/index.aspx?Type=Search' title='" + title + "'  description='" + desc + "' />";
        title = "نقشه سایت";
        desc = "در این بخش می توانید با نقشه سایت و امکانات سایت را دسته بندی شده مشاهده نمایید";
        p += "<siteMapNode url='~/index.aspx?Type=SiteMap' title='" + title + "'  description='" + desc + "' />";
        //----------------

        Page_Manage ac = new Page_Manage();
        Page_ManageDatum dm = new Page_ManageDatum();
        dm.Place = "Down";
        DataTable dt = ac.Select_User(dm);
        for (i = 0; i < dt.Rows.Count; i++)
        {
            title = dt.Rows[i]["title"].ToString();
            desc = dt.Rows[i]["MetaDescription"].ToString();
            p += "<siteMapNode url='~/index.aspx?ID_Page=" + dt.Rows[i]["id"].ToString() + "' title='" + title +
                "'  description='" + desc + "' />";
        }
        //---------------

        title = "آرشیو صفحات";
        desc = "در این بخش می توانید با آرشیو صفحات ثبت شده را مشاهده نمایید";
        p += "<siteMapNode url='~/index.aspx?Type=PageArchive' title='" + title + "'  description='" + desc + "' >";
        dm.Place = "Right";
        dt = ac.Select_User(dm);
        for (i = 0; i < dt.Rows.Count; i++)
        {
            title = dt.Rows[i]["title"].ToString();
            desc = dt.Rows[i]["MetaDescription"].ToString();
            p += "<siteMapNode url='~/index.aspx?ID_Page=" + dt.Rows[i]["id"].ToString() + "' title='" + title +
                "'  description='" + desc + "' />";
        }
        p += "</siteMapNode>";
        //---------------


        Product_Grouping ac3 = new Product_Grouping();
        Product_GroupingDatum dm3 = new Product_GroupingDatum();

        dm3.Id = -1;

        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;

        DataTable dt3;
        DataTable dt4;
        DataTable dt5;
        DataTable dt6;

        DataTable dtp;
        Product acp = new Product();
        ProductDatum dmp = new ProductDatum();
        int j = 0;


        dt = ac3.SelectAll(dm3);
        for (i = 0; i < dt.Rows.Count; i++)
        {
            title = dt.Rows[i]["Title"].ToString();
            desc = dt.Rows[i]["MetaDescription"].ToString();
            p += "<siteMapNode url='~/index.aspx?ID_Root=" + dt.Rows[i]["id"].ToString() + "' title='" + title +
                "'  description='" + desc + "' >";

            dm3.Id = int.Parse(dt.Rows[i]["id"].ToString());
            dt2 = ac3.SelectAll(dm3);
            for (i2 = 0; i2 < dt2.Rows.Count; i2++)
            {
                title = dt2.Rows[i2]["Title"].ToString();
                desc = dt2.Rows[i2]["MetaDescription"].ToString();
                p += "<siteMapNode url='~/index.aspx?ID_Root=" + dt2.Rows[i2]["id"].ToString() + "' title='" + title +
                    "'  description='" + desc + "' >";

                dm3.Id = int.Parse(dt2.Rows[i2]["id"].ToString());
                dt3 = ac3.SelectAll(dm3);
                for (i3 = 0; i3 < dt3.Rows.Count; i3++)
                {
                    title = dt3.Rows[i3]["Title"].ToString();
                    desc = dt3.Rows[i3]["MetaDescription"].ToString();
                    p += "<siteMapNode url='~/index.aspx?ID_Root=" + dt3.Rows[i3]["id"].ToString() + "' title='" + title +
                        "'  description='" + desc + "' >";


                    dm3.Id = int.Parse(dt3.Rows[i3]["id"].ToString());
                    dt4 = ac3.SelectAll(dm3);
                    for (i4 = 0; i4 < dt4.Rows.Count; i4++)
                    {
                        title = dt4.Rows[i4]["Title"].ToString();
                        desc = dt4.Rows[i4]["MetaDescription"].ToString();
                        p += "<siteMapNode url='~/index.aspx?ID_Root=" + dt4.Rows[i4]["id"].ToString() + "' title='" + title +
                            "'  description='" + desc + "' >";


                        dm3.Id = int.Parse(dt4.Rows[i4]["id"].ToString());
                        dt5 = ac3.SelectAll(dm3);
                        for (i5 = 0; i5 < dt5.Rows.Count; i5++)
                        {
                            title = dt5.Rows[i5]["Title"].ToString();
                            desc = dt5.Rows[i5]["MetaDescription"].ToString();
                            p += "<siteMapNode url='~/index.aspx?ID_Root=" + dt5.Rows[i5]["id"].ToString() + "' title='" + title +
                                "'  description='" + desc + "' >";



                            dm3.Id = int.Parse(dt5.Rows[i5]["id"].ToString());
                            dt6 = ac3.SelectAll(dm3);
                            for (i6 = 0; i6 < dt6.Rows.Count; i6++)
                            {
                                title = dt6.Rows[i6]["Title"].ToString();
                                desc = dt6.Rows[i6]["MetaDescription"].ToString();
                                p += "<siteMapNode url='~/index.aspx?ID_Root=" + dt6.Rows[i6]["id"].ToString() + "' title='" + title +
                                    "'  description='" + desc + "' >";



                                dmp.Id_Group = int.Parse(dt6.Rows[i6]["id"].ToString());
                                dtp = acp.Select_Product_Group_Node_SiteMap(dmp);
                                for (j = 0; j < dtp.Rows.Count; j++)
                                {
                                    title = dtp.Rows[j]["Title"].ToString();
                                    desc = dtp.Rows[j]["MetaDescription"].ToString();
                                    p += "<siteMapNode url='~/index.aspx?ID_Product=" + dtp.Rows[j]["id"].ToString() +  "' title='" + title +
                                         "'  description='" + desc + "' />";
                                }


                                    p += "</siteMapNode>";
                            }



                            dmp.Id_Group = int.Parse(dt5.Rows[i5]["id"].ToString());
                            dtp = acp.Select_Product_Group_Node_SiteMap(dmp);
                            for (j = 0; j < dtp.Rows.Count; j++)
                            {
                                title = dtp.Rows[j]["Title"].ToString();
                                desc = dtp.Rows[j]["MetaDescription"].ToString();
                                p += "<siteMapNode url='~/index.aspx?ID_Product=" + dtp.Rows[j]["id"].ToString() +  "' title='" + title +
                                     "'  description='" + desc + "' />";
                            }



                            p += "</siteMapNode>";
                        }



                        dmp.Id_Group = int.Parse(dt4.Rows[i4]["id"].ToString());
                        dtp = acp.Select_Product_Group_Node_SiteMap(dmp);
                        for (j = 0; j < dtp.Rows.Count; j++)
                        {
                            title = dtp.Rows[j]["Title"].ToString();
                            desc = dtp.Rows[j]["MetaDescription"].ToString();
                            p += "<siteMapNode url='~/index.aspx?ID_Product=" + dtp.Rows[j]["id"].ToString() + "' title='" + title +
                                 "'  description='" + desc + "' />";
                        }


                        p += "</siteMapNode>";
                    }


                    dmp.Id_Group = int.Parse(dt3.Rows[i3]["id"].ToString());
                    dtp = acp.Select_Product_Group_Node_SiteMap(dmp);
                    for (j = 0; j < dtp.Rows.Count; j++)
                    {
                        title = dtp.Rows[j]["Title"].ToString();
                        desc = dtp.Rows[j]["MetaDescription"].ToString();
                        p += "<siteMapNode url='~/index.aspx?ID_Product=" + dtp.Rows[j]["id"].ToString() + "' title='" + title +
                             "'  description='" + desc + "' />";
                    }

                    p += "</siteMapNode>";
                }

                dmp.Id_Group = int.Parse(dt2.Rows[i2]["id"].ToString());
                dtp = acp.Select_Product_Group_Node_SiteMap(dmp);
                for (j = 0; j < dtp.Rows.Count; j++)
                {
                    title = dtp.Rows[j]["Title"].ToString();
                    desc = dtp.Rows[j]["MetaDescription"].ToString();
                    p += "<siteMapNode url='~/index.aspx?ID_Product=" + dtp.Rows[j]["id"].ToString() +  "' title='" + title +
                         "'  description='" + desc + "' />";
                }

                p += "</siteMapNode>";
            }

            dmp.Id_Group = int.Parse(dt.Rows[i]["id"].ToString());
            dtp = acp.Select_Product_Group_Node_SiteMap(dmp);
            for (j = 0; j < dtp.Rows.Count; j++)
            {
                title = dtp.Rows[j]["Title"].ToString();
                desc = dtp.Rows[j]["MetaDescription"].ToString();
                p += "<siteMapNode url='~/index.aspx?ID_Product=" + dtp.Rows[j]["id"].ToString() + "' title='" + title +
                     "'  description='" + desc + "' />";
            }

            p += "</siteMapNode>";

        }


        //---------------
        p += "</siteMapNode></siteMap>";
        File.AppendAllText(Server.MapPath("~//administrator//files//Web.sitemap"), p, System.Text.Encoding.UTF8);
        Response.Redirect("index.aspx");
    }
}
