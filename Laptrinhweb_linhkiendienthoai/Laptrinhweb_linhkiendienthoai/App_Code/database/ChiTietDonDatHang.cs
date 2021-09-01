using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using Webbanhang.App_Code;
using linhkiendienthoai;

namespace linhkiendienthoai
{
    /// <summary>
    /// Summary description for ChiTietDonDatHang
    /// </summary>
    public class ChiTietDonDatHang
    {
        
        public static DataTable Thongtin_Chitietdondathang_by_madondathang(string madondathang)
        {
            OleDbCommand cmd = new OleDbCommand("sp_HienThiChiTietCucSac");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaSP", madondathang);
            return SQLDatabase.GetData(cmd);
        }
        public static DataTable Thongtin_Sanpham_by_id(string MaSP)
        {
            OleDbCommand cmd = new OleDbCommand("sp_HienThiChiTietCucSac");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaSP", MaSP);
            return SQLDatabase.GetData(cmd);
        }

    }
    
}
