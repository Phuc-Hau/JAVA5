<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sách Hay</title>

  <!-- Angularjs -->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.0/angular.min.js"></script>

  <!-- Angularjs-route -->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>

  <!-- Bootstrap 4 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


  <!-- CSS -->
  <link rel="stylesheet" href="CSS/sach.css">

  <!-- JS -->
  <script src="js/app.js"></script>
  <script src="js/angular.js"></script>



  <style>
    .controllxuhuong {
      display: none;
    }
  </style>
</head>
<body ng-app="myapp" style=" background-color: #efefef;" ng-controller="mygiohang">


  <header style="height: 130px;">
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
          <img src="IMG/logo.gif" alt="" style="position: absolute; width: 195px;  margin-left: 35px;">
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
            <div style="display:none;" ng-include="'html/nav/nav.html'" onmouseout="an()" id="danhmucsp">

            </div>
          </div>
          <div id="danhmucspkp" style="display: none;" class="fhs_dropdown_cover"></div>
        </div>
      </div>
      <div class="col-sm-5" ng-controller="search">
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

                    <div><img src="img/sach/{{ser.img}}" alt="" height="100px"></div>
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


        <div class="col-sm-3">
          <a href="#" data-toggle="modal" data-target="#exampleModal">
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
                      <div><img src="img/sach/{{gh.img}}" alt="" height="50px"></div>
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


        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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

                <div class="tab-pane fade " id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                  <div class="row ">
                    <div ng-controller="mydk" class="col-sm-7 " style="min-height: 50px;">
                      <h2>Xin Chào </h2>
                      <form action="" style="padding: 0 30px;" name="frm" class="frm">
                        <div class="controll">
                          <input required minlength="2" maxlength="30" name="fullname" ng-model="fullname" type="text"
                            placeholder="Họ tên">
                        </div>
                        <em ng-if="frm.fullname.$invalid" class="text-danger h6">Nhập tên họ tên từ 2 đến 30 ký
                          tự</em>

                        <div class="controll">
                          <input type="email" required minlength="2" name="dkemail" ng-model="dkemail"
                            placeholder="Nhập email">
                        </div>
                        <em ng-if="frm.dkemail.$invalid" class="text-danger h6">Nhập đúng định dạng email vd:
                          abc@email.com</em>

                        <div class="controll">
                          <input ng-model="pass" name="pass" required minlength="8" type="password"
                            placeholder="Mật khẩu mới">
                        </div>
                        <em ng-if="frm.pass.$invalid" class="text-danger h6">Password từ 8 ký tự</em>

                        <div>
                          <button type="submit" class="btn btn-danger dangky">Đăng Ký</button>

                        </div>
                      </form>

                      <div class="ghIlRk">
                        <p class="social-heading" style="top:72px;">
                          <span style="position: relative; top: -12px; background: white;">
                            Hoặc tiếp tục bằng</span>
                        </p>
                      </div>
                      <div class="theo">
                        <svg xmlns="http://www.w3.org/2000/svg" style="color: #0d6efd;" width="56" height="56"
                          fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                          <path
                            d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" style="margin: 0 20px;color: #dd4b39;" width="56"
                          height="56" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                          <path
                            d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" style="color: #55acee;" width="56" height="56"
                          fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                          <path
                            d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                        </svg>
                        <p style="    margin-top: 21px;" class="note">Bằng việc tiếp tục, bạn đã chấp nhận <a
                            style="    text-decoration: underline;color: black;" href="">điều khoản sử dụng</a></p>
                      </div>

                    </div>
                    <div class="col-sm-5"
                      style="min-height: 50px; border-bottom-right-radius: 30px;    background: linear-gradient(136deg, rgb(240, 248, 255) -1%, rgb(219, 238, 255) 85%);">
                      <img src="img/3145.jpg_wh860.jpg" alt="" style="border-bottom-right-radius: 30px;">
                    </div>
                  </div>


                </div>
                <div class="tab-pane fade show active" id="nav-profile" role="tabpanel"
                  aria-labelledby="nav-profile-tab">
                  <div class="row ">
                    <div ng-controller="mydn" class="col-sm-7 " style="min-height: 50px;">
                      <h2>Xin Chào</h2>
                      <form action="" ng-submit="register()" novalidate style="padding: 0 30px;" name="frmn"
                        class="frm">

                        <div class="controll">
                          <input type="email" required minlength="2" name="dnemail" ng-model="dnemail"
                            placeholder="Nhập email">
                        </div>
                        <em ng-if="frmn.dnemail.$invalid" class="text-danger h6">Nhập đúng định dạng email vd:
                          abc@email.com</em>

                        <div class="controll">
                          <input ng-model="pass" name="pass" type="password" placeholder="Mật khẩu">
                        </div>
                        <em ng-if="frmn.pass.$invalid" class="text-danger h6">Password từ 8 ký tự</em>

                        <div>
                          <button type="submit" class="btn btn-danger dangky">Đăng Nhập</button>

                        </div>
                      </form>
                      <div class="ghIlRk">
                        <p class="social-heading"><span style="position: relative; top: -12px; background: white;">Hoặc
                            tiếp
                            tục bằng</span></p>
                      </div>
                      <div class="theo" style="top: 110px;">
                        <svg xmlns="http://www.w3.org/2000/svg" style="color: #0d6efd;" width="56" height="56"
                          fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                          <path
                            d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" style="margin: 0 20px;color: #dd4b39;" width="56"
                          height="56" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                          <path
                            d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" style="color: #55acee;" width="56" height="56"
                          fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                          <path
                            d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                        </svg>
                        <p style="    margin-top: 21px;" class="note">Bằng việc tiếp tục, bạn đã chấp nhận <a
                            style="    text-decoration: underline;color: black;" href="">điều khoản sử dụng</a></p>
                      </div>

                    </div>
                    <div class="col-sm-5"
                      style="min-height: 50px; border-bottom-right-radius: 30px;    background: linear-gradient(136deg, rgb(240, 248, 255) -1%, rgb(219, 238, 255) 85%);">
                      <img src="img/3145.jpg_wh860.jpg" alt="" style="border-bottom-right-radius: 30px;">
                    </div>
                  </div>
                </div>

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
                <img src="IMG/VN.gif" alt="" style="width: 45px; position: absolute; top: 10px; left: 11px;">
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
                <img src="IMG/VN.gif" alt="" style="width: 45px; top: 10px; left: 11px;">
                VN
              </div>
              <div class=" language" style="border-radius: 5px;padding: 4px;">
                <img src="IMG/English.gif" alt="" style="width: 45px; top: 10px; left: 11px;">
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
        <!-- Show left-->
        <div class="col-sm-9">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="IMG/show1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="IMG/show3.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="IMG/show4.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="IMG/show5.jpg" alt="Third slide">
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
        </div>
        <!-- Show Right -->
        <div class="col-sm-3">
          <div>
            <img src="IMG/sachhow1.jpg" style="object-fit: cover; max-height: 174px; width: 100%!important;" alt="">
          </div>
          <div style="margin-top: 5px;">

            <img src="IMG/sachhow2.jpg" style="object-fit: cover; max-height: 174px; width: 100%!important;;" alt="">
          </div>

        </div>
      </div>
      <!-- body -->
      <article ng-controller="myindex">
        <!--Fash Sale  -->

        <div ng-controller="Salectl" style="margin-top: 10px; position: relative;">
          <div class="row"
            style="background: oldlace; padding: 12px; border-bottom: 1px solid rgb(244, 244, 244);    display: flex;">
            <img src="https://frontend.tikicdn.com/_desktop-next/static/img/giasoc.svg" alt="flash deal">
            <img width="21" src="https://frontend.tikicdn.com/_desktop-next/static/img/dealFlashIcon.svg"
              alt="flash deal">
            <img src="https://frontend.tikicdn.com/_desktop-next/static/img/homnay.svg" alt="flash deal">
            <div class="ccRlPb" style="position: absolute;  right: 10px;">
              <span>01</span>:
              <span class="min">32</span>:
              <span>09</span>
            </div>
          </div>

          <!-- Sản phẩm Sale -->
          <div class="row items" style="  min-height: 50px; background: white;">

            <div class="col-sm-3 hotsp" ng-repeat="sale in saleSP">
              <a href="" ng-click="insert($index)">

                <div class="sp">
                  <!-- anh -->
                  <div>
                    <img style="margin-top: 3px;" src="IMG/sach/{{sale.img}}" class="col-sm-12" alt="">
                  </div>
                  <!-- Title -->
                  <h2>
                    <span class="sachtitle">{{sale.title}}</span>
                  </h2>

                  <!-- Gia -->
                  <div class="salegia">
                    <span
                      style="color: rgba(0,0,0,.13); font-size: 16px; text-decoration: line-through;">{{sale.price|number}}đ</span>
                    <span style="color: red;">{{sale.price-(sale.price*sale.sale)|numbers}} <span
                        style="margin-left: -5px;font-size: 16px;">đ</span></span>
                    <span class="DTL">-{{sale.sale|percentage}} </span>
                  </div>
                  <!-- Thanh sale -->
                  <div class="sale-item__lower-wrapper">
                    <div class="sale-item__lower-left">
                      <div class="sale-progress-bar">
                        <div class="sale-progress-bar__text">Đã bán {{sale.sold}} </div>
                        <div class="sale-progress-bar__complement-wrapper">
                          <!-- Thay đổi -->
                          <div class="sale-progress-bar__complement-sizer" style="width: 50%;" id="thanhgia">
                            <div class="sale-progress-bar__complement-color"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </div>

        <!-- Xu hướng mua sắm -->
        <div ng-include="'html/article/xuhuong.html'"></div>

      </article>
    </div>
  </article>


  <!-- footer -->
  <footer ng-include=" 'html/footer.html' " style="background: white; border-top: 5px solid red; margin-top: 36px;">
  </footer>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


  <!-- JS -->
  <script src="js/angular.js" defer></script>
  <script src="js/app.js"></script>
  <script src="js/taikhoang.js" defer></script>
  <script src="js/giohang.js" defer></script>

  <!-- simple slick -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css" defer>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" defer>
  <script src="js/Slick/slick.min.js" defer></script>

</body>

</html>