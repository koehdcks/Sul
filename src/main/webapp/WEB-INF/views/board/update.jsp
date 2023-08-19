<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>

	<section class="container mt-5">
	<h1 class="my-4 text-center">Update Page</h1>
		<form action="./update" method="post">
		<input type="hidden" name="num" value="${dto.num}">
		<div class="mb-3">
		  <label for="subject" class="form-label">SUBJECT</label>
		  <input type="text" name="subject" class="form-control" id="subject" value="${dto.subject}">
		</div>
		
		<div class="mb-3">
		  <label for="name" class="form-label">NAME</label>
		  <input type="text" name="name" readonly value="${member.id}" class="form-control" id="name" value="${dto.name}">
		</div>
		
		<div class="mb-3">
		  <label for="contents" class="form-label">CONTENTS</label>
		  <textarea class="form-control" name="contents" id="contents" rows="15">${dto.contents}</textarea>
		</div>
		
		<div class="my-3">
		<br>
			<a class="btn btn-outline-secondary" href="./list">LIST</a>
			<button type="submit" class="btn btn-secondary">UPDATE</button>
		</div>
	</form>
</section>

</body>
</html>