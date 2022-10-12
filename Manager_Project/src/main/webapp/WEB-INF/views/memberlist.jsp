<%@page import="com.dto.MemberDTO"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
</script>
<link href="css/memberlist.css?ver=1" rel="stylesheet" type="text/css">
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
					회원 리스트
					<div class="title_menus"></div>
				</div>
	
				<table class="admin_board_wrap">
				
					<tbody class="admin_boardList">
						<!-- <th class="admin_board_head" >아이디</th> -->
						<!-- <th class="admin_board_head">비밀번호</th> -->
						<th class="admin_board_head">회원번호</th>
						<th class="admin_board_head">핸드폰번호</th>
						<th class="admin_board_head">스탬프</th>
					</tbody>
					<tbody>
		
<c:forEach var="dto" items="${memberlist }" varStatus="status">
						<tr class="admin_board_user_vowel">

							<td class="admin_board_user" id="memno" name="memno"><a href="memberedit?memno=${dto.memno }">${dto.memno }</a></td>
							<td class="admin_board_user" id="phone1" name="phone1">${dto.phone1 }-${dto.phone2 }-${dto.phone3 }</td>
							<td class="admin_board_user" id="mempoint" name="mempoint">${dto.mempoint }</td>
						</tr>
						<%-- <%
							}
						%> --%>
						</c:forEach>
					</tbody>
					<tr>
						<td colspan="5">
							<form action="">
								<select name="searchName">
									<option value="memno">회원번호</option>
									<option value="memphone3">번호</option>
								</select> <input type="text" name="searchValue"> <input
									type="submit" value="검색">
							</form>
						</td>
					</tr>
				</table>
				<div class="pagesign">

					<div id="paging" class="paging">
						<br>
				<%-- 					<%
					MemberPageDTO mDTO = (MemberPageDTO) request.getAttribute("mDTO");
					List<MemberDTO> list = mDTO.getList();
					String order = (String) request.getAttribute("order");
					String searchName = (String) request.getAttribute("searchName");
					String searchValue = (String) request.getAttribute("searchValue");
				%>  --%>
					<%-- 	<%
							int curPage = mDTO.getCurPage();
							int perPage = mDTO.getPerPage();
							int totalCount = mDTO.getTotalCount();
							int totalPage = totalCount / perPage;
							if (totalCount % perPage != 0)
								totalPage++;
							for (int i = 1; i <= totalPage; i++) {
								if (i == curPage) {
									out.print(i + "&nbsp;");
								} else {
									out.print("<a href='MemberListServlet?curPage=" + i + "&searchName=" + searchName + "&searchValue="
											+ searchValue + "'>" + i + "</a>&nbsp;");
								}
							} //end for
						%>  --%>

						<br />&nbsp;
					</div>
					<!-- end paging -->

					<div class="ssign">
						<a href="memberAdd" class="signup">회원등록</a>
					</div>

				</div>
				<!-- end pagesign -->
			</div>
			<!-- end main1 -->
		</div>
		<!-- end header -->



		<div class="back">
			<ul>
				<li><a href="Page2.jsp"><img class="backimage"
						src="images/back.png"></a></li>
			</ul>
		</div>

	</div>
	<!-- end intro -->

</body>
</html>