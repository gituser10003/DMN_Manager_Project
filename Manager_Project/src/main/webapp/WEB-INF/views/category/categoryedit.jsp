<%@page import="com.dto.CategoryDTO"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="css/categoryedit.css?ver=1" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function () {


//삭제버튼
	var categoryedit=$("form[name='category']");

	$(".del").on("click",function(){
		categoryedit.attr("action","./loginCheck/categoryDelete");
		categoryedit.attr("method","post");
		categoryedit.submit();
	}); 

})//end document
</script>

<div class="intro">
 <form action="loginCheck/categoryUpdate" method="get" name="category">
   <ul class="logo">
    <li><a href="Mainpage1.jsp">DMN COFFEE</a></li>
   </ul>
   
   <ul class="jemog">
    <li>카테고리 수정 페이지</li>
   </ul>
   
   <table class="table">
   
	<tr>
	<th class="name">카테고리번호</th>
	<th><input type="text" class="input_text" id="ctno" name="ctno" value="${categoryedit.ctno }"></th>
	</tr>
	
	<tr>
	<th class="name">카테고리이름</th>
	<th><input type="text" class="input_text" id="ctnm" name="ctnm" value="${categoryedit.ctnm }"></th>
	</tr>

</table>
  <div class="bottom1">
  
  <div class="button">
  
   <div>
   	<input class="cancell" type="reset" onclick="location.href='loginCheck/categorylist'" value="취소">
   </div>
   
   <div>
   	<input onclick="return confirm('정말로 수정하시겠습니까?')" class="check" type="submit" value="수정">
   </div>
   
   </div>
   
   <div>
   	<input onclick="return confirm('정말로 삭제하시겠습니까?')" type="button" class="del"  value="삭제" id="xx${categoryedit.ctno }" data-id="${categoryedit.ctno }" />
   </div> 
   
   </div>
   
   </form>
   
   


</div>


