<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print_factor_admin.aspx.cs" Inherits="forms_print_factor1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>فاکتور فروش</title>
<style>
body
{
font-family:tahoma;
font-size:8pt;
}
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 238px;
    }
    .style3
    {
        width: 52px;
    }
</style></head>
<body dir="rtl" style="text-align: center">
    <form id="form1" runat="server">
        <div style="width: 710px; height: 75px;">
            <table cellspacing="0" style="border: 2px solid #000000;" width="100%">
                <tr>
                    <td class="style2" rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Administrator/files/Design/print_right.gif" Height="858px"
                            Width="56px" />
                    </td>
                    <td valign="top" height="100%">
                        <table cellpadding="0" cellspacing="0" width="100%" style="height: 237px">
                            <tr>
                                <td align="right" class="style5">
                                    <asp:Image ID="Image2" runat="server" Height="86px" ImageUrl="~/Administrator/files/Design/print_header.gif"
                                        Width="383px" />
                                </td>
                                <td align="right" width="250">
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    <asp:Label ID="Label8" runat="server" CssClass="text_input_bold_black" Text="تاريخ:"
                                        Width="58px" Height="20px"></asp:Label>
                                    <asp:Label ID="Label10" runat="server" CssClass="text_input_black_b_r" Text="Label"
                                        Width="80px" Font-Bold="True" Height="20px"></asp:Label>&nbsp;<br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    <asp:Label ID="Label9" runat="server" CssClass="text_input_bold_black" Text="شماره:"
                                        Width="58px" Height="20px"></asp:Label>
                                    <asp:Label ID="Label11" runat="server" CssClass="text_input_black_b_r" Text="Label"
                                        Width="80px" Font-Bold="True" Height="20px"></asp:Label>&nbsp;<br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    <asp:Label ID="Label21" runat="server" CssClass="text_input_bold_black" Text="کد پيگيري:"
                                        Width="58px" Height="20px"></asp:Label>
                                    <asp:Label ID="Label20" runat="server" CssClass="text_input_black_b_r" Text="Label"
                                        Width="80px" Font-Bold="True" Height="20px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" height="2" class="tb_row2_border">
                                    <br />
                                    <asp:Label ID="Label6" runat="server" CssClass="text_header_bold_14" Text="فاکتور فروش " Font-Bold="True" Font-Size="10pt"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="tb_row2_border" align="right" valign="top" style="height: 52px">
                                    &nbsp;<asp:Label ID="Label12" runat="server" CssClass="text_input_bold_black" Text="نام خريدار:"
                                        Width="70px" Height="20px"></asp:Label>
                                    &nbsp;<asp:Label ID="Label16" runat="server" CssClass="text_input_black_b_r" Text="Label"
                                        Width="550px" Font-Bold="True" Height="20px"></asp:Label>
                                    <br />
                                    &nbsp;<asp:Label ID="Label13" runat="server" CssClass="text_input_bold_black" Text="آدرس:"
                                        Width="70px" Height="20px"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label17" runat="server" CssClass="text_input_black_b_r" Text="Label" Font-Bold="True" Height="20px"></asp:Label>
                                    <br />
                                    &nbsp;<asp:Label ID="Label14" runat="server" CssClass="text_input_bold_black" Text="تلفن:"
                                        Width="70px" Height="20px"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label18" runat="server" CssClass="text_input_black_b_r" Text="Label" Font-Bold="True" Height="20px"></asp:Label>
                                    <br />
                                    &nbsp;<asp:Label ID="Label15" runat="server" CssClass="text_input_bold_black" Text="ايميل:"
                                        Width="70px" Height="20px"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label19" runat="server" CssClass="text_input_black_b_r" Text="Label" Font-Bold="True" Height="20px"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="tb_row2_border" colspan="2">
                                    <div align="center">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Names="Tahoma"
                                            Font-Size="8pt" Width="100%" PageSize="20" Font-Bold="False" GridLines="None"
                                            CellPadding="4" ForeColor="#333333" EmptyDataText="شما مشتري گرامي هنوز محصولي به سبد خريد اضافه نکرديد!"
                                            CssClass="text_input_blue">
                                            <FooterStyle Font-Bold="True" />
                                            <RowStyle BackColor="#F6F5F1" ForeColor="#333333" BorderColor="#99FF99" />
                                            <Columns>
                                                <asp:TemplateField HeaderText=" محصول" ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text_input_blue" Height="20px"
                                                            NavigateUrl='<%# "~/index.aspx?ID_Product="+Eval("id_product").ToString() + "&ID_Root="+Eval("id_group").ToString() %>'
                                                            Text='<%# Eval("title") %>' Font-Underline="False"></asp:HyperLink>
                                                        <br />
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="قيمت ( &lt;img src='../Administrator/files/Design/PriceUnit.gif'&gt; )">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label22" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("price").ToString()) %>' CssClass="text_input_bold_black"
                                                            Height="18px"></asp:Label>
                                                        <br />
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="تعداد">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("product_count") %>' CssClass="text_input_bold_black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="جمع ( &lt;img src='../Administrator/files/Design/PriceUnit.gif'&gt; )">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label24" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("fainalprice").ToString()) %>' CssClass="text_input_bold_black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="120px" />
                                                </asp:TemplateField>
                                            </Columns>
                                            <PagerStyle HorizontalAlign="Center" />
                                            <SelectedRowStyle Font-Bold="True" />
                                            <HeaderStyle BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Tahoma"
                                                Font-Size="8pt" BackColor="#ECE6DD" ForeColor="#4F4F4F" />
                                            <AlternatingRowStyle BorderColor="White" BorderStyle="Solid" BorderWidth="2px" BackColor="White" />
                                        </asp:GridView>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="tb_row2_border" colspan="2">
                                    <table class="style1">
                                        <tr>
                                            <td class="style3">
                                                ملاحظات</td>
                                            <td>
                                                <asp:Label ID="lbDescription" runat="server" Width="100%"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="tb_row2_border">
                                <td class="tb_row2_border" colspan="2">
                                    <div align="left">
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td align="left" valign="top">
                                                    <br />
                                                    <br />
                                                </td>
                                                <td align="left" valign="top">
                                                    <br />
                                                    <asp:Label ID="Label37" runat="server" CssClass="text_input_black" Text="جمع خريد شما :" Height="16px"></asp:Label>&nbsp;<br />
                                                    <asp:Label ID="Label33" runat="server" CssClass="text_input_black" Text="3%مالیات :" Height="16px"></asp:Label>&nbsp;<br />
                                                    <asp:Label ID="Label38" runat="server" CssClass="text_input_black" Text="هزينه ارسال :" Height="16px"></asp:Label>&nbsp;<br />
                                                    <asp:Label ID="Label43" runat="server" CssClass="text_input_black" Text="تخفیف :" Height="16px"></asp:Label>&nbsp;
                                                    <br />
                                                    <asp:Label ID="Label39" runat="server" CssClass="text_input_bold_red" Text="مبلغ کل فاکتور :" Height="16px"></asp:Label>&nbsp;
                                                </td>
                                                <td align="right" valign="top" width="120">
                                                    <br />
                                                    &nbsp;<asp:Label ID="Label36" style="text-align:center;" runat="server" CssClass="text_input_bold_black" Text="Label" Width="79px" Font-Bold="True" Height="16px"></asp:Label>
                                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" ></asp:Image>&nbsp;<br />
                                                    &nbsp;<asp:Label ID="Label34" runat="server" style="text-align:center;" CssClass="text_input_bold_black" Text="Label" Width="79px" Font-Bold="True" Height="16px"></asp:Label>
                                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" ></asp:Image>&nbsp;<br />
                                                    &nbsp;<asp:Label ID="Label31" runat="server" style="text-align:center;" CssClass="text_input_bold_black" Text="Label" Width="79px" Font-Bold="True" Height="16px"></asp:Label>
                                                    <asp:Image ID="Image6" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" ></asp:Image>
                                                    &nbsp;<br />
                                                    &nbsp;<asp:Label ID="Label44" runat="server" style="text-align:center;" CssClass="text_input_bold_black" Text="Label" Width="79px" Font-Bold="True" Height="16px"></asp:Label>&nbsp;<asp:Image ID="Image5" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" ></asp:Image><br />
                                                    &nbsp;<asp:Label ID="Label32" runat="server" style="text-align:center;" CssClass="text_input_bold_black" Text="Label" Width="79px" Font-Bold="True" Height="16px"></asp:Label>
                                                    <asp:Image ID="Image7" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" ></asp:Image>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="tb_row2_border" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td valign="bottom" height="100%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td valign="bottom" height="100%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td valign="bottom" align=right>
                       
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td valign="bottom" height="100%">
                        <div align="right" style="border-top-style: solid; border-top-width: 2px; border-top-color: #000000">
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label></div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
