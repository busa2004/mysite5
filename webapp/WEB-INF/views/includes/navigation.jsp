<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

		<div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="${pageContext.servletContext.contextPath }/index">업무리스트<span class="sr-only">(current)</span></a></li>
            <li><a href="${pageContext.servletContext.contextPath }/report/write">보고서 등록</a></li>
            <li><a href="${pageContext.servletContext.contextPath }/report/list">보고서 관리</a></li>
          </ul>
          <%-- <c:if test='${authUser.postion eq "팀장" }'> --%>
          <ul class="nav nav-sidebar">
            <li><a href="${pageContext.servletContext.contextPath }/report/all">업무 보고 현황</a></li>
            <li><a href="${pageContext.servletContext.contextPath }/eval">평가</a></li>
          </ul>
		 <%--  </c:if> --%>
        </div>
		