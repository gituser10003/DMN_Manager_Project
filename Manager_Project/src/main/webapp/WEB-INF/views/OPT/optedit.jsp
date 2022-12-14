<%@page import="com.dto.OptDTO"%>
<%@page import="com.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/ProductListModify.css?ver=1.1" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	
	//삭제버튼
	var optedit=$("form[name='opt']");

	$(".del").on("click",function(){
		optedit.attr("action","./loginCheck/optDelete");
		optedit.attr("method","post");
		optedit.submit();
	}); 
})//end document
</script>

<div class="intro">
 <form action=loginCheck/optUpdate method="get" name="opt">
   <ul class="logo">
    <li><a href="Mainpage1.jsp">DMN COFFEE</a></li>
   </ul>
   
   <ul class="jemog">
    <li>옵션 수정 페이지</li>
   </ul>
   
   <table class="table">
   
	<tr>
	<th class="name">옵션번호</th>
	<th><div><input type="text" class="input_text" id="optno" name="optno" value="${optedit.optno }"></div>
		     <span id="result"></span></th>
	</tr>
	
	<tr>
	<th class="name">옵션명</th>
	<th><input type="text" class="input_text" id="optnm" name="optnm" value="${optedit.optnm }"></th>
	</tr>
	
	<tr>
	<th class="name">추가금액</th>
	<th><input type="text" class="input_text" id="optprice" name="optprice" value="${optedit.optprice }"></th>
	</tr>
	
	<tr>
	<th class="name">분류번호</th>
	<th><input type="text" class="input_text" id="ctno" name="ctno" value="${optedit.ctno }"></th>
	</tr>

	</table>

  <div class="bottom1">
   
  <div class="button">
  
   <div>
   <input class="cancell" type="button" onclick="location.href='loginCheck/OptList'" value="취소">
   </div>
   
   <div>
   <input onclick="return confirm('정말로 수정하시겠습니까?')" class="check" type="submit" value="확인">
   </div>
   
   </div>
   
   <div>
   <input onclick="return confirm('정말로 삭제하시겠습니까?')" type="button" class="del"  value="삭제" id="xx${optedit.optno }" data-id="${optedit.optno }" />
   </div> 
   
   </div>
   
   </form>
     
 

</div>