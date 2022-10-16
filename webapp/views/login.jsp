<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body">
	<div class="container">
		
		<div class="screen">
			<img src="<c:url value='/template/login/logo.png' />"
					alt="IMG-LOGO">
			<div class="screen__content">
				<form class="login" action="<c:url value='/dang-nhap' />" method="POST">
					<div class="login__field">
						<i class="login__icon fas fa-user"></i> <input type="text"
							class="login__input" placeholder="Username" name="userName">
					</div>
					<div class="login__field">
						<i class="login__icon fas fa-lock"></i> <input type="password"
							class="login__input" placeholder="Password" name="password">
					</div>
					
					
					<c:if test="${ not empty message }">
						<div class="alert alert-${ alert }">
								${ message }
						</div>
					</c:if>
					
					<input type="hidden" value="login" name="action" />
					<button class="button login__submit" type="submit">
						<span class="button__text">Log In</span> <i
							class="button__icon fas fa-chevron-right"></i>
					</button>
				</form>
			</div>
			<div class="screen__background">
				<span class="screen__background__shape screen__background__shape4"></span>
				<span class="screen__background__shape screen__background__shape3"></span>
				<span class="screen__background__shape screen__background__shape2"></span>
				<span class="screen__background__shape screen__background__shape1"></span>
			</div>
		</div>
	</div>
</body>
</html>