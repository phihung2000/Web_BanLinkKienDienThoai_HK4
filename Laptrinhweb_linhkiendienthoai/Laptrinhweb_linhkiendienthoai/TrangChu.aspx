<%@ Page Title="" Language="C#" MasterPageFile="~/banner.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top:-140px;
            border-collapse: collapse;
            margin-bottom:-160px;
            background-color:#fc4b4b;
        }
        .auto-style2{
            padding: 50px;
            transition: transform .2s;
            margin: 0 auto;
        }
       .auto-style2:hover{
           -ms-transform: scale(1.2); 
            -webkit-transform: scale(1.2); 
            transform: scale(1.2);
       }
        .input-group
        {
            padding:40px 0px;
        }
        .text-center{
            
        }
        .text-sm-center
        {
            
        }
        .TenCucSac ul li:hover
        {
           color:red;

        }
        .TenCucSac ul li
        {
            list-style:none;
            margin-left:-43px;
        }
        .GiaCucSac{
            float:left;
            font-weight:normal;
              font-size:14px;
        }
        .image_trangchu{
            height:400px;
            
        }
        .DanhMucSanPham
        {
            background-color:#ffffff;
            text-align:left;
           
        }
        .danhmucsanphamleft
        {

            margin-top:-1280px;
        }
        .auto-style3
        {
            border-top: 1px solid black;
            border-right: 1px solid black;
            background-color:#008080;
            width:18%;
        }
        .auto-style3 ul li {
            border-bottom:1px solid black;
            text-align: left;
             margin-left:-40px;
             list-style:none;
        }
        .auto-style3 ul li:hover
        {
            color:red;
            background-color:#999999;
           
        }
        .table_cucsacduphong
        {
            /*border:1px solid #666666;
            border-right:1px solid black;
            border-collapse: collapse;*/
        }
          .mua{
              font-weight:normal;
              font-size:14px;
              margin-left:50px;
            width:120px;
            float:left;
            border : solid 1px red;
            border-radius:5px ;
            color:red;
            text-align:center;
           
        }
        .mua:hover{
            border: solid 0px #f89406;
            background-color:#f89406;
            color:white;
        }
        .auto-style4 {
            height: 69px;
        }
         .phangiua{
	            margin-top:-100px;
	             width: 100%;
               border: 1px solid gray;
               background-color:white;
              height:880px;
            }
            .bentrai {
                float: left;
                width: 280px;
                margin: 0;
                padding: 1em;
                border-left: 1px solid gray;
               max-height:1000px;
            }
            .bentrai ul {
                width:265px;
                list-style-type: none;
                padding: 0;
            }
    
            .bentrai ul a {
                text-decoration: none;
                color:black;
            }
             .bentrai ul li{
                 margin-top:-8px;
                 margin-left:-17px;
                 padding:3px;
                 height:40px;
                 
                 border: solid 1px red; 
                 background-color:#def4f4;
             }
             .bentrai ul h1{
                 margin-left:-20px;
                 text-align:center;
                 font-size:24px;
                 color:black;
                 border:solid 0.5px black;
                 border-top-left-radius:20px;
                 border-top-right-radius:20px;
                 background-color:#fc4b4b;
             }
             .bentrai ul li:hover{
                 background-color:#ffcc00;
             }
            .bentrai ul image{
                margin-left:200px;
            }
            .image_quangcao{
                
                width:265px;
               
            }
            .o_giua{
                
                margin-left: 280px;
                border-left: 1px solid gray;
                padding: 1em;
                overflow: hidden;
                /*max-height:2000px;*/
            }
            .bentrai ul h1{
         animation: colorBackground 0.5s infinite;
         -webkit-animation: colorBackground 5s infinite;
         -moz-animation: colorBackground 5s infinite;
         -o-animation: colorBackground 0.5s infinite
         }
         @keyframes colorBackground {
         0% {
         background-color: yellowgreen;
         color: white;
         }
         50% {
         background-color: red;
         color: yellow;
         }
         }
 
         .bentrai ul h1:hover {
         background: yellow;
         color: red;
         }
         .bentrai ul h1:active {
         background: green;
         }
    
    </style>

   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="slide_trangchu"><div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
     <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="assets/img/baner_trangchu/banner.png" alt="First slide" style="width: 100%;">
        <div class="carousel-caption d-none d-md-block">
            
            <p></p>
        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/baner_trangchu/hinhnen_trangchu.jpg" alt="Second slide" style=" width: 100%;">        
        <div class="carousel-caption d-none d-md-block">
           
            <p></p>
        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/baner_trangchu/Banner2.jpg" alt="Third slide" style="width: 100%;">        
        <div class="carousel-caption d-none d-md-block">
           
            <p></p>
        </div>
    </div>
       <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/baner_trangchu/Phu-kien-giam-gia-Banner-web_slide_1320x640.jpg" alt="Third slide" style="width: 100%;">        
        <div class="carousel-caption d-none d-md-block">
           
            <p></p>
        </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<script src="assets/js/jquery-1.8.3.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script></section>
    <section id="services">
        <div class="chat_messenger">
            <a class="link_chat" href="#">
                <div class="chat_noi"><i class="fa fa-comments"></i><i class="fab fa-facebook"></i></div>
            </a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="text-uppercase section-heading">shop Phi hùng</h2>
                    <h3 class="text-muted section-subheading"><em>Bạn muốn điện thoại của mình lộng lẫy,được bảo vệ an toàn,muốn có nhũng sản phẩm tốt,phục vụ chu đáo hãy đến với chúng tôi</em><br><em>shop PH hân hạnh được phục vụ quý khách</em><br></h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4"><span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="far fa-gem fa-stack-1x fa-inverse" style="color: #0000ff;filter: blur(0px) brightness(200%);"></i></span>
                    <h4 class="section-heading">SIÊU NHIỀU HÀNG TỐT</h4>
                    <p class="text-muted">Bạn cần phụ kiện nào cũng có . Các loại mẫu đa dạng, đẹp</p>
                </div>
                <div class="col-md-4"><span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fas fa-shipping-fast fa-stack-1x fa-inverse" style="color: #0000ff;"></i></span>
                    <h4 class="section-heading">SIÊU TIỆN LỢI</h4>
                    <p class="text-muted">mạng lưới vận chuyển toàn quốc giao hàng nhanh</p>
                </div>
                <div class="col-md-4"><span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-flash fa-stack-1x fa-inverse" style="color: #0000ff;"></i></span>
                    <h4 class="section-heading">SIÊU TIẾT KIỆM</h4>
                    <p class="text-muted">Giá hợp lý ,vừa túi tiền. Luôn luôn có những ưu đãi cho khách hàng</p>
                </div>
            </div>
        </div>
    </section>
    <section id="portfolio" class="bg-light">
       <div class="phangiua">
       <nav class="bentrai">
  <ul>
      
      <asp:Image ID="Image1"  runat="server" Height="235px" width="280px" style="margin-left:-20px;margin-top:-15px" ImageUrl="~/assets/img/baner_trangchu/slider_image_1.png"  CssClass="mr-0" />
   <h1>Danh Mục Hãng</h1>
    <li><a href="#">Sản Phẩm Hãng Sam Sung</a></li>
    <li><a href="#">Sản Phẩm Hãng XiaoMi</a></li>
    <li><a href="#">Sản Phẩm Hãng ViVo</a></li>
    <li><a href="#">Sản Phẩm Hãng Nokia</a></li>
    <li><a href="#">Sản Phẩm Hãng Opppo</a></li>
    <li><a href="#">Sản Phẩm Hãng Iphone</a></li>
  </ul>
    <ul>
        <h1>
        <marquee direction="left" behavior="alternate" font-size="24px">
      QUẢNG CÁO </marquee>
            </h1>
    </ul>
    <div class="image_quangcao">
        <%--<marquee direction="up" behavior="alternate">--%>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/assets/img/anh_quangcao/quangcao1.jpg" Height="130px" Width="120px" />
         <asp:Image ID="Image3" runat="server" ImageUrl="~/assets/img/anh_quangcao/quangcao1.jpg" Height="130px" Width="120px" />
        <%--</marquee>--%>
         <marquee id="marq" scrollamount="3" direction="left" loop="500" scrolldelay="10" onmouseover="this.stop()" onmouseout="this.start()">

    <a href="Link"><img src="~/assets/img/anh_quangcao/quangcao2.jpg" runat="server" title="Ghi chú cho ảnh" width="200" height="200"/> </a>


    <a href="Link"><img src="~/assets/img/anh_quangcao/quangcao2.jpg" runat="server" title="Ghi chú cho ảnh" width="200" height="200"/> </a>


    <%--<a href="Link"><img src="Link hình ảnh" title="Ghi chú cho ảnh" width="200" height="300"/> </a>--%></marquee>
    </div>
    
   
