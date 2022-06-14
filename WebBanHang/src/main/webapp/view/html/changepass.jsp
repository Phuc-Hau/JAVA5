<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>
<link type="text/css" rel="stylesheet" href="https://static.xx.fbcdn.net/rsrc.php/v3/yn/l/0,cross/JT8ZJT0WWqH.css?_nc_x=Ij3Wp8lg5Kz" data-bootloader-hash="uUdC1OG" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="https://static.xx.fbcdn.net/rsrc.php/v3/yq/l/0,cross/L0VTH1UsUXD.css?_nc_x=Ij3Wp8lg5Kz" data-bootloader-hash="0QQt+vI" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/passmabaomat.css">

</head>
<body>
	<div class="_4-u5 _30ny">
			<form:form method="post" action="/account/changepassuser" modelAttribute="changepass" class="_9vtf">
			
			<div class="mvl ptm uiInterstitial _9np_ uiInterstitialLarge uiBoxWhite">
				<div class="uiHeader uiHeaderBottomBorder mhl mts uiHeaderPage interstitialHeader">
					<div class="clearfix uiHeaderTop">
						<div>
							<h2 class="uiHeaderTitle" aria-hidden="true">Đổi mật khẩu</h2>
						</div>
					</div>
				</div>
				<div class="phl ptm uiInterstitialContent">
					<div>
						<div class="clearfix">
							<div> 
								<div class="_9okt olo" >
									<form:input  value="${cookie.username.value}" style="margin-top: 0px; border: none" type="text" class="yu inputtext _55r1 _9oku _9o1w" name="id" placeholder="User Name" path="username"></form:input>	
								</div >
								<div class="_9okt olo">
									<form:input  style="margin-top: 0px; border: none" type="password" class="yu inputtext _55r1 _9oku _9o1w" path="password" name="password" placeholder="Password"></form:input>	
					
								</div>
								
							</div>
							<div> 
								<div class="_9okt olo" >
								<form:input   style="margin-top: 0px; border: none" type="password" class="yu inputtext _55r1 _9oku _9o1w" name="NewPassword" path="newpassword" placeholder="New Password"></form:input>	
					
								</div >
								<div class="_9okt olo">
									<form:input  style="margin-top: 0px; border: none" type="password" class="yu inputtext _55r1 _9oku _9o1w" name="ConfirmPassword" path="confirmpassword" placeholder="Confirm Password"></form:input>	
					
									
								</div>
								<div  class="_9okt olo"><span style="color: red">${mess}</span><br></div>
							</div>
							
						</div>
						
					</div>
				</div>
				<div class="hu uiInterstitialBar uiBoxGray topborder" style="margin-top: 330px;  margin-bottom: 19px;">
					<div class="clearfix">
						<div class="rfloat _ohf" style="margin-left: 122px; margin-top: 10px1">
							<button formaction="/product/index" style=" padding: 0px; width: 100px;" class="_42ft _42fu _9nq1 textPadding29px selected _42g-" type="submit" id="skip_button">Hủy</button>
							<button value="1" class="_42ft _42fu _9nq0 _9nq023 textPadding20px selected _42g-" id="btn_continue" name="btn_continue" type="submit">Đổi mật khẩu</button>
						</div>
						<div class="pts"></div>
					</div>
				</div>
			</div>
			
		</form:form>
	</div>
		
</body>
</html>