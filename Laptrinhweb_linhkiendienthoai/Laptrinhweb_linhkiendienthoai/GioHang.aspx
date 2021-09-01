<%@ Page Title="" Language="C#" MasterPageFile="~/left_baner_footer.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .soluong{
            width:100px;
        }
    </style>
    <asp:Label ID="Label1" runat="server" Text="GIỎ HÀNG CỦA BẠN - " Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
<asp:Label ID="lblTenDN" runat="server"></asp:Label>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowCommand="GridView1_RowCommand1">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="MaSanPham" HeaderText="Mã  Sản  Phẩm" />
            <asp:BoundField DataField="Ten" HeaderText="Tên Sản Phẩm" />
            <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" />
            <asp:TemplateField HeaderText="Số Lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" CssClass="soluong" runat="server" Text='<%# Eval("Soluong") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" />
            <asp:ButtonField ButtonType="Image" HeaderText="Xóa" ImageUrl="~/image_master/remove.png" Text="Button" CommandName="Xoa" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    
<table style="width:100%;">
      <tr>
                <td class="text-right" colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Tổng Cộng :" ForeColor="Red"></asp:Label>
                </td>
                <td style="width: 177px">
                    <asp:Label ID="lblTongTien" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text=".000 Vnđ"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 25px"></td>
                <td style="height: 25px"></td>
                <td style="height: 25px; width: 177px;"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnTiepTucMua" runat="server" Text="Tiếp Tục Mua" OnClick="btnTiepTucMua_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnXoa" runat="server" Text="Xóa Giỏ Hàng" OnClick="btnXoa_Click" CommandName="Nutxoa" />
                </td>
                <td class="auto-style2" style="width: 177px">
                    <asp:Button ID="btnCapNhat" runat="server" Text="Cập Nhật" OnClick="btnCapNhat_Click" />
                </td>
                <td>
                    <asp:Button ID="btnThanhToan" runat="server" Text="Thanh Toán" OnClick="btnThanhToan_Click" />
                </td>
            </tr>
    </table>
<br />
</asp:Content>

