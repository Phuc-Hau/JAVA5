<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div style="margin-top: 10px;">
	<div class="row"
		style="background: #FCDDEF; padding: 12px; border-bottom: 1px solid rgb(244, 244, 244); display: flex;">
		<img src="img/ico_dealhot.png" alt=""> <span
			style="font-size: 17px; font-weight: bold;">Xu Hướng Mua Sắp</span>
	</div>
	<div class="row" ng-controller="xuhuongctl"
		style="min-height: 50px; background: white;">

		<div class="{{soht}} hotsp"
			ng-repeat="xh in xuhuongSP|limitTo:row:begin">
			<div class="">
				<a href="" ng-click="inserts($index+begin)"> <!-- anh -->
					<div>
						<img style="margin-top: 3px;" src="/view/img/sach/{{xh.img}}"
							class="col-sm-12" alt="">
					</div> <!-- Title -->
					<h2>
						<a class="sachxuhuong">{{xh.title}}</a>
					</h2> <!-- Gia -->
					<div class="xuhuong">
						<span style="color: red;">{{xh.price|numbers:3}}<span
							style="font-size: 16px;">Ä‘</span></span> <span
							style="text-align: right; font-size: 11px;">Ä�Ă£ bĂ¡n
							{{xh.sold|solds}}</span>
					</div>
				</a>
			</div>
		</div>

	</div>

	<div class="xemthem">
		<a style="margin: 0 auto; margin-bottom: 15px;"
			href="./xuhuongsp.html" class="btn btn-danger">Xem Thêm</a>
	</div>
	<div style="background-color: white; margin: 0 -15px;"
		class="controllxuhuong">
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" ng-click="prev()"
					href="#">Previous</a></li>

				<li class="page-item  {{getPageCount==$index+1}}"
					ng-init="gu={{getPageCount==$index+1}}" ng-repeat="i in Countpage ">
					<a class="page-link" href="#" ng-click="getPage($index+1)">
						{{gu}}{{$index+1}} </a>
				</li>

				<li class="page-item"><a class="page-link" ng-click="next()"
					href="#">Next</a></li>
			</ul>
		</nav>
	</div>

</div>