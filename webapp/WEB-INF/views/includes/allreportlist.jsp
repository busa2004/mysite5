<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     
     
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <!-- <h1 class="page-header">Dashboard</h1> -->

          <!-- <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
          </div> -->

          <h2 class="sub-header">업무 보고 현황</h2>
          <div class="table-responsive">
         <div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
    상태
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.servletContext.contextPath }/report/all?dropbox=yes">승인</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.servletContext.contextPath }/report/all">대기</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.servletContext.contextPath }/report/all?dropbox=no">거부</a></li>

  </ul>
</div>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>번호</th>
                  <th>상태</th>
                  <th>제목</th>
                  <th>내용</th>
                  <th>업무</th>
                  <th>이름</th>
                  <th>결재</th>
                </tr>
              </thead>
             
              <tbody>
              
              <c:choose>
				<c:when test="${dropbox == 'yes' }">
               <c:forEach items="${reportList}"	var="vo" varStatus="status">
               
               <c:if test="${vo.status eq 'yes' }">
                <tr>
                <td>${vo.no}</td>
                <td>${vo.status}</td>
                <td>${vo.title}</td>
                <td>${vo.content}</td>
                <td>${vo.task_title}</td>
                <td>${vo.user_name}</td>
                <td>
                	<a href="${pageContext.servletContext.contextPath }/report/status?no=${vo.no}&status=no"><button type="button" class="btn btn-danger">거부</button></a></td>
                </tr>
                </c:if>
                
          		
                </c:forEach>
               </c:when>
               
               <c:when test="${dropbox == 'no' }">
               <c:forEach items="${reportList}"	var="vo" varStatus="status">
               
               <c:if test="${vo.status eq 'no' }">
                <tr>
                <td>${vo.no}</td>
                <td>${vo.status}</td>
                <td>${vo.title}</td>
                <td>${vo.content}</td>
                <td>${vo.task_title}</td>
                <td>${vo.user_name}</td>
                <td><a href="${pageContext.servletContext.contextPath }/report/status?no=${vo.no}&status=yes"><button type="button" class="btn btn-primary">승인</button></a>
                	</td>
                </tr>
                </c:if>
                
          		
                </c:forEach>
               </c:when>
               
               <c:otherwise>
               <c:forEach items="${reportList}"	var="vo" varStatus="status">
               
               <c:if test="${vo.status eq 'wait' }">
                <tr>
                <td>${vo.no}</td>
                <td>${vo.status}</td>
                <td>${vo.title}</td>
                <td>${vo.content}</td>
                <td>${vo.task_title}</td>
                <td>${vo.user_name}</td>
                <td><a href="${pageContext.servletContext.contextPath }/report/status?no=${vo.no}&status=yes"><button type="button" class="btn btn-primary">승인</button></a>
                	<a href="${pageContext.servletContext.contextPath }/report/status?no=${vo.no}&status=no"><button type="button" class="btn btn-danger">거부</button></a></td>
                </tr>
                </c:if>
                
          		
                </c:forEach>
               </c:otherwise>
               </c:choose>
              </tbody>
              
            </table>
          </div>
        </div>