using System;
using BLL;
using Common;
using System.Data;
using System.Web.UI.HtmlControls;
public partial class user_controls_product_show : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }
    }

    private void FillGrid()
    {
        Arm ac = new Arm();
        ArmDatum dm = new ArmDatum();
        DataList1.DataSource = ac.Select_All_User();
        DataList1.DataBind();

        if (((DataTable)DataList1.DataSource).Rows.Count == 0)
        {
            System.Web.UI.HtmlControls.HtmlControl ctrl = (HtmlControl)this.Parent.Parent ;
            ctrl.Visible = false;
        }

    }
}
