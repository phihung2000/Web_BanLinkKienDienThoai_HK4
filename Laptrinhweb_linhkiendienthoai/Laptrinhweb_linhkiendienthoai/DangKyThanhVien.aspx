<%@ Page Title="" Language="C#" MasterPageFile="~/left_baner_footer.master" AutoEventWireup="true" CodeFile="DangKyThanhVien.aspx.cs" Inherits="DangKyThanhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            width: 234px;
            height: 26px;
            text-align: left;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style6 {
            height: 23px;
            text-align: left;
        }
        .auto-style8 {
            width: 100%;
            height: 203px;
        }
        .auto-style9 {
            width: 239px;
            height: 13px;
        }
        .auto-style10 {
            height: 13px;
        }
        .auto-style11 {
            width: 239px;
            height: 241px;
        }
        .auto-style12 {
            height: 241px;
        text-align: justify;
    }
        .auto-style13 {
            width: 239px;
            height: 25px;
            text-align: left;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            height: 25px;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            color: #FF3300;
        }
        .auto-style16 {
            color: #FF3300;
            background-color: #FFFFFF;
        }
        .auto-style17 {
            width: 239px;
            height: 30px;
            text-align: left;
        }
        .auto-style18 {
            height: 30px;
        }
        .auto-style19 {
            margin-left: 40px;
        }
    .auto-style21 {
        text-align: left;
    }
    .auto-style22 {
            width: 234px;
            text-align: left;
        }
    .auto-style24 {
        width: 239px;
        height: 26px;
    }
    .auto-style25 {
        height: 26px;
        text-align: justify;
    }
        .auto-style26 {
            width: 239px;
            text-align: left;
        }
    </style>
    <div class="auto-style1" style="background-color:aqua">
            <strong>Đăng Ký Thành Viên
        </strong>
        </div>
        <table style="width:100%;">
            <tr style="background-color:aqua">
                <td class="auto-style21" colspan="2"><strong>Thông Tin Tài Khoản</strong></td>
            </tr>
            <tr>
                <td class="auto-style22">Tên Đăng Nhập : </td>
                <td>
                    <asp:TextBox ID="txtTaikhoan" runat="server" Width="273px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTendn" runat="server" ControlToValidate="txtTaikhoan" ErrorMessage="(*) Tên đăng nhập không được rỗng" CssClass="auto-style15" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mật Khẩu : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtMatkhau" runat="server" Width="225px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ControlToValidate="txtMatkhau" ErrorMessage="(*) Mật khẫu không được rỗng" CssClass="auto-style15" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Nhập Lại Mật Khẩu :</td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtNhaplaimk" runat="server" Width="227px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNhaplai" runat="server" ControlToValidate="txtNhaplaimk" ErrorMessage="(*)Mật khẫu nhập lại không được rỗng" CssClass="auto-style15" Display="Dynamic"></asp:RequiredFieldValidator>
                &nbsp;
                    <asp:CompareValidator ID="cvNhaplai" runat="server" ControlToCompare="txtMatkhau" ControlToValidate="txtNhaplaimk" CssClass="auto-style15" ErrorMessage="(*) Mật khẩu nhập lại không đúng" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style8">
            <tr style="background-color:aqua">
                <td class="auto-style6" colspan="2"><strong>Thông Tin Tài Khoản</strong></td>
            </tr>
            <tr>
                <td class="auto-style26">Họ và tên :</td>
                <td>
                    <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvHoten" runat="server" ControlToValidate="txtHoten" ErrorMessage="(*) Họ tên không được rỗng" CssClass="auto-style16" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Ngày sinh : </td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNgaysinh" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="cvNgaysinh" runat="server" ControlToValidate="txtNgaysinh" CssClass="auto-style15" ErrorMessage="(*) Ngày sinh không hợp lệ" Operator="DataTypeCheck" Type="Date" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Giới tính :</td>
                <td class="auto-style14">
                    <asp:RadioButton ID="rdoNam" runat="server" GroupName="gioitinh" Text="Nam" />
                    <asp:RadioButton ID="rdoNu" runat="server" GroupName="gioitinh" Text="Nữ" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Email :</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style15" ErrorMessage="(*) Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">Thu nhập :</td>
                <td>
                    <asp:TextBox ID="txtThunhap" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="rvThunhap" runat="server" ControlToValidate="txtThunhap" CssClass="auto-style15" ErrorMessage="(*) Thu nhập từ 1000000 đến 50000000" MaximumValue="50000000" MinimumValue="1000000" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <strong>
                    <asp:Button ID="btnDangky" runat="server" Text="Đăng Ký " BackColor="#99FF99" Font-Bold="True" ForeColor="Blue" OnClick="btnDangky_Click" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style25">
                    
                    <asp:Label ID="lblThongbao" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:ValidationSummary ID="vsBangloi" runat="server" HeaderText="Danh sách lỗi" Height="89px" ShowMessageBox="True" ShowModelStateErrors="False" ForeColor="Red" />
                </td>
            </tr>
        </table>
</asp:Content>

