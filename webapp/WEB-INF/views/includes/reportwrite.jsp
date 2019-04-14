<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     
     
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
       <br>
          <h2 class="page-header">보고서 등록</h2>

         
	<form action="${pageContext.servletContext.contextPath }/report/write" method="post">
		<div class="form-group">
			<label for="subject">업무</label> 
		
<br>
<select name='user_task_no'>
    
     <c:forEach items="${taskList}"	var="vo" varStatus="status">
    <option value='${vo.user_task_no}'>${vo.title }</option>
    </c:forEach>
</select>

		</div>
		<div class="form-group">
			<label for="subject">제목</label> <input type="text"
				class="form-control" id="subject" name="title"
				placeholder="제목을 입력하세요.">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea class="form-control" id="content" name="content" rows="3"></textarea>
		</div>
		<button type="submit" class="btn btn-primary">작성</button>
	</form>


</div>
       