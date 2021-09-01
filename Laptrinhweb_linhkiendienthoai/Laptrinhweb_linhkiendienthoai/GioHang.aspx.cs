using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webbanhang.App_Code;


public partial class GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if ((bool)Session["admin"]==false)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {

          
                if (Request.QueryString["MaSp"] != null)
                {
                    string MaSP = (Request.QueryString["MaSp"]);
                      DataTable dt = XLDL.GetData("Select Ten,DonGia From SanPham where MaSanPham ='" + MaSP + "'");
               
                    String Ten = dt.Rows[0][0].ToString();
                    int DonGia = int.Parse(dt.Rows[0][1].ToString());
                    int Soluong = 1;
               
                     lblTenDN.Text = Session["TenDN"].ToString();
                    ThemVaoGioHang(MaSP, Ten, DonGia, Soluong);
                }
                if (Session["Giohang"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)Session["Giohang"];
                    System.Decimal tongThanhTien = 0;
                    foreach (DataRow r in dt.Rows)
                    {
                        r["Thanhtien"] = Convert.ToInt32(r["Soluong"])
                       * Convert.ToDecimal(r["DonGia"]);
                        tongThanhTien +=
                       Convert.ToDecimal(r["Thanhtien"]);
                        lblTongTien.Text =
                       tongThanhTien.ToString();
                    }
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
    public void ThemVaoGioHang(string MaSP, string Ten, int DonGia, int Soluong)
    {
        DataTable dt;
        if (Session["Giohang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("MaSanPham");
            dt.Columns.Add("Ten");
            dt.Columns.Add("Dongia");
            dt.Columns.Add("Soluong");
            dt.Columns.Add("Thanhtien");
        }
        else
            dt = (DataTable)Session["Giohang"];
        int dong = SPdacotronggiohang(MaSP, dt);
        if (dong != -1)
        {
            dt.Rows[dong]["Soluong"] =
           Convert.ToInt32(dt.Rows[dong]["Soluong"]) + Soluong;
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["MaSanPham"] = MaSP;
            dr["Ten"] = Ten;
            dr["Dongia"] = DonGia;
            dr["Soluong"] = Soluong;
            dr["Thanhtien"] = DonGia * Soluong;
            dt.Rows.Add(dr);
        }
        Session["Giohang"] = dt;
    }
    public static int SPdacotronggiohang(string MaSP, DataTable dt)
    {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if ((dt.Rows[i]["MaSanPham"].ToString()) == MaSP)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }



    protected void btnThanhToan_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Thanhtoan.aspx");
    }

    protected void btnTiepTucMua_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TrangChu.aspx");
    }

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        Session["Giohang"] = null;
        Response.Redirect("~/GioHang.aspx");
    }

    protected void btnCapNhat_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["Giohang"];
        foreach (GridViewRow r in GridView1.Rows)
        {
            foreach (DataRow dr in dt.Rows)
            {
                if (Convert.ToString(GridView1.DataKeys[r.DataItemIndex].Value) == dr["MaSanPham"].ToString())
                {
                    TextBox t = (TextBox )r.Cells[2].FindControl("txtSoLuong");
                    if (Convert.ToInt32(t.Text) <= 0)
                        dt.Rows.Remove(dr);
                    else
                        dr["SoLuong"] = t.Text;
                    break;
                }
            }
        }
        Session["Giohang"] = dt;
        Response.Redirect("~/GioHang.aspx");
    }

    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["Giohang"];
                dt.Rows.RemoveAt(chiso);
                Session["Giohang"] = dt;
                Response.Redirect("~/Giohang.aspx");
            }
            catch
            {
                Response.Redirect("~/Giohang.aspx");
            }

        }
    }
}

