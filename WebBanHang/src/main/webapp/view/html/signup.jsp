<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="tab-pane fade " id="nav-home" role="tabpanel"
	aria-labelledby="nav-home-tab">
	<div class="row ">
		<div ng-controller="mydk" class="col-sm-7 " style="min-height: 50px;">
			<h2>Xin Chào</h2>
			<form action="" style="padding: 0 30px;" name="frm" class="frm">
				<div class="controll">
					<input required minlength="2" maxlength="30" name="fullname"
						ng-model="fullname" type="text" placeholder="Họ tên">
				</div>
				<em ng-if="frm.fullname.$invalid" class="text-danger h6">Nhập
					tên họ tên từ 2 đến 30 ký tự</em>

				<div class="controll">
					<input type="email" required minlength="2" name="dkemail"
						ng-model="dkemail" placeholder="Nhập email">
				</div>
				<em ng-if="frm.dkemail.$invalid" class="text-danger h6">Nhập
					đúng định dạng email vd: abc@email.com</em>

				<div class="controll">
					<input ng-model="pass" name="pass" required minlength="8"
						type="password" placeholder="Mật khẩu mới">
				</div>
				<em ng-if="frm.pass.$invalid" class="text-danger h6">Password
					từ 8 ký tự</em>

				<div>
					<button type="submit" class="btn btn-danger dangky">Đăng
						Ký</button>

				</div>
			</form>

			<div class="ghIlRk">
				<p class="social-heading" style="top: 72px;">
					<span style="position: relative; top: -12px; background: white;">
						Hoặc tiếp tục bằng</span>
				</p>
			</div>
			<div class="theo">
				<svg xmlns="http://www.w3.org/2000/svg" style="color: #0d6efd;"
					width="56" height="56" fill="currentColor" class="bi bi-facebook"
					viewBox="0 0 16 16">
                          <path
						d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                        </svg>
				<svg xmlns="http://www.w3.org/2000/svg"
					style="margin: 0 20px; color: #dd4b39;" width="56" height="56"
					fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                          <path
						d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                        </svg>
				<svg xmlns="http://www.w3.org/2000/svg" style="color: #55acee;"
					width="56" height="56" fill="currentColor" class="bi bi-twitter"
					viewBox="0 0 16 16">
                          <path
						d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                        </svg>
				<p style="margin-top: 21px;" class="note">
					Bằng việc tiếp tục, bạn đã chấp nhận <a
						style="text-decoration: underline; color: black;" href="">điều
						khoản sử dụng</a>
				</p>
			</div>

		</div>
		<div class="col-sm-5"
			style="min-height: 50px; border-bottom-right-radius: 30px; background: linear-gradient(136deg, rgb(240, 248, 255) -1%, rgb(219, 238, 255) 85%);">
			<img src="/view/img/3145.jpg_wh860.jpg" alt=""
				style="border-bottom-right-radius: 30px;">
		</div>
	</div>
</div>
