<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu:wght@700&family=Nanum+Pen+Script&family=Single+Day&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 한글엔코딩 -->
<fmt:requestEncoding value="utf-8"/>

<!-- 입력폼 -->
	<form action="" method="post">
		<table class="table table-bordered" style="width: 300px;">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" class="form-control"
					style="width: 120px;"></td>
			</tr>

			<tr>
				<th>나이</th>
				<td><input type="text" name="age" class="form-control"
					style="width: 120px;"></td>
			</tr>

			<tr>
				<th>급여</th>
				<td><input type="text" name="pay" class="form-control"
					style="width: 120px;"></td>
			</tr>

			<tr>
				<th>가고싶은나라</th>
				<td><input type="text" name="nara" class="form-control"
					style="width: 120px;"></td>
			</tr>
			
			<tr>
			<td colspan="2" align="center">
			<button type="submit" class="btn btn-success">결과확인</button>
			</td>
			</tr>
		</table>
	</form>
	
	
	<!--출력 -->
	<div class="alert alert-info" style="width:400px;">
	<c:if test="${!empty param.name }">
	<h2>이름:${param.name }</h2>
	</c:if>
	
	<c:if test="${param.age>=20}">
	<h2 style="color:blue">나이:${param.age}(성년)</h2>
	</c:if>
	<c:if test="${param.age<20}">
	<h2 style="color:red">나이:${param.age}(미성년자)</h2>
	</c:if>
	
	<h2>월급여: 
	<fmt:formatNumber value="${param.pay}" type="currency"/>
	</h2>
	
	<h2>가고싶은나라:${param.nara}</h2>
	
	<c:choose>
	<c:when test="${param.nara=='프랑스'}">
	<h3 style="color:blue;">프랑스는 에펠탑이지</h3>
	</c:when>
	
	<c:when test="${param.nara=='영국'}">
	<h3 style="color:red;">영국은 런던아이다</h3>
	</c:when>
	
	<c:when test="${param.nara=='독일'}">
	<h3 style="color:black;">독일은 쾰른성당이다</h3>
	</c:when>
	
	
	<c:otherwise>
	<h3 style="color:magenta;">${param.nara }는 해당사항 없음!!</h3>
	</c:otherwise>
	</c:choose>
	</div>
	

	<!-- 이름입력했을경우에만 출력 div출력 
	이름:김영환
	나이:19세(미성년자)...조건:20살 이상이면 성년 아니면 미성년
	월급여:180만원 ..화폐단위와 천단위 구분기호 
	가고싶은나라:choose이용해서 출력은 맘대로할것
	-->
</body>
</html>