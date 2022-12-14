<%@page import="com.dto.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="css/memberedit.css?ver=1" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function () {

//삭제버튼
var memberRetrieve=$("form[name='member']");

$(".del").on("click",function(){
	memberRetrieve.attr("action","./loginCheck/memberDelete");
	memberRetrieve.attr("method","post");
	memberRetrieve.submit();
}); 


})//end document
</script>


<div class="intro">
 <form action="loginCheck/memberUpdate" method="post" name="member">
   <ul class="logo">
    <li><a href="Mainpage1.jsp">DMN COFFEE</a></li>
   </ul>
   
   <ul class="jemog">
    <li>회원 수정 페이지</li>
   </ul>
   <table class="table">
  
	<tr>
		<th class="name">회원번호</th>
		<th><input type="text" class="input_text" id="memno" name="memno" value="${memberRetrieve.memno }"></th>
	</tr>
	
	<tr>
		<th class="name">핸드폰번호</th>
		<th><select class="input_text" id="phone1" name="phone1">
  	 	<option value="010" <c:if test="${memberRetrieve.phone1=='010' }">selected</c:if>>010</option>
 		 <option value="011" <c:if test="${memberRetrieve.phone1=='011' }">selected</c:if>>011</option>
   		<option value="012" <c:if test="${memberRetrieve.phone1=='012' }">selected</c:if>>012</option>
   		<option value="070" <c:if test="${memberRetrieve.phone1=='070' }">selected</c:if>>070</option>
   		</select>&nbsp;-
   		<input type="text" class="input_text" id="phone2" name="phone2" value="${memberRetrieve.phone2 }">&nbsp;-
   		<input type="text" class="input_text" id="phone3" name="phone3" value="${memberRetrieve.phone3 }"></th>
	</tr>
	
	<tr>
		<th class="name">포인트</th>
		<th><input type="text" class="input_text" id="mempoint" name="mempoint" value="${memberRetrieve.mempoint }"></th>
	</tr>

</table>
  <div class="bottom1">
  
  <div class="button">
  
   <div>
   <input class="cancell" type="reset" onclick="location.href='MemberListServlet'" value="취소">
   </div>
   
   <div>
   <input onclick="return confirm('정말로 수정하시겠습니까?')" class="check" type="submit" value="수정">
   </div>
   
   </div>
   
    <div>
     <input onclick="return confirm('정말로 삭제하시겠습니까?')" type="button" class="del"  value="삭제" id="xx${memberRetrieve.memno }" data-id="${memberRetrieve.memno }"/>
     </div> 

     
     </div>
     
   </form>
   
   
</div>


