<%@ Page Title="" Language="C#" MasterPageFile="~/left_baner_footer.master" AutoEventWireup="true" CodeFile="DoiMatKhau.aspx.cs" Inherits="DoiMatKhau" %>

<asp:Content ID="Content1"  ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .dangnhap{
            background-color:#CCFFFF;
            width:100%;
            height:500px;
            font-family:'Times New Roman', Times, serif;
          
        }
    </style>
    <div class="dangnhap">
    <table style="width:100%;">
        <tr>
            <td class="text-center" colspan="3" style="height: 26px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="ĐỔI MẬT KHẨU" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="image_quangcao" style="width: 351px; text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Tên Đăng Nhập" Font-Bold="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDN" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="image_quangcao" style="width: 351px; text-align: right">
                <asp:Label ID="Label3" runat="server" Text="Mật Khẩu" Font-Bold="False" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMK" ErrorMessage="không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="image_quangcao" style="width: 351px; text-align: right">
                <asp:Label ID="Label4" runat="server" Text="Mật Khẩu Mới"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMKMoi" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMKMoi" ErrorMessage="không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="image_quangcao" style="width: 351px; text-align: right">
                <asp:Label ID="Label5" runat="server" Text="Nhập Lại Mật Khẩu"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNhapLaiMatKhau" Display="Dynamic" ErrorMessage="không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMKMoi" ControlToValidate="txtNhapLaiMatKhau" Display="Dynamic" ErrorMessage="Mật khẩu nhập lại không khớp" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="image_quangcao" style="width: 351px">
                
            </td>
            <td class="text-left">
                 <asp:Button ID="btnDongY" runat="server" OnClick="btnDongY_Click" Text="Đồng Ý" Font-Bold="True" />
                 </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="image_quangcao" style="width: 351px">
                
                <asp:Label ID="lblLoi" runat="server" ForeColor="Red"></asp:Label>
                
            </td>
            <td>
                 
                 </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

