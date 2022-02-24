<%@page import="com.dto.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <c:choose>
	<c:when test="${empty sessionScope.login}">
		<a href="LoginUIServlet">로그인</a>
		<a href="JoinUIServlet">회원가입</a>
	</c:when>
	
	<c:when test="${not empty sessionScope.login}">
		<a href="LogoutServlet">로그아웃</a>
		<a href="MyPageServlet">mypage</a>
		<a href="CartListServlet">장바구니</a>
	</c:when>
</c:choose>