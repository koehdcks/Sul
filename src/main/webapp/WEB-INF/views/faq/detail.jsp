<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel="stylesheet" href="/resources/style/reset.css">
<link rel="stylesheet" href="/resources/style/basic.css">
<link rel="stylesheet" href="/resources/style/detail.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<c:import url="../temp/header.jsp"></c:import>
	<input type="hidden" value="${member.id}" id="check_id" name="name">
	<section>
		<div class="wrap">
			<div class="main">
				<h1 id="title" style="font-weight: 900;">FAQ kind</h1>
				<table>
					<c:forEach items="${list}" var="dto" varStatus="i">
						<tr>
							<td class="listTitle"  data-num="${dto.num}"name="num" >
								<input type="hidden" value="${dto.num}"  name="ref" class="listRef">
								<a href="#">
									<span class="faqQ">Q.</span>
									${dto.subject}
								</a>
							</td>
							<td>${dto.kind}</td>
							<td><button id="underBtn">+</button></td>
						</tr>
						<tr><td>${dto.contents}</td></tr>
					</c:forEach>
				</table>
			</div>
			<div class="side">
				<ul>
					<li class="notice"><a href="#">공지사항</a></li>
					<li class="qna"><a href="#">1:1문의</a></li>
				</ul>
			</div>
			<!-- <nav class="t_page">
				<ul class="pagination">
					<c:if test="${pager.pre}">
					<li class="page-item">
						<a class="move" href="#" data-num="${pager.startNum-1}" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
				</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li class="page-item "><a class="page-link move" href="#" data-num="${i}">${i}</a></li>
				</c:forEach>
				<c:if test="${pager.next}">
					<li class="page-item">
						<a class="move" href="#" data-num="${pager.lastNum+1}" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</c:if>
				</ul>
			</nav> -->

			<div class="t_search">
				<c:if test="${member.roleNum == 1}">	
					<a class="btn btn-danger" href="./add">등록</a>
				</c:if>
			</div>
		</div>
    </section>
    
    
    
<c:import url="../temp/footer.jsp"></c:import>
<script src="/resources/js/faq/list.js"></script>