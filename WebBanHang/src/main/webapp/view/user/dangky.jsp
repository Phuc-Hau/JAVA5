<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="https://static.xx.fbcdn.net/rsrc.php/v3/yn/l/0,cross/JT8ZJT0WWqH.css?_nc_x=Ij3Wp8lg5Kz" data-bootloader-hash="uUdC1OG" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="https://static.xx.fbcdn.net/rsrc.php/v3/yq/l/0,cross/L0VTH1UsUXD.css?_nc_x=Ij3Wp8lg5Kz" data-bootloader-hash="0QQt+vI" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/passmabaomat.css">

</head>
<body>
<span style="color: red">${erro}</span><br>
	<div class="_4-u5 _30ny">
		<form:form method="post" action="/account/signup/confirm" id="u_0_a_oY" modelAttribute="user">
			<div class="mvl ptm uiInterstitial _9np_ uiInterstitialLarge uiBoxWhite">
				<div class="uiHeader uiHeaderBottomBorder mhl mts uiHeaderPage interstitialHeader">
					<div class="clearfix uiHeaderTop">
						<div>
							<h2 class="uiHeaderTitle" aria-hidden="true">Đăng Ký</h2>
						</div>
						<div style="color: red" class="_52lr fsm fwn fcg">${message }</div>
					</div>
				</div>
				<div class="phl ptm uiInterstitialContent">
					<div>
						<div class="clearfix">
							<div class="_9okt olo" >
								<form:input style="margin-top: 0px; border: none" type="text" class="yu inputtext _55r1 _9oku _9o1w" name="id" placeholder="User Name" path="username"></form:input>
		
							</div >
							<div class="_9okt olo">
								<input style="margin-top: 0px; border: none" type="text" class="yu inputtext _55r1 _9oku _9o1w" name="fullname" placeholder="Full Name">
								
							</div>
							<div class="_9okt olo">
								<form:input style="margin-top: 0px; border: none" type="password" minlength="8" class="yu inputtext _55r1 _9oku _9o1w" name="passwordd" placeholder="Password" path="password"></form:input>
								
							</div>
							<div class="_9okt olo">
								<form:input style="margin-top: 0px; border: none" type="text" class="yu inputtext _55r1 _9oku _9o1w" name="email" id="email" aria-describedby="emailHid" placeholder="Email" path="email"></form:input>
							</div>
							
						</div>
						
					</div>
				</div>
				<div class="hu uiInterstitialBar uiBoxGray topborder" style="margin-top: 317px;  margin-bottom: 19px;">
					<div class="clearfix">
						<div class="rfloat _ohf" style="margin-left: 304px">
							<button formaction="/product/index" style=" padding: 0px; width: 100px;" class="_42ft _42fu _9nq1 textPadding29px selected _42g-" type="submit" id="skip_button">Hủy</button>
							<button value="1" class="_42ft _42fu _9nq0 textPadding20px selected _42g-" id="btn_continue" name="btn_continue" type="submit">Đăng ký</button>
						</div>
						<div class="_58mu" data-nocookies="1" id="u_4_r_R1"><p class="_58mv">Bằng cách nhấp vào Đăng ký, bạn đồng ý với <a href="" id="terms-link" target="_blank" rel="nofollow">Điều khoản</a>, <a href="" id="privacy-link" target="_blank" rel="nofollow">Chính sách dữ liệu</a> và <a href="" id="cookie-use-link" target="_blank" rel="nofollow">Chính sách cookie</a> của chúng tôi. Bạn có thể nhận được thông báo của chúng tôi qua SMS và hủy nhận bất kỳ lúc nào.</p></div>
						<div class="pts"></div>
					</div>
				</div>
			</div>
		</form:form>
	</div>
	
</body>
</html>