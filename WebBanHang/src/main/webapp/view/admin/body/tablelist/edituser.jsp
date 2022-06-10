<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/view/admin/assets/css/uploatanh.css" />

<div class="content-wrapper">


	<div class="page-header">
		<h3 class="page-title">
			<span class="page-title-icon bg-gradient-primary text-white me-2">
				<i class="mdi mdi-border-color"></i>
			</span> Chỉnh sửa người dùng
		</h3>
	</div>

	<div>
		<div class="card">
			<div class="card-body">

				<form class="form-sample" method="post">
					<div class="row">
						<div class="col-md-3">

							<div class="avatar-upload">

								<div class="avatar-edit">
									<label
										style="position: absolute; width: 212px; height: 212px; left: -4px; top: 40px; opacity: 0;"
										for="upload"></label> <input id="upload" type="file"
										onchange="readURL(this);" accept=".png, .jpg, .jpeg" />

								</div>
								<div class="avatar-preview" style="right: 180px; top: 50px;">
									<img id="imageResult" src="/view/admin/assets/images/R.jpg"
										alt=""> <label
										style="margin-top: 25px; margin-left: 26px;" for="upload">Uploat
										ảnh đại diện</label>
								</div>


							</div>


						</div>
						<div class="col-md-9">

							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">User Name</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Full Name</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Gmail</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">PassWord</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Gender</label>
										<div class="col-sm-9">
											<select class="form-control">
												<option>Male</option>
												<option>Female</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Rule</label>
										<div class="col-sm-9">
											<select class="form-control">
												<option>Admin</option>
												<option>Người dùng</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Date of Birth</label>
										<div class="col-sm-9">
											<input type="date" class="form-control" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Status</label>
										<div class="col-sm-4">
											<div class="form-check">
												<label class="form-check-label"> <input type="radio"
													class="form-check-input" name="membershipRadios"
													id="membershipRadios1" value="" checked> Hoạt Động
												</label>
											</div>
										</div>
										<div class="col-sm-5">
											<div class="form-check">
												<label class="form-check-label"> <input type="radio"
													class="form-check-input" name="membershipRadios"
													id="membershipRadios2" value="option2"> Tắc hoạt
													động
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleTextarea1">Address</label>
								<textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
							</div>
						</div>

					</div>


					<button type="button"
						class="btn btn-gradient-success btn-rounded btn-fw">
						<i class="mdi mdi-content-save"></i>Update
					</button>
					<button type="button"
						class="btn btn-gradient-danger btn-rounded btn-fw">
						<i class="mdi mdi-delete-forever"></i>Delete
					</button>
					<button type="button"
						class="btn btn-gradient-warning btn-rounded btn-fw">
						<i class="mdi mdi-reload btn-icon-prepend"></i> Reset
					</button>
					<button type="submit" formaction="/admin/userlist"
						class="btn btn-gradient-primary btn-rounded btn-fw">
						<i class="mdi mdi-exit-to-app"></i>
						Cancel</button>
				</form>
			</div>
		</div>



		<script>
			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						$('#imageResult').attr('src', e.target.result);
					};
					reader.readAsDataURL(input.files[0]);
				}
			}

			$(function() {
				$('#upload').on('change', function() {
					readURL(input);
				});
			});
			var input = document.getElementById('upload');
			var infoArea = document.getElementById('upload-label');

			input.addEventListener('change', showFileName);
			function showFileName(event) {
				var input = event.srcElement;
				var fileName = input.files[0].name;
				infoArea.textContent = 'File name: ' + fileName;
			}
		</script>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	</div>

</div>