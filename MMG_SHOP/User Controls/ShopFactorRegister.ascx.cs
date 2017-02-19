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
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["Login_User"] == null)
        {
            Label30.Visible = true;
            Label1.Visible = false;
            Login1.Visible = true;
            ImageButton5.Visible = false;
        }
        else
        {
            Label30.Visible = false;
            Label1.Visible = true;
            Login1.Visible = false;
            ImageButton5.Visible = true;

        }

        if (!IsPostBack)
        {
            fillgrid();
            FillOneRecord();

        }
        if (GridView1.Rows.Count <= 0)
        {
            ImageButton5.Visible = false;
            Label1.Visible = false;
            Image6.Visible = false;
        }

    }

    private void FillOneRecord()
    {
        OneRecord aco = new OneRecord();
        OneRecordDatum dmo = new OneRecordDatum();
        DataTable dt;
        dmo.Type = "Shoping1";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0]["title"].ToString();
            Label12.Text = dt.Rows[0]["text"].ToString();
        }

    }



    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = (DataTable)Session["ProductTable"];
        dt.Rows.RemoveAt(e.RowIndex);
        Session["ProductTable"] = dt;
        fillgrid();
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Calcuate();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        user ac = new user();
        userDatum dm = new userDatum();

        dm.Email = TextTitle.Text;
        dm.Pass = TextBox1.Text;
        DataTable dt = ac.Check_Login(dm);
        if (dt.Rows.Count > 0)
        {
            Response.Cookies.Add(new HttpCookie("Family_User", dt.Rows[0]["name"].ToString() + " " + dt.Rows[0]["family"].ToString()));
            Response.Cookies.Add(new HttpCookie("Email_User", TextTitle.Text));
            Response.Cookies.Add(new HttpCookie("Id_User", dt.Rows[0]["id"].ToString()));

            Response.Cookies.Add(new HttpCookie("Login_User", "True"));
            Label30.Visible = false;
            Label1.Visible = true;
            Login1.Visible = false;
            ImageButton5.Visible = true;
            if (GridView1.Rows.Count <= 0)
            {
                ImageButton5.Visible = false;
                Label1.Visible = false;
                Image6.Visible = false;

            }


        }
        else
        {

        }
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        decimal id_user;
        string user_name;
        if (Request.Cookies["Login_User"]==null)
        {
            Label30.Visible = true;
            Login1.Visible = true;
            TextTitle.Focus();

        }
        else
        {
            Label30.Visible = false;
            id_user = decimal.Parse(Request.Cookies["Id_User"].Value);
            user_name = Request.Cookies["Family_User"].Value;

            user ac = new user();
            userDatum dm = new userDatum();
            dm.Id = id_user;
            DataTable dt = ac.select_one_user(dm);
            user_name = dt.Rows[0]["name"].ToString() + " " + dt.Rows[0]["family"].ToString();



        //-----------------------------------------------------------------------------------------------//
             Shoping ac2 = new Shoping();
             ShopingDatum dm2 = new ShopingDatum();

            PublicClass pc = new PublicClass();

            dm2.Id_User = id_user;
            dm2.Register_Date = pc.GetDate();
            Random rnd = new Random();
            string f_code = null;
            for (int j = 0; j < 16; j++)
            {
                f_code = f_code + rnd.Next(0, 9).ToString();
            }
            dm2.Factor_Code = f_code;
            dm2.Tasx = decimal.Parse(Label33.Text);
            dm2.Send_Price = decimal.Parse(Label19.Text);
            dm2.Sum_Price = decimal.Parse(Label22.Text);
            dm2.Factor_Condition = "در تاریخ " + pc.GetDate() + " سفارش ثبت شد";
            dm2.Customer_Name = user_name;

            decimal id_factor = ac2.Insert_Factor(dm2);

            dm2.Id_Factor = id_factor;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                dm2.Count = int.Parse(((DropDownList)(GridView1.Rows[i].FindControl("DropDownList1"))).SelectedValue);
                dm2.Id_Product = decimal.Parse(((Label)(GridView1.Rows[i].FindControl("lblid"))).Text);

                ac2.Insert_Factor_Details(dm2);
                update_number_shop(decimal.Parse(((Label)(GridView1.Rows[i].FindControl("lblid"))).Text), int.Parse(((DropDownList)(GridView1.Rows[i].FindControl("DropDownList1"))).SelectedValue));
            }
            Session["ProductTable"] = null;
            Response.Redirect("~/index.aspx?Type=ShopPeymentRegister&Factor_Code=" + f_code + "&Id_Factor=" + id_factor + "&Sum_Price=" + decimal.Parse(Label22.Text));
        }


    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }

    //-----------------------------------------------------------------------------------------------------------//
    //-----------------------------------------------------------------------------------------------------------//
    //-----------------------------------------------------------------------------------------------------------//
    //-----------------------------------------------------------------------------------------------------------//
    //-----------------------------------------------------------------------------------------------------------//
    void update_number_shop(decimal id_product, decimal count)
    {
        Product ac = new Product();
        ProductDatum dm = new ProductDatum();
        dm.Number_Shop = count;
        dm.Id = id_product;
        ac.Update_Number_Shop(dm);

    }

    void fillgrid()
    {

        GridView1.DataSource = (DataTable)Session["ProductTable"];
        GridView1.DataBind();
        Calcuate();
        if (GridView1.Rows.Count <= 0)
        {
            ImageButton5.Visible = false;
            Label1.Visible = false;
            Image6.Visible = false;
        }


    }

    void Calcuate()
    {
        Label sum;
        decimal Price;
        decimal Tasx = 0;
        int Count;
        decimal Sum_Price;
        decimal All_Sum_Price = 0;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            sum = (Label)(GridView1.Rows[i].FindControl("Label14"));
            Price = decimal.Parse(((Label)(GridView1.Rows[i].FindControl("Label10"))).Text);
            Count = int.Parse(((DropDownList)(GridView1.Rows[i].FindControl("DropDownList1"))).SelectedValue);
            Sum_Price = Price * Count;
            All_Sum_Price = All_Sum_Price + Sum_Price;

            sum.Text = BLL.PublicClass.numberToMoney(Sum_Price.ToString());
        }
        Label15.Text = BLL.PublicClass.numberToMoney(All_Sum_Price.ToString());
        OneRecord ac = new OneRecord();
        OneRecordDatum dm = new OneRecordDatum();
        int maliat = 0;

        DataTable dt;
        dm.Type = "Maliat";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            maliat =int.Parse( dt.Rows[0]["text"].ToString());
        }
        int HazineErsal = 0;

        dm.Type = "HazineErsal";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            Label19.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["text"].ToString());
            HazineErsal = int.Parse(dt.Rows[0]["text"].ToString());
        }

        Label9.Text =maliat.ToString()+ "% مالیات :"; 
        Tasx = All_Sum_Price * maliat;
        Tasx = (int)(Tasx / 100);
        Label33.Text = BLL.PublicClass.numberToMoney(Tasx.ToString());
        if (Label33.Text == "0")
        {
            lblTasx.Visible = false;
        }


        Label22.Text = BLL.PublicClass.numberToMoney((All_Sum_Price + HazineErsal + Tasx).ToString());
    }
}
