using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webbanhang.App_Code;
public partial class login : System.Web.UI.Page
{
    connectSQLDataContext dt = new connectSQLDataContext();
    protected void Page_Load(object sender, EventArgs e)

    {
        if (!IsPostBack)
        {
            if (Session["TenDN"] != null )
            {
                Session["admin"] = true;
                txtTK.Focus();
            }
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = XLDL.GetData("Select * From DangNhap where TaiKhoan='" + txtTK.Text + "' and MatKhau='" + txtMk.Text + "'");
            if (dt.Rows.Count != 0)
            {
                Session["TenDN"] = txtTK.Text;
                Response.Redirect("~/TrangChu.aspx");
            }
            else
                lblThongBao.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
        }
        catch
        {
            lblThongBao.Text = "Thất bại!";
        }
    }
}

    