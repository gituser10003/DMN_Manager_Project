<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.dto.SawonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="css/Page2.css?ver=1.1" rel="stylesheet" type="text/css">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   

    <c:if test=${!empty login}><!-- 로그인이 됬을때 넘어가게끔 한다   -->
<a href="SawonListServlet" class="SawonM" style="color : white">사원관리</a><!--xml에 주소설정 해야함   -->
<a href="MemberListServlet" class="MemberM" style="color : white">회원관리</a><!--xml에 주소설정 해야함   -->
<a href="ProductListServlet" class="ProductM" style="color : white">상품관리</a><!--xml에 주소설정 해야함   -->
</c:if>


<%-- <%
   if("Manager".equals(sawongrade)){
%>
<a href="MemberListServlet" class="MemberM" style="color : white">회원관리</a>
<a href="ProductListServlet" class="ProductM" style="color : white">상품관리</a>
<% 
} 
%> --%>
