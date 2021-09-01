using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webbanhang.App_Code;

public partial class DoiMatKhau : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {

    }

    protected void btnDongY_Click(object sender, EventArgs e)
    {
        try
        {
            String TenDN = txtDN.Text;
            String Matkhau = txtMK.Text;
            String Matkhaumoi = txtMKMoi.Text;
            String StrCnn = ConfigurationManager.ConnectionStrings["QL_linhKienDienThoaiConnectionString"].
           ConnectionString.ToString();
            SqlConnection cnn = new SqlConnection(StrCnn);
            String LenhSQL = "select * from DangNhap where TaiKhoan='" + TenDN + "' and MatKhau = '" + Matkhau + "'";
            DataTable dt = XLDL.GetData(LenhSQL);
            if (dt.Rows.Count == 0)
                lblLoi.Text = "Sai tên đăng nhập hoặc mật khẩu";
            else
            {
                //Thực thi lệnh dieu chinh dữ liệu
                string str = "UPDATE DangNhap Set MatKhau='" + Matkhaumoi + "' WHERE TaiKhoan = '" + TenDN + "'";
                XLDL.Execute(str);
                Response.Redirect("~/login.aspx");
            }
        }
        catch
        {
            lblLoi.Text = "Thao tác cập nhật dữ liệu thất bại!";
        }
    }


}