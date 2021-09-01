<%@ Page Title="" Language="C#" MasterPageFile="~/left_baner_footer.master" AutoEventWireup="true" CodeFile="TrangTaiNghe.aspx.cs" Inherits="bo_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .text-center:hover
        {
             -ms-transform: scale(1.2); 
            -webkit-transform: scale(1.2); 
            transform: scale(1.2);
        }
        .text-center{
            padding:50px;
            margin: auto;
            transition: transform .2s;
        }
        .ten_tainghe{
            width:50px;
        }
        .ten_tainghe:hover
        {
            color: red;
            pointer-events: painted;
        }
        .datalist
        {
            margin-top:100px;
            width:850px;
            margin-top:10px;
            max-height:2000px;
        }
       
        .auto-style5 {
            width: 130px;
            text-align: center;
            height: 30px;
        }
        .auto-style6 {
            text-align: right;
            height: 30px;
        }
        .auto-style7 {
            width: 240px;
            text-align: center;
            height: 30px;
        }
        .border_button{
            border-radius:5px;
        }
        .mua {
            border : solid 1px red;
            border-radius:5px ;
        
            text-align:center;
           
        }
        .mua:hover{
            border: solid 0px #f89406;
            background-color:#f89406;
            color:white;
        }
        .phantrang{
            text-align:center;
            margin-top:-50px;
           
        }
        .auto-style8 {
            width: 50px;
            height: 71px;
        }
    </style>
    <table style="width:850px;background-color:#EE7600; margin-top:-20px;margin-bottom:-10px" >
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button4" runat="server" Text="Giá dưới 500.000" Font-Size="Small" Width="125px" OnClick="Button4_Click" />
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtTimKiem" placeholder="Tìm kiếm" runat="server" Width="150px" Font-Size="Small"></asp:TextBox>
                <asp:Button ID="btnTimkiem" runat="server" Text="Tìm kiếm" Font-Size="Small" Width="80px" OnClick="btnTimkiem_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button5" runat="server" Text="Tai nghe chụp tai" Font-Size="Small" Width="122px" OnClick="Button5_Click" />
            </td>
             <td class="auto-style5">
                 <asp:Button ID="Button2" runat="server" Text="Tai nghe có dây" Font-Size="Small" Font-Strikeout="False" Width="120px" OnClick="Button2_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="Tai nghe Bluetooth" CssClass="boder_button" Font-Size="Small" Width="130px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="Small" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="0">a-z</asp:ListItem>
                    <asp:ListItem Value="1">giá tăng</asp:ListItem>
                    <asp:ListItem Value="2">giá giảm</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" CssClass="datalist" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4"  GridLines="Horizontal" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        
        <ItemStyle BackColor="#EE9A00" ForeColor="#333333" />
        <ItemTemplate>
           <table style="border: thin double #008000; margin-top:20px; width:100%; background-color:#def4f4; font-family: 'Times New Roman', Times, serif; text-transform: capitalize; color: #000000;" >
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# "~/assets/img/image_sanpham/"+Eval("HinhMinhHoa") %>' Width="170px" />
                        <asp:Label ID="HangLabel" runat="server" Text='<%# Eval("Hang") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style8">
                        <asp:Label ID="TenLabel" runat="server"  Text='<%# Eval("Ten") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="DonGiaLabel" runat="server" ForeColor="Red" Text='<%# Eval("DonGia") %>' Font-Italic="False" Font-Underline="True" />
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="vnđ"></asp:Label>
                    </td>
                    <td>
                        <div class="mua">
                            <a class="center" style="color:red" href="ChiTietSanPham.aspx?MaSp=<%# Eval("MaTaiNghe") %><%# Eval("Ten") %>" >MUA NGAY</a>
                            
                        </div>
                    </td>

                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_linhKienDienThoaiConnectionString %>" SelectCommand="SELECT [Ten], [Hang], [HinhMinhHoa], [DonGia] FROM [TaiNghe]"></asp:SqlDataSource>--%>
    
    <table style="width:100%;">
        <tr>
            <td class="text-sm-center">
    
<asp:Repeater ID="rptPaging"  runat="server" OnItemCommand="rptPaging_ItemCommand" >
    <ItemTemplate>
     <asp:LinkButton ID="btnPage"
      style="padding:8px;margin:0px;background:#ffa100;border:solid 1px #666;font:8pt tahoma;"
      CommandName="Page" CommandArgument="<%# Container.DataItem %>"
      runat="server" ForeColor="White" Font-Bold="True">
       <%# Container.DataItem %>
     </asp:LinkButton>
    </ItemTemplate>
</asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>

