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

          <h2 class="sub-header">업무 평가</h2>
          <div class="table-responsive">
          <select name='user_task_no'>
            <c:forEach items="${versionList}"	var="vo" varStatus="status">
       	<option value='${vo.item_version_no }'>${ vo.version}</option>
       	</c:forEach>	
       	 </select>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>내용</th>
                  <th>이름</th>
                  <th></th>
                </tr>
              </thead>
             
              <tbody>
               <c:forEach items="${taskList}"	var="vo" varStatus="status">
                <tr>
                <td>${vo.no}</td>
                <td>${vo.title}</td>
                <td>${vo.content}</td>
                <td>${vo.user_name}</td>
                <td>        <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
  평가
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">평가</h4>
      </div>
      <div class="modal-body">
       
       
       <!-- 임시 -->
       <!-- ajax로 만들어야 함 -->
        
		     
		     
		     <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                <th>번호</th>
                  <th>항목</th>
                  <th>항목 번호</th>
                  <th>점수</th>
                </tr>
              </thead>
             
              <tbody>
              <c:forEach items="${itemList}"	var="vo" varStatus="status">
                <tr>
                <td>${vo.item_version_no}</td>
                <td>${vo.content}</td>
                <td>${vo.no}</td>
                <td><input type="text" name="score" value="0~100"></td>
		     	</tr>
		     </c:forEach>
		     </tbody>
		     </table>
		     </div>
		     
       	
        <!-- ajax로 만들어야 함 -->
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
        <!--   -->
      </div>
    </div>
  </div>
</div>
				</td>
                </tr>
                </c:forEach>
              </tbody>
              
            </table>
          </div>
        </div>
        
        
        
        
        
        
        
        

        
        
        
        
        
        
        
        
        
        