</nav>
       <article class="o_giua">
    <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" RepeatDirection="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <ItemStyle ForeColor="#000066" />
                        <ItemTemplate >
                            <div class="table_cucsacduphong">
                            <table  class="image_trangchu">
                                
                                <tr >
                                    <td class="auto-style2" >
                                        
                                        <asp:Image ID="Image1"  runat="server" ImageUrl='<%# "~/assets/img/image_sanpham/"+Eval("HinhMinhHoa") %>' Height="200px" Width="200px" BorderColor="Red" BorderStyle="None"  />
                                       
                                            </td>
                                </tr>
                                <tr >
                                    <td  >     
                                        <div class="TenCucSac">
                                            <ul>
                                                <li class="auto-style4">
                                            
                                                 <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" Text='<%# Eval("Ten") %>' Font-Size="Small"   ></asp:HyperLink>
                                            </li>
                                           </ul>
                                         </div>
                                            
                                    </td>
                                </tr>
                                <tr >
                                    <td  >
                                        <div class="GiaCucSac">
                                            
                                                <asp:Label ID="DonGiaLabel" runat="server" ForeColor="Red" Text='<%# Eval("DonGia") %>' Font-Underline="True" />
                                                <span class="shopping">Vnđ</span></div>
                                                <div class="mua">
                                                    <a class="center" href="ChiTietSanPham.aspx?MaSp=<%# Eval("MaSanPham")%>">MUA NGAY</a>
                                                </div>
                                        
                                    </td>
                                </tr>
                                    
                            </table>
                                </div>
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle VerticalAlign="Top" BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_linhKienDienThoaiConnectionString %>" SelectCommand="SELECT [MaCucSac],[HinhMinhHoa], [TenCucSac], [DonGia] FROM [CucSacDuPhong]"></asp:SqlDataSource>--%>
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
  </article>
     </div>    
    </section>
     <footer style="margin-top:-100px">
        <div class="row">
            <div class="col-sm-6 col-md-4 footer-navigation">
                <h3><a href="#">Shop&nbsp;<span>PH</span></a></h3>
                <p class="links"><strong>Shop được xây dựng nhằm cung cấp cho người sử dùng những trải nghiệm dễ dàng, an toàn và nhanh chóng khi mua sắm trực tuyến thông qua hệ thống hỗ trợ thanh toán và vận hành vững mạnh.</strong><br><br></p>
            </div>
            <div class="col-sm-6 col-md-4 footer-contacts">
                <h4>Thông Tin Liên Hệ</h4>
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p><span class="new-line-span">06 Trần Văn Ơn, Phú Hoà<br>TP Thủ Dầu một,Bình Dương<br></span></p>
                </div>
                <div><i class="fa fa-phone footer-contacts-icon"></i>
                    <p class="footer-center-info email text-left">0396476443</p>
                </div>
                <div><i class="fa fa-envelope footer-contacts-icon"></i>
                    <p> <a href="#" target="_blank">nph.3082000@gmail.com</a></p>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="col-md-4 footer-about">
                <h4>Tìm Hiểu Thêm</h4>
                <div class="footer_span"><a class="footer_facebook" href="https://www.facebook.com/phihung.30082000/"><i class="fab fa-facebook-f" style="filter: blur(0px) brightness(131%) contrast(200%) grayscale(0%) hue-rotate(360deg);color: #0000ff;"></i><span>Facebook<br><br></span></a>
                    <a
                        class="footer_youtube" href="#"><i class="fab fa-youtube-square" style="color: #c10017;"></i><span>Youtube<br><br></span></a>
                </div>
            </div>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="assets/js/agency.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode.js"></script>
    <script src="assets/js/Sidebar-Menu.js"></script>
    
</asp:Content>

