<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header.jsp"></c:import>
<style>
.wrap {width: 1000px; height:800px; margin: auto; }
.tb{width: 900px;	
	
}
.title {font-size:2rem; text-align: center;}
.head{height: 50px; background-color: #f1f3f5;}
.body{height: 40px;
	border-top:0.5px solid #b2b2b2;
	margin:15px 0px;
	}
/* header.css */
.viewport {background-color: ;}
header {position: relative;
background-color: rgba(255,255, 255,0);}

/* footer.css */
footer {margin-top:7rem;}

</style>

</head>

<body>
	
	<section id="container" class="wrap">
		
		<div class="title" style="height:80px; margin-top: 20px;"> <img alt="" src="/resources/images/notice/notice.png" style="width: 50px;" height="50px;"> 공지사항</div> <br><br>
	
		<table class="tb" style="text-align: center; margin-left:auto;margin-right:auto;">
	
		<thead class="head">
			<th scope="col" width=10%>NO</th>
			<th scope="col" width=50%>SUBJECT</th>
			<th scope="col" width=15%>NAME</th>
			<th scope="col" width=15%>DATE</th>
			<th scope="col" width=10%>HIT</th>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="d" varStatus="i">
			
			<tr class="body">
				<td>${d.noticeNum}</td>
				<td><a href="./detail?noticeNum=${d.noticeNum}" class="">${d.subject}</a></td>
				<td>${d.name}</td>
				<td>${d.createDate}</td>
				<td>${d.hit}</td>
			</tr>
		</c:forEach>
		</tbody>
		</table>
		
	<!-- 페이지 번호 -->
	<br>
	<nav >
	  <ul class="">
	  <c:if test="${pager.pre}">
	    <li class="page-item">
	      <a class="page-link link-offset-2 link-underline link-underline-opacity-0 text-black" href="./list?page=${pager.startNum-1}&kind=${param.kind}&search=${param.search}" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	   </c:if>
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">		    
		    	<li class="page-item" style="text-align: center; height: 50px; margin-top: 20px;">
		    	<a class="" href="./list?page=${i}&kind=${param.kind}&search=${param.search}">${i}</a>
		    	<li>
			</c:forEach>
		<c:if test="${pager.next}">
		    <li class="page-item">
		  	   	<a class="" href="./list?page=${pager.lastNum+1}&kind=${param.kind}&search=${param.search}" aria-label="Next">
		    	<span aria-hidden="true">&raquo;</span>
		      	</a>
		   	</li>
		   </c:if>
		 </ul>
	 </nav>
	 <br>
	<!-- 검색창 -->	
	<form action="./list" method="get" style="width: 70%">
		<div class="input-group" id="frm" style="width: 300px;">
			  <input type="hidden" value="${pager.page}" id="page" name="page">
			    <!-- 파라미터 이름 kind -->
			  <select name="kind" id="k" class="form-select form-select-sm" aria-label="Small select example">
				  <option class="kind" value="subject">Subject</option>
				  <option class="kind" value="contents">Contents</option>
			  </select>
			  
			  <input type="text" name="search" value="${pager.search}" class="form-control" placeholder="검색어를 입력하세요." aria-label="Recipient's username" aria-describedby="button-addon2">
		</div>
			   <div class="col-auto" style="width: 45%; float: right;">
			  	<button class="btn btn-secondary" type="submit" id="button-addon2">Search</button>
		  	   </div>
		</form>
		
		<c:if test="${member.roleNum == 1}">
			<a class="btn btn-outline-secondary" href="./add">Add</a><br><br>				
		</c:if>
</section>
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>