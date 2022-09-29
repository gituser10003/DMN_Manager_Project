<%-- <%@page import="com.dto.SawonPageDTO"%> --%>
<%@page import="com.dto.SawonDTO"%>
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

   $(document).ready(function() {
       
   	   
   	});
</script>
<link href="css/sawonlist.css?ver=1.1" rel="stylesheet" type="text/css">
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
				<div class="modify_title">
					사원 리스트
					
				</div>

<table class="admin_board_wrap">
					<tbody class="admin_boardList">
						<th class="admin_board_head" >사원이름</th>
						<th class="admin_board_head" >핸드폰번호</th>
						<th class="admin_board_head" >생년월일</th>
						<th class="admin_board_head" >이메일</th>
						<th class="admin_board_head" >직위</th>
					</tbody>
				<c:forEach var="dto" items="${sawonlist }" varStatus="status">
					<tbody>
	
		<tr class="admin_board_user_vowel" >
			
			<td class="admin_board_user" id="username" name="username"><a href="SawonRetrieve?userid=${dto.userid }">${dto.username}</a></td>
			<td class="admin_board_user" id="phonenumber1" name="phonenumber1">${dto.phonenumber1+"-"dto.phonenumber2+"-"+dto.phonenumber1 }</td>
			<td class="admin_board_user" id="birthday1" name="birthday1">${dto.birthday1+"/"+dto.birthday2+"/"+dto.birthday3}></td>
			<td class="admin_board_user" id="email1" name="email1">${dto.email1+"@"+dto.email2}></td>
			<td class="admin_board_user" id="sawongrade" name="sawongrade">${dto.sawongrade}</td>
		</tr>
			</tbody>
			
			<tr>
			<td colspan="5">
				<form action="SawonListServlet">
					<select name="searchName">
						<option value="sawongrade">직급</option>
						<option value="username">이름</option>
					</select> <input type="text" name="searchValue"> <input
						type="submit" value="검색">
				</form>
			</td>
		</tr>
		<!-- 반복끝-->
		</c:forEach>
	
				</table>
	
				<s_paging> 
            <div id="paging" class="paging">
              <br>
               <%--   <%
		        int curPage = pDTO.getCurPage();
		        int perPage = pDTO.getPerPage();
				int totalCount = pDTO.getTotalCount();
				int totalPage = totalCount/perPage;
				if(totalCount%perPage!=0) totalPage++;
		        for(int i=1; i<= totalPage; i++){
		          	if(i== curPage){
		          		out.print(i+"&nbsp;");
		          	}else{
		          		out.print("<a href='SawonListServlet?curPage="+i+"&searchName="+searchName+"&searchValue="+searchValue+"'>"+i+"</a>&nbsp;");
		          	}
		        }//end for
		   %> --%>
              <br/>&nbsp;
            </div>
        </s_paging>
			</div><!-- end main1 -->
		</div><!-- end header -->
		<div>
		<ul class="back">
		<li><a href="Page2.jsp"><img class="backimage" src="images/back.png"></a></li>
		</ul>
		</div>
	</div><!-- end intro -->
	
</body>
</html>