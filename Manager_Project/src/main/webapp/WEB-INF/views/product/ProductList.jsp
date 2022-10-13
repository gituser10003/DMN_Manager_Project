<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
<link href="css/ProductList.css?ver=1.1" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="intro">
		<div class="header">

			<div class="main1">
			<div class="toptop">
				<ul>
					<li><a href="main.jsp"><img src="images/menu_home.png"
							style="width: 50px; height: auto"></a></li>
				</ul>
				<ul class="logo">
					<li><a href="main.jsp">DMN COFFEE</a></li>
				</ul>
				</div>
				<div class="ttp">
				
				<div class="modify_title">
					<a>상품 리스트</a>
			    </div>
			    
			   	<div class="detail">
					<div><a href="ProductListServlet?" class="category">상품</a>&nbsp;</div>
					<div><a href="loginCheck/categorylist" class="option">카테고리</a>&nbsp;</div>
					<div><a href="loginCheck/OptList" class="opt">옵션</a></div>
				</div> 
				</div>

<table class="admin_board_wrap">
					<tbody class="admin_boardList">
						<!-- <th class="admin_board_head" >아이디</th> -->
						<!-- <th class="admin_board_head">비밀번호</th> -->
						<th class="admin_board_head" >상품번호</th>
						<th class="admin_board_head" >상품명</th>
						<th class="admin_board_head" >가격</th>
						<th class="admin_board_head" >물품분류</th>
					</tbody>
					<tbody>
	<c:forEach var="dto" items="${ProductList }" varStatus="status">
		<tr class="admin_board_user_vowel" >
			<td class="admin_board_user" id="pdno" name="pdno"><a href="Productedit?pdno=${dto.pdno }">${dto.pdno }</a></td>
			<td class="admin_board_user" id="pdnm" name="pdnm">${dto.pdnm }</td>
			<td class="admin_board_user" id="pdprice" name="pdprice">${dto.pdprice }</td>
			<td class="admin_board_user" id="ctno" name="ctno">${dto.ctno }</td>
		</tr>
		</c:forEach>
			</tbody>
			
			<tr>
			<td colspan="5">
				<form action="ProductListServlet">
					<select name="searchName">
						<option value="pdnm">상품명</option>
						<option value="ctno">상품분류</option>
					</select> <input type="text" name="searchValue"> <input
						type="submit" value="검색">
				</form>
			</td>
		</tr>
				</table>
		
			<div class="pagesign">
			
            <div id="paging" class="paging">
              <br>
              <br/>&nbsp;
            </div><!-- end paging -->
            
            <div class="ssign">
				<a href="ProductAdd" class="signup">상품등록</a>
			</div>
			
        </div><!-- end pagesign -->
			</div><!-- end main1 -->
		</div><!-- end header -->
		
		
		
		<div class="back">
		<ul>
		<li><a href="Page2.jsp"><img class="backimage" src="images/back.png"></a></li>
		</ul>
		</div>
	</div><!-- end intro -->
	 
</body>
</html>