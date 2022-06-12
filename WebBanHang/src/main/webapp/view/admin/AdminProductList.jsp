<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet"
	href="/view/admin/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="/view/admin/assets/vendors/css/vendor.bundle.base.css">

<link rel="stylesheet" href="/view/admin/assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="/view/admin/assets/images/favicon.ico" />
<body>
	<div class="container-scroller">

		<!-- partial -->
		<jsp:include page="/view/admin/partials/navbar.jsp"></jsp:include>

		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="/view/admin/partials/sidebar.jsp"></jsp:include>

			<!-- body -->
			<div class="main-panel">
				<!-- body:home.jsp -->
				<jsp:include page="/view/admin/body/tablelist/listproduct.jsp"></jsp:include>
				
				<!-- partial:partials/_footer.html -->
				<jsp:include page="/view/admin/partials/footer.jsp"></jsp:include>

			</div>
		</div>
		<!-- page-body-wrapper ends -->
	</div>


	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="/view/admin/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="/view/admin/assets/vendors/chart.js/Chart.min.js"></script>
	<script src="/view/admin/assets/js/jquery.cookie.js"
		type="text/javascript"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="/view/admin/assets/js/off-canvas.js"></script>
	<script src="/view/admin/assets/js/hoverable-collapse.js"></script>
	<script src="/view/admin/assets/js/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="/view/admin/assets/js/dashboard.js"></script>
	<script src="/view/admin/assets/js/todolist.js"></script>
	<!-- End custom js for this page -->
</body>
</html>