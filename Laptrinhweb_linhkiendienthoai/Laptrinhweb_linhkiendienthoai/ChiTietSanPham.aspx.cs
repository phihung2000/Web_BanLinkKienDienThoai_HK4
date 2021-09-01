using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChiTietSanPham : System.Web.UI.Page
{
    protected string MaSp = "";
    private string Ten = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Ten = Request.QueryString["Ten"];
        
        
        MaSp = Request.QueryString["MaSp"];
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-T51L3QI\SQLEXPRESS;Initial Catalog=QL_linhKienDienThoai;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("sp_HienThiChiTietCucSac", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@MaSP", SqlDbType.NChar, 10);
        cmd.Parameters["@MaSP"].Value = MaSp;
        cmd.Connection = cn;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);


        //save the result in data table
        DataTable dt = new DataTable();
        
        ad.SelectCommand = cmd;
        ad.Fill(dt);
        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = dt.DefaultView;
        pgitems.AllowPaging = true;
        DataList1.DataSource = pgitems;
        DataList1.DataBind();
        
    }


    protected void TextBox1_DataBinding(object sender, EventArgs e)
    {
        
    }
}