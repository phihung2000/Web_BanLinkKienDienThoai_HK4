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

public partial class DangKyThanhVien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDangky_Click(object sender, EventArgs e)
    {
        try
        {
            String TenDN = txtTaikhoan.Text;
            String Matkhau = txtMatkhau.Text;
            String Matkhaumoi = txtNhaplaimk.Text;
            String hovaten = txtHoten.Text;
            String ngaysinh = txtNgaysinh.Text;
            String email = txtEmail.Text;
            String thunhap = txtThunhap.Text;
            //String gioitinh = gioitinh.ToString();
            String StrCnn = ConfigurationManager.ConnectionStrings["QL_linhKienDienThoaiConnectionString"].
           ConnectionString.ToString();
           // SqlConnection cnn = new SqlConnection(StrCnn);
           // String LenhSQL = "select * from DangNhap where TaiKhoan='" + TenDN + "' and MatKhau = '" + Matkhau + "'";
           // DataTable dt = XLDL.GetData(LenhSQL);
           // if (dt.Rows.Count == 0)
           //     lblThongbao.Text = "Sai tên đăng nhập hoặc mật khẩu";
           // else
           // {
                //Thực thi lệnh dieu chinh dữ liệu
                // string str = "UPDATE DangNhap Set MatKhau='" + Matkhaumoi + "' WHERE TaiKhoan = '" + TenDN + "'";
                string str = " INSERT INTO DangNhap(TaiKhoan,MatKhau,Hovaten,NgaySinh,GioiTinh,Email,ThuNhap) VALUES ('" + TenDN + "','" + Matkhau + "', N'" + hovaten + "', '" + ngaysinh + "',1,'" + email + "','" + thunhap + "')";
                XLDL.Execute(str);
                Response.Redirect("~/login.aspx");

            //}
        }
        catch
        {
            lblThongbao.Text = "Thao tác cập nhật dữ liệu thất bại!";
        }
    }
}