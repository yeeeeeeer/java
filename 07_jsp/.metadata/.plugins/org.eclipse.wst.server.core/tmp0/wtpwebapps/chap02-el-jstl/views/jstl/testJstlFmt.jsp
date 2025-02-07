<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL FMT</title>
</head>
<body>
	<h1>JSTL FMT Library Tag test</h1>
	
	<h2>fmt: formatNumber 태그 - 숫자에 포맷을 적용</h2>
	
	<c:set var="number" value="123456789" />
	
	<fmt:formatNumber value="${ number }" groupingUsed="true"/><br> <!-- 그루핑유즈드 : 숫자 세자리 끊어줌 -->
	
	<fmt:formatNumber value="1.234567" pattern="#.###"/><br>  <!-- 소수점 패턴만큼 반올림됨 -->
	<fmt:formatNumber value="1.2" pattern="#.##"/><br>  <!-- 패 -->
	<fmt:formatNumber value="1.2" pattern="#.00"/><br>  <!-- 샾말고 0으로하면 0으로 채운만큼 0이 찍혀서 나옴 -->
	
	<fmt:formatNumber value="0.12" type="percent"/><br>  <!-- value값을 퍼센트로 출력됨 -->

	<fmt:formatNumber value="${ number }" type="currency"/><br>  <!-- currency 시스템설정국가의 원화기호로 표시됨(금액에 많이 쓰임) -->
	<fmt:formatNumber value="${ number }" type="currency" currencySymbol="$"/><br>  <!-- currencySymbol 원하는 국가 원화기호로 지정하기 -->
	
	</hr>
	
	<h2>fmt: formatDate 태그 - 날짜와 시간에 포맷을 적용</h2>
	
	<c:set var="today" value="<%= new java.util.Date() %>" />
	
	오늘 날짜: <fmt:formatDate value="${ today }" type="date" /><br>  <!-- type으로 날짜/시간/둘다 결정함 (value 동일) -->
	오늘 시간: <fmt:formatDate value="${ today }" type="time" /><br>
	현재 날짜와 시간: <fmt:formatDate value="${ today }" type="both" /><br>
	
	<h3>날짜와 시간에 제공되는 포맷 적용</h3>
	[default] <fmt:formatDate value="${ today }" type="both" dateStyle="default" timeStyle="default"/><br>
	[short] <fmt:formatDate value="${ today }" type="both" dateStyle="short" timeStyle="short"/><br>
	[medium] <fmt:formatDate value="${ today }" type="both" dateStyle="medium" timeStyle="medium"/><br>
	[long] <fmt:formatDate value="${ today }" type="both" dateStyle="long" timeStyle="long"/><br>
	[full] <fmt:formatDate value="${ today }" type="both" dateStyle="full" timeStyle="full"/><br>
	
	<h3>원하는 포맷으로 pattern 적용</h3>
	현재 날짜: <fmt:formatDate value="${ today }" type="date" pattern="yyyy/MM/dd (E)" /><br>
	현재 시간: <fmt:formatDate value="${ today }" type="time" pattern="(a) hh:mm:ss" /><br>	
	
	<%-- <h3>원하는 포맷으로 pattern 적용</h3> 
	현재 날짜: <fmt:formatDate value="${ today }" type="date" pattern="yyyy/NN/dd (E)" /><br> <!-- 월/요일 대문자 -->
	현재 시간: <fmt:formatDate value="${ today }" type="time" pattern="(a) hh:mm:ss" /><br> --%>
	
	
		
</body>
</html>