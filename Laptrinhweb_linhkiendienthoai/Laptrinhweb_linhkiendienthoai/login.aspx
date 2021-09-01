<%@ Page Title="" Language="C#" MasterPageFile="~/banner.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head >
    <title></title>
    <link rel="stylesheet" href="https://opensource.keycdn.com/fontawesome/4.7.0/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="assets/css/DangNhap.css"/>
    <style type="text/css">
     
    </style>

</head>
  <body>
    <div class="container">    
 <h1 class="well">Thành viên</h1>      
 <div class="col-lg-12 well">              
  <div class="row">                    
   <div class="col-sm-6 form-group">                       <label>Tài khoản</label>                        <asp:TextBox ID="txtTK" runat="server"></asp:TextBox>               
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống" ForeColor="Red" ControlToValidate="txtTK"></asp:RequiredFieldValidator>
   </div>                  
   <div class="col-sm-6 form-group">                       <label>Mật khẩu</label>                     <asp:TextBox ID="txtMk" runat="server" TextMode="Password"></asp:TextBox>               
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMk" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
   </div>              
  </div>               
  <div class="row">                                 
   <div class="col-sm-12 text-center">  
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Đăng Nhập" />
    <%--<button type="button" id="dangnhap" OnClick="Button1_Click" class="btn btn-block btn-info">Đăng nhập</button>    --%>             
       
   </div>      
      <div class="col-sm-12 text-center">
          <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
          <br />
          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DoiMatKhau.aspx">đổi mật khẩu</asp:HyperLink>
      </div>
  </div>                               
  <div class="or-text">                    
   <div class="or-text-row">                       
    <div class="or-text-line">                         
     <button type="button" class="btn btn-default btn-circle" disabled="disabled">hay</button>                     
    </div>                 
   </div>              
  </div>               
  <div class="row">                        
   <div class="col-sm-4">                      
    <div class="btn-group">                            
     <button type="button" class="btn btn-primary"><i class="fa fa-facebook"></i>Đăng nhập bằng Facebook
     </button>                     
    </div>                 
   </div>                  
   <div class="col-sm-4">                      
    <div class="btn-group">                            
     <button type="button" class="btn btn-danger"><i class="fa fa-google-plus"></i>Đăng nhập bằng Google+
     </button>                     
    </div>                 
   </div>                  
   <div class="col-sm-4">                      
    <div class="btn-group">                            
     <button type="button" class="btn btn-info"><i class="fa fa-linkedin"></i>Đăng nhập với Linkedin
     </button>                     
    </div>                 
   </div>              
  </div>           
 </div>    
</div>
</body>
</asp:Content>

