using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webbanhang.App_Code;

public partial class XuLyDonHang : System.Web.UI.Page
{
    
    string ketqua = "";
    private string thaotac = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        thaotac = Request.Params["ThaoTac"];
        switch(thaotac)
        {
            case "ThemVaoGioHang":
                ThemVaoGioHang();
                break;
        }
    }

    private void ThemVaoGioHang()
    {
        string id = Request.Params["id"];
        string soluong = Request.Params["soluong"];
        DataTable dt = new DataTable();
        dt = linhkiendienthoai.ChiTietDonDatHang.Thongtin_Sanpham_by_id(id);
        if (dt.Rows.Count>0)
        {
            if(Session["GioHang"]==null)
            {
                DataTable dtGioHang = new DataTable();
                dtGioHang.Columns.Add("Ten");
                dtGioHang.Columns.Add("DonGia");
                dtGioHang.Columns.Add("HinhMinhHoa");
                dtGioHang.Columns.Add("MaSanPham");
                dtGioHang.Columns.Add("Soluong");
                //lưu thông tin của sản phẩm vào table
                dtGioHang.Rows.Add(dt.Rows[0]["Ten"].ToString(), dt.Rows[0]["DonGia"].ToString(),
                                    dt.Rows[0]["HinhMinhHoa"].ToString(), dt.Rows[0]["MaSanPham"], ToString(),
                                     soluong);
                Session["GioHang"] = dtGioHang;
            }
            else
            {
                DataTable dtGioHang = new DataTable();
                dtGioHang = (DataTable)Session["GioHang"];
                int vitriSpTrongGioHang = -1;
                for (int i = 0; i < dtGioHang.Rows.Count; i++)
                {
                    if (dtGioHang.Rows[i]["MaSanPham"].ToString() == id)
                    {
                        vitriSpTrongGioHang = i;
                        break;
                    }
                }
                if (vitriSpTrongGioHang != -1)
                {
                    int soluonHienTai = int.Parse(dtGioHang.Rows[vitriSpTrongGioHang]["Soluong"].ToString());
                    soluonHienTai += int.Parse(soluong);
                    dtGioHang.Rows[vitriSpTrongGioHang]["Soluong"] = soluonHienTai;
                    Session["GioHang"] = dtGioHang;
                }
                else
                {
                    dtGioHang.Rows.Add(dt.Rows[0]["Ten"].ToString(), dt.Rows[0]["DonGia"].ToString(),
                                     dt.Rows[0]["HinhMinhHoa"].ToString(), dt.Rows[0]["MaSanPham"], ToString(),
                                      soluong);
                    Session["GioHang"] = dtGioHang;
                }
            }
        }
        else
        {
            ketqua = "Không tồn tại sản phẩm này";
        }
        Response.Write(ketqua);
    }
    
}