<%@ Page Title="" Language="C#" MasterPageFile="~/banner.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="LienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section_noidangdung">
        <div class="noi_dang_dung"><a href="TrangChu.aspx">Trang Chủ&nbsp;</a><span>&gt;&gt;</span><a href="lienhe.html">Liên Hệ</a></div>
    </section>
    <section class="section-thongtinlienhe">
        <div class="thongtinlienhe">
            <h3>THÔNG TIN LIÊN HỆ</h3>
            <h6 class="text-left text-black-50">Nếu Bạn Ở TP.Thủ Dầu Một</h6><span class="thanhvien">-Shop Linh Kiện Phi hùng :06 Trần Văn Ơn, Phú Hoà ,TP Thủ Dầu Một,Bình Dương<br><br>- Nếu bạn có thắc về vấn đề sản phẩm hay muốn tư vấn về sản phẩm thì hãy gọi hottline : 0396476443<br><br>-Shop hỗ trợ giải đáp thắc mắc 24/7 mọi thắc mắc đều sẽ được giải đáp trong vòng 24h&nbsp;</span>
            <h6
                class="text-black-50">Làm sao để trở thành thành viên của shop</h6><span class="thanhvien">-Bạn phải mua đồ và tích trữ điểm đủ điểm yêu cầu bạn sẽ được trở thành thành viên của Shop<br>-Tích điểm đổi&nbsp; quà<br>-Shop có rất nhiều khuyễn mãi giành cho các thành viên của shop&nbsp;<br>+Thẻ vip được giảm 40%<br>+Thẻ thành viên được giảm 20%<br></span></div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="text-uppercase section-heading">liên hệ với chúng tôi</h2>
                <h6 class="section-subheading text-muted" style="color: rgb(150,134,134);">Mọi thắc mắc sẽ được giải đáp trong 24h</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <form id="contactForm" name="contactForm" novalidate="novalidate">
                    <div class="form-row">
                        <div class="col col-md-6">
                            <div class="form-group"><input class="form-control" type="text" id="name" placeholder="Tên của bạn" required=""><small class="form-text text-danger flex-grow-1 help-block lead"></small></div>
                            <div class="form-group"><input class="form-control" type="email" id="email" placeholder="Email của bạn" required=""><small class="form-text text-danger help-block lead"></small></div>
                            <div class="form-group"><input class="form-control" type="tel" id="sdt" placeholder="Số điện thoại" required=""><small class="form-text text-danger help-block lead"></small></div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group"><textarea class="form-control" id="message" placeholder="Đóng góp ý kiến" required=""></textarea></div>
                        </div>
                        <div class="col">
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-lg-12 text-center"><button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">gửi&nbsp;</button></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <footer class="lienhecss">
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
                <div class="footer_span"><a class="footer_facebook" href="#"><i class="fab fa-facebook-f" style="filter: blur(0px) brightness(131%) contrast(200%) grayscale(0%) hue-rotate(360deg);color: #0000ff;"></i><span>Facebook<br><br></span></a><a class="footer_youtube"
                        href="#"><i class="fab fa-youtube-square" style="color: #c10017;"></i><span>Youtube<br><br></span></a></div>
            </div>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="assets/js/agency.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode.js"></script>
    <script src="assets/js/Sidebar-Menu.js"></script>
</asp:Content>

