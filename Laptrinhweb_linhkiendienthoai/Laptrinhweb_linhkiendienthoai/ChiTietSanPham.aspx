<%@ Page Title="" Language="C#" MasterPageFile="~/banner.master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="ChiTietSanPham" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
       
        .hienthiTen{
            margin-top:200px;
        }
        .carousel-inner{
           margin-top:20px; 
            width:100%;
        }
        .hinhanh{
            width:100%;
           
        }
        .div_dacdiem{
            margin-top:20px;
            border-top:1px solid black;
        }
        .div_lydochoncuahang{
            border-radius:0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="hienthisp">
    <asp:DataList ID="DataList1" runat="server"  >
        <ItemTemplate>
    <section class="section-duonglink">
        <div class="duonglink"><a href="trangchu.aspx">Trang Chủ&nbsp;</a><span>&gt;&gt;</span><a href="#">Chi tiết sản phẩm</a></div>
    </section>
    <section class="ten_op">
        <div class="div_tenop">
            <asp:Label ID="TenCucSacLabel" Font-Bold="True" runat="server" Text='<%# Eval("Ten") %>' />
        </div>
    </section>
    <section class="setion_slide"><div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      
        <asp:Image ID="Image1"  runat="server"  ImageUrl='<%# "~/assets/img/image_sanpham/"+Eval("HinhMinhHoa") %>' CssClass="hinhanh" />
    </div>
    <div class="carousel-item">
      <asp:Image ID="Image2"  runat="server" ImageUrl='<%# "~/assets/img/image_sanpham/"+Eval("HinhMinhHoa") %>' CssClass="hinhanh" />
    </div>
    <div class="carousel-item">
      <asp:Image ID="Image3"  runat="server" ImageUrl='<%# "~/assets/img/image_sanpham/"+Eval("HinhMinhHoa") %>' CssClass="hinhanh" />
    </div>
      <div class="carousel-item">
      <asp:Image ID="Image4"  runat="server" ImageUrl='<%# "~/assets/img/image_sanpham/"+Eval("HinhMinhHoa") %>' CssClass="hinhanh" />
    </div>
      <div class="carousel-item">
      <asp:Image ID="Image5"  runat="server" ImageUrl='<%# "~/assets/img/image_sanpham/"+Eval("HinhMinhHoa") %>' CssClass="hinhanh"/>
    </div>
      <div class="carousel-item">
     <asp:Image ID="Image6"  runat="server" ImageUrl='<%# "~/assets/img/image_sanpham/"+Eval("HinhMinhHoa") %>' CssClass="hinhanh" />
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only"></span>
  </a>
    
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only"></span>
  </a>
    
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <section class="dacdiem">
            <div class="div_dacdiem"><span class="motaSP">Mô Tả Chi Tiết Sản Phẩm</span>
                <ul>
                    <li><asp:Label ID="MoTaLabel" Font-Bold="false" runat="server" Text='<%# Eval("MoTa") %>' /></li>
                    <li>Kiểu dáng thời trang đẹp mắt</li>
                    <li>thiết kế vừa vặn ôm sát thân máy</li>
                    <li>dễ dàng tháo/lắp vào máy</li>
                    <li>Bảo vệ máy không bị trầy sước&nbsp;</li>
                </ul>
            </div>
        </section>
    </section>
    <section class="section_text">
        <div class="div_tien" >
            <strong ><asp:Label ID="DonGiaLabel"  runat="server" Text='<%# Eval("DonGia") %>' />vnđ</strong>
            
        </div>
        <div class="div_muahang" ><a class="Muangay" href="GioHang.aspx?MaSp=<%# Eval("MaSanPham")%>">Mua ngay<br></a><a >Giao tận nơi hoặc đến shop xem hàng</a></div>
        
        <%--<div class="div_muahang" ><a class="Muangay" href="javascript:ThemVaoGioHang()">Mua ngay<br></a><a >Giao tận nơi hoặc đến shop xem hàng</a></div>--%>
        
        <div class="div_soluong">
            <span>Số lượng :</span>
            <input id="soluong" type="number" min="1"  value="1">

        </div>
        <div class="div_lydochoncuahang">
            <span class="span_why">Vì sao chọn chúng tôi?<br></span>
            <i class="fa fa-check-circle"></i><span>Sản phẩm chính hãng 100%<br></span>
            <i class="fa fa-check-circle"></i><span>Bảo hàng 30 ngày<br></span>
            <i class="fa fa-check-circle"></i><span>Giao hàng tận nơi trên toàn quốc<br></span>
            <i class="fa fa-check-circle"></i><span>Free ship cho tất cả các đơn hàng trên 200k trong TP.Thủ Dầu Một</span>
        </div>
    </section>
    <section class="section_xemthem">
        <div class="div_thamkhao"><span>Tham khảo thêm ốp lưng điện thoại khác</span></div>
        <div class="row" id="row_xemthemanh">
            <div class="col" id="xemthem"><a class="linksp" href="#"><img src="assets/img/op_lung/trangchu_oplung/cac%20loai%20op%20lung/op-lung-galaxy-a71-deo-nake-slim-tpu-jm-nake-slim-1-600x600.jpg" title="ỐP LƯNG"><div class="div_tenop"><strong class="div_tien_">100.000đ<br></strong><a class="a_tensp" href="#" title="ỐP LƯNG">Ốp lưng Galaxy A71 Nhựa dẻo Nake Slim TPU JM Nake slim Nude<br><br></a></div>
            </a>
        &nbsp;&nbsp;&nbsp;</div>
        <div class="col" id="xemthem"><a href="#"><img src="assets/img/anh_noi_bat/gay-chup-anh-osmia-ow2-ava-600x600.jpg" title="ỐP LƯNG"><div class="div_tenop"><strong class="div_tien_">100.000đ<br></strong><a class="a_tensp" href="#" title="ỐP LƯNG">Ốp lưng Galaxy A71 Nhựa dẻo Nake Slim TPU JM Nake slim Nude<br><br></a></div>
        </a>
        &nbsp;&nbsp;&nbsp;</div>
        <div class="col" id="xemthem"><a href="#"><img src="assets/img/anh_noi_bat/tai-nghe-bluetooth-kanen-k6-avatar-600x600.jpg" title="ỐP LƯNG"><div class="div_tenop"><strong class="div_tien_">100.000đ<br></strong><a class="a_tensp" href="#" title="ỐP LƯNG">Ốp lưng Galaxy A71 Nhựa dẻo Nake Slim TPU JM Nake slim Nude<br><br></a></div>
        </a>
        &nbsp;&nbsp;&nbsp;</div>
        <div class="col" id="xemthem"><a href="#"><img src="assets/img/anh_noi_bat/tai-nghe-ep-kanen-ip.jpg" title="ỐP LƯNG"><div class="div_tenop"><strong class="div_tien_">100.000đ<br></strong><a class="a_tensp" href="#" title="ỐP LƯNG">Ốp lưng Galaxy A71 Nhựa dẻo Nake Slim TPU JM Nake slim Nude<br><br></a></div>
        </a>
        &nbsp;&nbsp;&nbsp;</div>
        </div>
    </section>
    <section class="section_binhluan">
        <h6>Đánh giá &amp; Nhận xét</h6>
        <div class="container binhluan"><img src="assets/img/tai-nhung-hinh-nen-xe-hoi-dep-nhat-cho-may-tinh-full-hd-4k-6-1536x960.jpg" alt="Avatar">
            <p><span>Phi Hùng</span>&nbsp;Đã mua sản phẩm&nbsp;</p>
            <p>sản phẩm rất tốt rất bền , giao hàng nhanh, nhìn rất đẹp</p>
        </div>
        <div class="container binhluan"><img src="assets/img/tai-nhung-hinh-nen-xe-hoi-dep-nhat-cho-may-tinh-full-hd-4k-6-1536x960.jpg" alt="Avatar">
            <p><span>Phi Hùng</span>&nbsp;Đã mua sản phẩm&nbsp;</p>
            <p>sản phẩm rất tốt rất bền , giao hàng nhanh, nhìn rất đẹp</p>
        </div>
        <%-- các script xử lý giỏ hàng --%>
            <script type ="text/javascript">
                function ThemVaoGioHang() {
                    var id ="<%=MaSp%>";
                    
                    var soluong = $("#soluong").val();
                    $.post("XuLyDonHang.aspx",
                    
                        {
                            "ThaoTac": "ThemVaoGioHang",
                            "id": id,
                            "soluong": soluong
                        },
                        function (data, status) {
                            if (data == "") {
                                alert("đã thêm sản phẩm vào giỏ hàng thành công");
                            }
                            else {
                                alert(data);
                            }
                        });
                }
            </script>
        <script src="assets/js/jquery-1.8.3.min.js"></script>
    </section>
      
        </ItemTemplate>
    </asp:DataList>
       <asp:Label ID="lblTen" class="hienthiTen" runat="server" Text="Label"></asp:Label>
    </div>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <h3 style="margin-top:200px"><%# Eval("TenCucSac") %></h3>
        </ItemTemplate>

    </asp:Repeater>
   
   
    </asp:Content>

