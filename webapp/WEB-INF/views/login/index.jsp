<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="${pageContext.servletContext.contextPath }/assets/css/login-index.css" rel="stylesheet" type="text/css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <div class="container">

      <form class="form-signin" id="login-form" name="loginform" method="post" action="${pageContext.servletContext.contextPath }/user/auth">
        <h2 class="form-signin-heading">douzone</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input name="id" type="email" id="inputEmail" class="form-control" placeholder="id" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <c:if test='${result == "fail" or param.result == "fail" }'>
						<p>
							로그인이 실패 했습니다.
						</p>
		</c:if>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
      

    </div> <!-- /container -->
    
    
</body>
</html>