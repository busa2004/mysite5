<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="${pageContext.servletContext.contextPath }/assets/css/main-index.css" rel="stylesheet" type="text/css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>

<body>
	<c:import url="/WEB-INF/views/includes/header.jsp" />
	
    

    <div class="container-fluid">
      <div class="row">
        <c:import url="/WEB-INF/views/includes/navigation.jsp" />
        <c:choose>
			<c:when test='${navigation eq "task" }'>
				<c:import url="/WEB-INF/views/includes/task.jsp" />		
			</c:when>
			<c:when test='${navigation eq "reportwrite" }'>
				<c:import url="/WEB-INF/views/includes/reportwrite.jsp" />		
			</c:when>
			<c:when test='${navigation eq "reportlist" }'>
				<c:import url="/WEB-INF/views/includes/reportlist.jsp" />		
			</c:when>
			<c:when test='${navigation eq "allreportlist" }'>
				<c:import url="/WEB-INF/views/includes/allreportlist.jsp" />		
			</c:when>
			<c:when test='${navigation eq "eval" }'>
				<c:import url="/WEB-INF/views/includes/eval.jsp" />		
			</c:when>
			<c:otherwise>
				
			</c:otherwise>
		</c:choose>
      </div>
    </div>
</body>
</html>