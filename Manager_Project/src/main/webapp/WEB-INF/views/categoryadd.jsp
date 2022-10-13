<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/categoryAdd.css?ver=1.1" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	
})//end document
</script>
<form action="loginCheck/categoryadd" method="get">
<div class="intro">
 
   <ul class="logo">
    <li><a href="Mainpage1.jsp">DMN COFFEE</a></li>
   </ul>
   
   <ul class="jemog">
    <li>카테고리 생성</li>
   </ul>
   
      <table class="table">
   
	<tr>
	<th class="name">카테고리이름</th>
	<th><input type="text" class="input_text" id="ctnm" name="ctnm"></th>
	</tr>

</table>

  <div class="button">
  
   <div>
   <input class="cancell" type="reset" onclick="location.href='loginCheck/categorylist'" value="취소">
   </div>
   
   <div>
   <input class="check" type="submit" value="등록">
   </div>
   
   </div> 
   
</div><!-- end intro -->

</form>
