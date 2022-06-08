<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sách Hay</title>
 
  <!-- Angularjs -->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.0/angular.min.js"></script>

  <!-- Bootstrap 4 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


  <!-- CSS -->
  <link rel="stylesheet" href="/view/css/sach.css">

  <!-- JS -->
  <script src="/view/js/app.js"></script>



  <style>
    .controllxuhuong {
      display: none;
    }
  </style>

  
</head>
<body ng-app="myapp" style=" background-color: #efefef;">


  <header style="height: 130px;">
  
  	   <!-- tren cung -->
    <div class="row">
      <div class="col-sm-3"></div>
      <div class="col-sm-1">
        <a href="#">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
            class="bi bi-question-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
            <path
              d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
          </svg>
          Hỗ trợ
        </a>
      </div>
      <div class="col-sm-2">
        <a href="#">

          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop"
            viewBox="0 0 16 16">
            <path
              d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z" />
          </svg>
          <span> Bán Hàng Cùng Shop</span>

        </a>
      </div>
      <div class="col-sm-2">

        <a href="#">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill"
            viewBox="0 0 16 16">
            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
          </svg>
          Kênh người bán
        </a>
      </div>
    </div>
    
      
    <div class="row">
    
      <div class="col-sm-3 row" style="top: -20px;">
        <div class="col-sm-9">
          <img src="/view/img/logo.gif" alt="" style="position: absolute; width: 195px;  margin-left: 35px;">
        </div>
        <div class="col-sm-3 menu" style="top: 40px;">
          <div onmouseover="hienthi()" onmouseout="an()" style="height: 72px; width: 97px; padding: 3px;">
            <div>
              <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-grid"
                viewBox="0 0 16 16">
                <path
                  d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
              </svg>
              <svg style="    position: absolute;  right: 17px;  top: 11; top: 13px;" xmlns="http://www.w3.org/2000/svg"
                width="20" height="20" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                  d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
              </svg>
            </div>

            <!-- nav -->
            <div style="display:none;" onmouseout="an()" id="danhmucsp">
				<jsp:include page="/view/html/nav/nav.jsp"></jsp:include>
            </div>
          </div>
          <div id="danhmucspkp" style="display: none;" class="fhs_dropdown_cover"></div>
        </div>
      </div>
      
       
      <div class="col-sm-5">
      
     	 <!-- search -->
        <form action="" style="position: absolute;  width: 100%;" >
          <input type="text" ng-model="searchSP" class="ser" placeholder="Tìm kiếm sản phẩm mong muốn...">
          
          <span ng-click="sear(searchSP)" class="search btn btn-danger dropdown-toggle" data-toggle="modal" data-target="#sear">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
              viewBox="0 0 16 16">
              <path
                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
            </svg>
          </span>

          <div class="till">
            <a href="#">Chính trị – pháp luật</a>
            <a href="#">Khoa học công nghệ – Kinh tế</a>
            <a href="#">Giáo trình</a>
            <a href="#">Truyện, tiểu thuyết</a>
            <a href="#">Sách thiếu nhi</a>
          </div>
        </form>


		
        <div class="modal fade" id="sear" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content" style="flex-direction: column;">
                <div style="margin: 12px 20px; color: rgb(200, 200, 200);">San pham tim kiem</div>
                <div style="max-height: 612px; overflow: auto;">
                  <div style="margin-bottom: 10px; display: flex;" class="gh">

                    <div><img src="/view/img/sach/{{ser.img}}" alt="" height="100px"></div>
                    <div class="ghtitle">{{ser.title}}</div>
                    <div style="margin-top: 14px; color: red; font-weight: bolder; width: 90px;">
                      {{ser.price|numbers:3}}đ</div>
                      
                    <a style="color: black; margin-top: 14px;" href="" ng-click="new(ser.title)">Them</a>

                  </div>
                </div>
              </div>
            </div>

          </div>

      </div>
      
      
      <div class="col-sm-4 row" style="top: -32px;">

			<!-- account -->
        <div class="col-sm-3">
          <a href="#" data-toggle="modal" data-target="#account">
            <div class="gio">
              <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-person"
                viewBox="0 0 16 16">
                <path
                  d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
              </svg>
              <div style="margin-top: 8px;color: white;">Tài Khoản</div>
            </div>
          </a>
        </div>

			<!-- Thong bao -->
        <div class="col-sm-3">
          <a href="#">
            <div class="gio">
              <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-bell"
                viewBox="0 0 16 16">
                <path
                  d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z" />
              </svg>
              <span class="badge tn">9</span>
              <div style="    margin-top: 8px;color: white;">Thông Báo</div>
            </div>
          </a>
        </div>

			<!-- cart -->
        <div class="col-sm-3 dropleft">

          <a href="#" class="gio dropdown-toggle" data-toggle="modal" data-target="#gh">
            <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-cart3"
              viewBox="0 0 16 16">
              <path
                d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
            </svg>
            <span class="badge tn">{{giohang.length}}</span>
            <div style="margin-top: 8px;color: white;">Giỏ Hàng</div>
          </a>

          <div class="modal fade" id="gh" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content" style="flex-direction: column;">
                <div style="margin: 12px 20px; color: rgb(200, 200, 200);">Sản phẩm mới thêm vào giỏ</div>
                <div style="max-height: 612px; overflow: auto;">
                  <div ng-repeat="gh in giohang" ng-init="gh.slsp=$index+1" class="spmua"
                    style="margin-bottom: 50px; padding: 6px;">

                    <div style="margin-bottom: 10px; display: flex;" class="gh">
                      <div><input ng-model="gh.buy" type="checkbox"
                          style="width: 29px;height: 18px;margin-left: -4%; margin-top: 63%;"></div>
                      <div><img src="/view/img/sach/{{gh.img}}" alt="" height="50px"></div>
                      <div class="ghtitle">{{gh.title}}</div>
                      <div style="margin-top: 14px; color: red; font-weight: bolder; width: 90px;">
                        {{gh.price|numbers:3}}đ</div>
                      <div style="margin-top: 14px;">
                        <div class="styles_S fFLyxa" style="display: flex; ">
                          <span class="qty-decrease" ng-click="decrease($index)"><b>-</b></span>
                          <input min="1" type="tel" class="qty-input" ng-disabled="!gh.buy" ng-model="gh.sl"
                            style="width: 38px; border: none; text-align: center; outline: none;">
                          <span class="qty-increase " ng-click="plus($index)"><b>+</b></span>
                        </div>
                      </div>
                      <div style="margin-right: 20px; margin-top: 14px; color: red; font-weight: bolder; width: 90px;">
                        {{gh.price*gh.sl|numbers:3}}đ</div>
                      <a style="color: black; margin-top: 14px;" href="" ng-click="delete($index)">Xóa</a>
                    </div>
                  </div>
                </div>

                <div style="margin: 12px 20px; color: rgb(200, 200, 200); display: flex;">
                  <h2>Tổng Tiền Thanh Toán </h2>
                  <span style="position: absolute; right: 158px; color: red; font-weight: bold;">
                    <h2>{{getAmount()|numbers:3}}đ</h2>
                  </span> 
                  <button class="btn btn-danger" style="position: absolute; bottom: 22px;right: 37px;">Thanh Toán</button>
                </div>
              </div>
            </div>

          </div>

        </div>


        <div class="modal fade" id="account" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
          aria-hidden="true">

          <div style="margin-top: 60px;" class="modal-dialog" role="document">

            <div class="modal-content" style="border-radius: 30px;">

              <div class="tab-content" id="nav-tabContent" style="width: 100%;">
                <div style="    position: absolute;  z-index: 99;   width: 58.7%;     left: 15px;top: 44px;"
                  class="row nav nav-tabs" id="nav-tab" role="tablist">
                  <button class="nav-item nav-link active col-sm-6" id="nav-profile-tab" data-toggle="tab"
                    href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Đăng Nhâp</button>
                  <button class="nav-item nav-link col-sm-6 " id="nav-home-tab" data-toggle="tab" href="#nav-home"
                    role="tab" aria-controls="nav-home" aria-selected="true">Đăng Ký</button>
                </div>
				<!-- Sign up -->
              		<jsp:include page="/view/html/signup.jsp"></jsp:include>
               	<!-- sign in -->
               		<jsp:include page="/view/html/signin.jsp"></jsp:include>
              </div>
              
              <a aria-hidden="true" href="#" class="close" data-dismiss="modal" aria-label="Close">
                x
              </a>

            </div>
          </div>
        </div>


        <div class="col-sm-3">
          <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
            aria-controls="collapseExample">
            <div class="gio lan">
              <div>
                <img src="/view/img/VN.gif" alt="" style="width: 45px; position: absolute; top: 10px; left: 11px;">
              </div>
              <svg style="    position: absolute;  right: 5px;  top: 10; top: 16px;" xmlns="http://www.w3.org/2000/svg"
                width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                  d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
              </svg>
            </div>
          </a>
          <div class="collapse" id="collapseExample">
            <div class="card card-body"
              style="z-index: 999; width: 100px; top: 102px;padding: 8px; border-radius: 10px; right: 18px;">
              <div class=" language" style="margin-bottom: 5px;
                background-color: #F2F4F5;
                border-radius: 5px;
                padding: 4px;">
                <img src="/view/img/VN.gif" alt="" style="width: 45px; top: 10px; left: 11px;">
                VN
              </div>
              <div class=" language" style="border-radius: 5px;padding: 4px;">
                UK
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- main -->
  <article>
    <div style="padding: 0px 148px;">
      <div class="row">
        <!-- slideshow-->
        	<jsp:include page="/view/html/slideshow.jsp"></jsp:include>
        	
      </div>
      
      <!-- body -->
      <article >
      
        <!--Fash Sale  -->
        	<jsp:include page="/view/html/article/fashsale.jsp"></jsp:include>
        <!-- Xu hướng mua sắm -->
        	<jsp:include page="/view/html/article/xuhuong.jsp"></jsp:include>

      </article>
    </div>
  </article>


  <!-- footer -->
  <jsp:include page="/view/html/footer.jsp"></jsp:include>
 


  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


  <!-- simple slick -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css" defer>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" defer>
  <script src="/view/js/Slick/slick.min.js" defer></script>

</body>

</html>