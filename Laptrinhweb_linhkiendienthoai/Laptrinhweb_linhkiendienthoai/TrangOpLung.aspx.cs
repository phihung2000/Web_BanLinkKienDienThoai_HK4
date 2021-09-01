using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Collections;

public partial class TrangOpLung : System.Web.UI.Page
{
    private int PageSize = 4;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRepeater();
        }
    }

    protected void btnTimkiem_Click(object sender, EventArgs e)
    {
        string timkiem = txtTimKiem.Text;
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-T51L3QI\SQLEXPRESS;Initial Catalog=QL_linhKienDienThoai;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("sp_TimKiemOpLung", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Ten", SqlDbType.NVarChar, 128);
        cmd.Parameters["@Ten"].Value = timkiem;
        cmd.Connection = cn;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        //cmd.CommandText = "select [Ten], [Hang], [HinhMinhHoa], [DonGia]  from TaiNghe where (Ten like '%'+)";

        //save the result in data table
        DataTable dt = new DataTable();
        ad.SelectCommand = cmd;
        ad.Fill(dt);

        //Create the PagedDataSource that will be used in paging
        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = dt.DefaultView;
        pgitems.AllowPaging = true;

        //Control page size from here 
        pgitems.PageSize = 6;
        pgitems.CurrentPageIndex = PageNumber;
        if (pgitems.PageCount > 1)
        {
            rptPaging.Visible = true;
            System.Collections.ArrayList pages = new ArrayList();
            for (int i = 0; i <= pgitems.PageCount - 1; i++)
            {
                pages.Add((i + 1).ToString());
            }
            rptPaging.DataSource = pages;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }

        //Finally, set the datasource of the repeater
        DataList1.DataSource = pgitems;
        DataList1.DataBind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            giaduoi500();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (IsPostBack)
        {

            if (DropDownList1.SelectedValue == "0")
            {

                sortA_Z();


            }
            if (DropDownList1.SelectedValue == "1")
            {

                SortTangDan();


            }
            if (DropDownList1.SelectedValue == "2")
            {

                Sort_GiaGiamDan();


            }

        }
    }
    protected void rptPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
        BindRepeater();
    }
    public int PageNumber
    {
        get
        {
            if (ViewState["PageNumber"] != null)
            {
                return Convert.ToInt32(ViewState["PageNumber"]);
            }
            else
            {
                return 0;
            }
        }
        set { ViewState["PageNumber"] = value; }
    }
    private void BindRepeater()
    {
        //Do your database connection stuff and get your data
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-T51L3QI\SQLEXPRESS;Initial Catalog=QL_linhKienDienThoai;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.CommandText = "SELECT [Ten], [Hang], [HinhMinhHoa], [DonGia],MaOpLung  FROM [OpLung]";

        //save the result in data table
        DataTable dt = new DataTable();
        ad.SelectCommand = cmd;
        ad.Fill(dt);

        //Create the PagedDataSource that will be used in paging
        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = dt.DefaultView;
        pgitems.AllowPaging = true;

        //Control page size from here 
        pgitems.PageSize = 6;
        pgitems.CurrentPageIndex = PageNumber;
        if (pgitems.PageCount > 1)
        {
            rptPaging.Visible = true;
            System.Collections.ArrayList pages = new ArrayList();
            for (int i = 0; i <= pgitems.PageCount - 1; i++)
            {
                pages.Add((i + 1).ToString());
            }
            rptPaging.DataSource = pages;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }

        //Finally, set the datasource of the repeater
        DataList1.DataSource = pgitems;
        DataList1.DataBind();
    }
    private void giaduoi500()
    {
        //Do your database connection stuff and get your data
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-T51L3QI\SQLEXPRESS;Initial Catalog=QL_linhKienDienThoai;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.CommandText = "SELECT [Ten], [Hang], [HinhMinhHoa], [DonGia],MaOpLung FROM [OpLung] where DonGia<=500.000";

        //save the result in data table
        DataTable dt = new DataTable();
        ad.SelectCommand = cmd;
        ad.Fill(dt);

        //Create the PagedDataSource that will be used in paging
        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = dt.DefaultView;
        pgitems.AllowPaging = true;

        //Control page size from here 
        pgitems.PageSize = 6;
        pgitems.CurrentPageIndex = PageNumber;
        if (pgitems.PageCount > 1)
        {
            rptPaging.Visible = true;
            System.Collections.ArrayList pages = new ArrayList();
            for (int i = 0; i <= pgitems.PageCount - 1; i++)
            {
                pages.Add((i + 1).ToString());
            }
            rptPaging.DataSource = pages;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }

        //Finally, set the datasource of the repeater
        DataList1.DataSource = pgitems;
        DataList1.DataBind();
    }
    private void sortA_Z()
    {
        //Do your database connection stuff and get your data
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-T51L3QI\SQLEXPRESS;Initial Catalog=QL_linhKienDienThoai;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.CommandText = "select [Ten], [Hang], [HinhMinhHoa], [DonGia],MaOpLung  from OpLung order by Ten asc";

        //save the result in data table
        DataTable dt = new DataTable();
        ad.SelectCommand = cmd;
        ad.Fill(dt);

        //Create the PagedDataSource that will be used in paging
        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = dt.DefaultView;
        pgitems.AllowPaging = true;

        //Control page size from here 
        pgitems.PageSize = 6;
        pgitems.CurrentPageIndex = PageNumber;
        if (pgitems.PageCount > 1)
        {
            rptPaging.Visible = true;
            System.Collections.ArrayList pages = new ArrayList();
            for (int i = 0; i <= pgitems.PageCount - 1; i++)
            {
                pages.Add((i + 1).ToString());
            }
            rptPaging.DataSource = pages;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }

        //Finally, set the datasource of the repeater
        DataList1.DataSource = pgitems;
        DataList1.DataBind();
    }
    private void SortTangDan()
    {
        //Do your database connection stuff and get your data
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-T51L3QI\SQLEXPRESS;Initial Catalog=QL_linhKienDienThoai;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.CommandText = "select [Ten], [Hang], [HinhMinhHoa], [DonGia],MaOpLung  from OpLung order by DonGia asc";

        //save the result in data table
        DataTable dt = new DataTable();
        ad.SelectCommand = cmd;
        ad.Fill(dt);

        //Create the PagedDataSource that will be used in paging
        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = dt.DefaultView;
        pgitems.AllowPaging = true;

        //Control page size from here 
        pgitems.PageSize = 6;
        pgitems.CurrentPageIndex = PageNumber;
        if (pgitems.PageCount > 1)
        {
            rptPaging.Visible = true;
            System.Collections.ArrayList pages = new ArrayList();
            for (int i = 0; i <= pgitems.PageCount - 1; i++)
            {
                pages.Add((i + 1).ToString());
            }
            rptPaging.DataSource = pages;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }

        //Finally, set the datasource of the repeater
        DataList1.DataSource = pgitems;
        DataList1.DataBind();
    }
    private void Sort_GiaGiamDan()
    {
        //Do your database connection stuff and get your data
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-T51L3QI\SQLEXPRESS;Initial Catalog=QL_linhKienDienThoai;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.CommandText = "select [Ten], [Hang], [HinhMinhHoa], [DonGia],MaOpLung  from OpLung order by DonGia DESC";

        //save the result in data table
        DataTable dt = new DataTable();
        ad.SelectCommand = cmd;
        ad.Fill(dt);

        //Create the PagedDataSource that will be used in paging
        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = dt.DefaultView;
        pgitems.AllowPaging = true;

        //Control page size from here 
        pgitems.PageSize = 6;
        pgitems.CurrentPageIndex = PageNumber;
        if (pgitems.PageCount > 1)
        {
            rptPaging.Visible = true;
            System.Collections.ArrayList pages = new ArrayList();
            for (int i = 0; i <= pgitems.PageCount - 1; i++)
            {
                pages.Add((i + 1).ToString());
            }
            rptPaging.DataSource = pages;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }

        //Finally, set the datasource of the repeater
        DataList1.DataSource = pgitems;
        DataList1.DataBind();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}