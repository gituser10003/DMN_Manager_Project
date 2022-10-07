<%@page import="com.dto.SawonDTO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="css/SawonRetrieve.css?ver=1" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function () {
 	//form 서브밋
	$("form").on("submit", function (event) {
		var userid = $("#userid").val();
		var passwd = $("#passwd").val();
		if (userid.length==0) {
			alert("userid 필수")
			$("#userid").focus();
			event.preventDefault();
		}else if (passwd.length==0) {
			alert("passwd 필수")
			$("#passwd").focus();
			event.preventDefault();
		}
	});
	
	//등급 선택
	$("#selectgrade").on("change", function() {
		var grade = $(this).val();
		$("#sawongrade").val(grade);
	});
//비번확인
$("#passwd2").on("keyup",function(){
	var passwd = $("#passwd").val();
	var mesg = "비번 불일치";
	if(passwd == $(this).val()){
		mesg = "비번 일치";
	}
	$("#result2").text(mesg);
});
//이메일 선택
$("#selectemail").on("change", function() {
	var email = $(this).val();
	$("#email2").val(email);
});

$("#userid").on("keyup",function(event){	
	 $.ajax({
			type : "GET",
			url : "SawonIdCheckServlet",
			dataType : "text",//응답 데이터 타입
			data : {  //서버에 넘겨줄 데이터 
				userid : $("#userid").val()
			},
			success : function(responseData, status, xhr) {
				console.log(responseData);
			   $("#result").text(responseData);
			},
			error : function(xhr, status, error) {
				console.log("error");
			}
		});
	 
});

//삭제버튼
$(".del").on("click",function(){
	var userid= $(this).attr("data-id");
	location.href="SawonDelServlet?userid="+userid;
}); 

})//end document
</script>

<div class="intro">
 <form action="loginCheck/sawonupdate" method="get">
   <ul class="logo">
    <li><a href="Mainpage1.jsp">DMN COFFEE</a></li>
   </ul>
   
   <ul class="jemog">
    <li>사원 수정 페이지</li>
   </ul>
   
   <div class="account">
   
   아이디<input type="text" class="input_text" id="userid" name="userid" value="${SawonRetrieve.userid}">
   <span id="result"></span>
   </div>
   <div class="account">
   비밀번호<input type="password" class="input_text" id="passwd" name="passwd" value="${SawonRetrieve.passwd}">
   </div>
    <div class="account">
   비밀번호 재확인<input type="password" class="input_text" id="passwd2" name="passwd2">
   <span id="result2"></span>
   </div>
   <div class="account">
   이름<input type="text" class="input_text" id="username" name="username" value="${SawonRetrieve.username}">
   </div>
   
    <div class="account">
   전화번호
   <select class="input_text" id="phonenumber1" name="phonenumber1">
   <option value="010" <c:if test="${SawonRetrieve.phonenumber1=='010' }">selected</c:if>>010</option>
   <option value="011" <c:if test="${SawonRetrieve.phonenumber1=='011' }">selected</c:if>>011</option>
   <option value="012" <c:if test="${SawonRetrieve.phonenumber1=='012' }">selected</c:if>>012</option>
   <option value="070" <c:if test="${SawonRetrieve.phonenumber1=='070' }">selected</c:if>>070</option>
   </select>&nbsp;-
   <input type="text" class="input_text" id="phonenumber2" name="phonenumber2" value="${SawonRetrieve.phonenumber2}">&nbsp;-
   <input type="text" class="input_text" id="phonenumber3" name="phonenumber3" value="${SawonRetrieve.phonenumber3}">
   </div>
   
   <div class="account">
   생년월일
   <select class="input_text" id="birthday1" name="birthday1">
<option value="1900" <c:if test="${SawonRetrieve.birthday1=='1900' }">selected</c:if>>1900</option>
<option value="1901" <c:if test="${SawonRetrieve.birthday1=='1901' }">selected</c:if>>1901</option>
<option value="1902" <c:if test="${SawonRetrieve.birthday1=='1902' }">selected</c:if>>1902</option>
<option value="1903" <c:if test="${SawonRetrieve.birthday1=='1903' }">selected</c:if>>1903</option>
<option value="1904" <c:if test="${SawonRetrieve.birthday1=='1904' }">selected</c:if>>1904</option>
<option value="1905" <c:if test="${SawonRetrieve.birthday1=='1905' }">selected</c:if>>1905</option>
<option value="1906" <c:if test="${SawonRetrieve.birthday1=='1906' }">selected</c:if>>1906</option>
<option value="1907" <c:if test="${SawonRetrieve.birthday1=='1907' }">selected</c:if>>1907</option>
<option value="1908" <c:if test="${SawonRetrieve.birthday1=='1908' }">selected</c:if>>1908</option>
<option value="1909" <c:if test="${SawonRetrieve.birthday1=='1909' }">selected</c:if>>1909</option>
<option value="1910" <c:if test="${SawonRetrieve.birthday1=='1910' }">selected</c:if>>1910</option>
<option value="1911" <c:if test="${SawonRetrieve.birthday1=='1911' }">selected</c:if>>1911</option>
<option value="1912" <c:if test="${SawonRetrieve.birthday1=='1912' }">selected</c:if>>1912</option>
<option value="1913" <c:if test="${SawonRetrieve.birthday1=='1913' }">selected</c:if>>1913</option>
<option value="1914" <c:if test="${SawonRetrieve.birthday1=='1914' }">selected</c:if>>1914</option>
<option value="1915" <c:if test="${SawonRetrieve.birthday1=='1915' }">selected</c:if>>1915</option>
<option value="1916" <c:if test="${SawonRetrieve.birthday1=='1916' }">selected</c:if>>1916</option>
<option value="1917" <c:if test="${SawonRetrieve.birthday1=='1917' }">selected</c:if>>1917</option>
<option value="1918" <c:if test="${SawonRetrieve.birthday1=='1918' }">selected</c:if>>1918</option>
<option value="1919" <c:if test="${SawonRetrieve.birthday1=='1919' }">selected</c:if>>1919</option>
<option value="1920" <c:if test="${SawonRetrieve.birthday1=='1920' }">selected</c:if>>1920</option>
<option value="1921" <c:if test="${SawonRetrieve.birthday1=='1921' }">selected</c:if>>1921</option>
<option value="1922" <c:if test="${SawonRetrieve.birthday1=='1922' }">selected</c:if>>1922</option>
<option value="1923" <c:if test="${SawonRetrieve.birthday1=='1923' }">selected</c:if>>1923</option>
<option value="1924" <c:if test="${SawonRetrieve.birthday1=='1924' }">selected</c:if>>1924</option>
<option value="1925" <c:if test="${SawonRetrieve.birthday1=='1925' }">selected</c:if>>1925</option>
<option value="1926" <c:if test="${SawonRetrieve.birthday1=='1926' }">selected</c:if>>1926</option>
<option value="1927" <c:if test="${SawonRetrieve.birthday1=='1927' }">selected</c:if>>1927</option>
<option value="1928" <c:if test="${SawonRetrieve.birthday1=='1928' }">selected</c:if>>1928</option>
<option value="1929" <c:if test="${SawonRetrieve.birthday1=='1929' }">selected</c:if>>1929</option>
<option value="1930" <c:if test="${SawonRetrieve.birthday1=='1930' }">selected</c:if>>1930</option>
<option value="1931" <c:if test="${SawonRetrieve.birthday1=='1931' }">selected</c:if>>1931</option>
<option value="1932" <c:if test="${SawonRetrieve.birthday1=='1932' }">selected</c:if>>1932</option>
<option value="1933" <c:if test="${SawonRetrieve.birthday1=='1933' }">selected</c:if>>1933</option>
<option value="1934" <c:if test="${SawonRetrieve.birthday1=='1934' }">selected</c:if>>1934</option>
<option value="1935" <c:if test="${SawonRetrieve.birthday1=='1935' }">selected</c:if>>1935</option>
<option value="1936" <c:if test="${SawonRetrieve.birthday1=='1936' }">selected</c:if>>1936</option>
<option value="1937" <c:if test="${SawonRetrieve.birthday1=='1937' }">selected</c:if>>1937</option>
<option value="1938" <c:if test="${SawonRetrieve.birthday1=='1938' }">selected</c:if>>1938</option>
<option value="1939" <c:if test="${SawonRetrieve.birthday1=='1939' }">selected</c:if>>1939</option>
<option value="1940" <c:if test="${SawonRetrieve.birthday1=='1940' }">selected</c:if>>1940</option>
<option value="1941" <c:if test="${SawonRetrieve.birthday1=='1941' }">selected</c:if>>1941</option>
<option value="1942" <c:if test="${SawonRetrieve.birthday1=='1942' }">selected</c:if>>1942</option>
<option value="1943" <c:if test="${SawonRetrieve.birthday1=='1943' }">selected</c:if>>1943</option>
<option value="1944" <c:if test="${SawonRetrieve.birthday1=='1944' }">selected</c:if>>1944</option>
<option value="1945" <c:if test="${SawonRetrieve.birthday1=='1945' }">selected</c:if>>1945</option>
<option value="1946" <c:if test="${SawonRetrieve.birthday1=='1946' }">selected</c:if>>1946</option>
<option value="1947" <c:if test="${SawonRetrieve.birthday1=='1947' }">selected</c:if>>1947</option>
<option value="1948" <c:if test="${SawonRetrieve.birthday1=='1948' }">selected</c:if>>1948</option>
<option value="1949" <c:if test="${SawonRetrieve.birthday1=='1949' }">selected</c:if>>1949</option>
<option value="1950" <c:if test="${SawonRetrieve.birthday1=='1950' }">selected</c:if>>1950</option>
<option value="1951" <c:if test="${SawonRetrieve.birthday1=='1951' }">selected</c:if>>1951</option>
<option value="1952" <c:if test="${SawonRetrieve.birthday1=='1952' }">selected</c:if>>1952</option>
<option value="1953" <c:if test="${SawonRetrieve.birthday1=='1953' }">selected</c:if>>1953</option>
<option value="1954" <c:if test="${SawonRetrieve.birthday1=='1954' }">selected</c:if>>1954</option>
<option value="1955" <c:if test="${SawonRetrieve.birthday1=='1955' }">selected</c:if>>1955</option>
<option value="1956" <c:if test="${SawonRetrieve.birthday1=='1956' }">selected</c:if>>1956</option>
<option value="1957" <c:if test="${SawonRetrieve.birthday1=='1957' }">selected</c:if>>1957</option>
<option value="1958" <c:if test="${SawonRetrieve.birthday1=='1958' }">selected</c:if>>1958</option>
<option value="1959" <c:if test="${SawonRetrieve.birthday1=='1959' }">selected</c:if>>1959</option>
<option value="1960" <c:if test="${SawonRetrieve.birthday1=='1960' }">selected</c:if>>1960</option>
<option value="1961" <c:if test="${SawonRetrieve.birthday1=='1961' }">selected</c:if>>1961</option>
<option value="1962" <c:if test="${SawonRetrieve.birthday1=='1962' }">selected</c:if>>1962</option>
<option value="1963" <c:if test="${SawonRetrieve.birthday1=='1963' }">selected</c:if>>1963</option>
<option value="1964" <c:if test="${SawonRetrieve.birthday1=='1964' }">selected</c:if>>1964</option>
<option value="1965" <c:if test="${SawonRetrieve.birthday1=='1965' }">selected</c:if>>1965</option>
<option value="1966" <c:if test="${SawonRetrieve.birthday1=='1966' }">selected</c:if>>1966</option>
<option value="1967" <c:if test="${SawonRetrieve.birthday1=='1967' }">selected</c:if>>1967</option>
<option value="1968" <c:if test="${SawonRetrieve.birthday1=='1968' }">selected</c:if>>1968</option>
<option value="1969" <c:if test="${SawonRetrieve.birthday1=='1969' }">selected</c:if>>1969</option>
<option value="1970" <c:if test="${SawonRetrieve.birthday1=='1970' }">selected</c:if>>1970</option>
<option value="1971" <c:if test="${SawonRetrieve.birthday1=='1971' }">selected</c:if>>1971</option>
<option value="1972" <c:if test="${SawonRetrieve.birthday1=='1972' }">selected</c:if>>1972</option>
<option value="1973" <c:if test="${SawonRetrieve.birthday1=='1973' }">selected</c:if>>1973</option>
<option value="1974" <c:if test="${SawonRetrieve.birthday1=='1974' }">selected</c:if>>1974</option>
<option value="1975" <c:if test="${SawonRetrieve.birthday1=='1975' }">selected</c:if>>1975</option>
<option value="1976" <c:if test="${SawonRetrieve.birthday1=='1976' }">selected</c:if>>1976</option>
<option value="1977" <c:if test="${SawonRetrieve.birthday1=='1977' }">selected</c:if>>1977</option>
<option value="1978" <c:if test="${SawonRetrieve.birthday1=='1978' }">selected</c:if>>1978</option>
<option value="1979" <c:if test="${SawonRetrieve.birthday1=='1979' }">selected</c:if>>1979</option>
<option value="1980" <c:if test="${SawonRetrieve.birthday1=='1980' }">selected</c:if>>1980</option>
<option value="1981" <c:if test="${SawonRetrieve.birthday1=='1981' }">selected</c:if>>1981</option>
<option value="1982" <c:if test="${SawonRetrieve.birthday1=='1982' }">selected</c:if>>1982</option>
<option value="1983" <c:if test="${SawonRetrieve.birthday1=='1983' }">selected</c:if>>1983</option>
<option value="1984" <c:if test="${SawonRetrieve.birthday1=='1984' }">selected</c:if>>1984</option>
<option value="1985" <c:if test="${SawonRetrieve.birthday1=='1985' }">selected</c:if>>1985</option>
<option value="1986" <c:if test="${SawonRetrieve.birthday1=='1986' }">selected</c:if>>1986</option>
<option value="1987" <c:if test="${SawonRetrieve.birthday1=='1987' }">selected</c:if>>1987</option>
<option value="1988" <c:if test="${SawonRetrieve.birthday1=='1988' }">selected</c:if>>1988</option>
<option value="1989" <c:if test="${SawonRetrieve.birthday1=='1989' }">selected</c:if>>1989</option>
<option value="1990" <c:if test="${SawonRetrieve.birthday1=='1990' }">selected</c:if>>1990</option>
<option value="1991" <c:if test="${SawonRetrieve.birthday1=='1991' }">selected</c:if>>1991</option>
<option value="1992" <c:if test="${SawonRetrieve.birthday1=='1992' }">selected</c:if>>1992</option>
<option value="1993" <c:if test="${SawonRetrieve.birthday1=='1993' }">selected</c:if>>1993</option>
<option value="1994" <c:if test="${SawonRetrieve.birthday1=='1994' }">selected</c:if>>1994</option>
<option value="1995" <c:if test="${SawonRetrieve.birthday1=='1995' }">selected</c:if>>1995</option>
<option value="1996" <c:if test="${SawonRetrieve.birthday1=='1996' }">selected</c:if>>1996</option>
<option value="1997" <c:if test="${SawonRetrieve.birthday1=='1997' }">selected</c:if>>1997</option>
<option value="1998" <c:if test="${SawonRetrieve.birthday1=='1998' }">selected</c:if>>1998</option>
<option value="1999" <c:if test="${SawonRetrieve.birthday1=='1999' }">selected</c:if>>1999</option>
<option value="2000" <c:if test="${SawonRetrieve.birthday1=='2000' }">selected</c:if>>2000</option>
<option value="2001" <c:if test="${SawonRetrieve.birthday1=='2001' }">selected</c:if>>2001</option>
<option value="2002" <c:if test="${SawonRetrieve.birthday1=='2002' }">selected</c:if>>2002</option>
<option value="2003" <c:if test="${SawonRetrieve.birthday1=='2003' }">selected</c:if>>2003</option>
<option value="2004" <c:if test="${SawonRetrieve.birthday1=='2004' }">selected</c:if>>2004</option>
<option value="2005" <c:if test="${SawonRetrieve.birthday1=='2005' }">selected</c:if>>2005</option>
<option value="2006" <c:if test="${SawonRetrieve.birthday1=='2006' }">selected</c:if>>2006</option>
<option value="2007" <c:if test="${SawonRetrieve.birthday1=='2007' }">selected</c:if>>2007</option>
<option value="2008" <c:if test="${SawonRetrieve.birthday1=='2008' }">selected</c:if>>2008</option>
<option value="2009" <c:if test="${SawonRetrieve.birthday1=='2009' }">selected</c:if>>2009</option>
<option value="2010" <c:if test="${SawonRetrieve.birthday1=='2010' }">selected</c:if>>2010</option>
<option value="2011" <c:if test="${SawonRetrieve.birthday1=='2011' }">selected</c:if>>2011</option>
<option value="2012" <c:if test="${SawonRetrieve.birthday1=='2012' }">selected</c:if>>2012</option>
<option value="2013" <c:if test="${SawonRetrieve.birthday1=='2013' }">selected</c:if>>2013</option>
<option value="2014" <c:if test="${SawonRetrieve.birthday1=='2014' }">selected</c:if>>2014</option>
<option value="2015" <c:if test="${SawonRetrieve.birthday1=='2015' }">selected</c:if>>2015</option>
<option value="2016" <c:if test="${SawonRetrieve.birthday1=='2016' }">selected</c:if>>2016</option>
<option value="2017" <c:if test="${SawonRetrieve.birthday1=='2017' }">selected</c:if>>2017</option>
<option value="2018" <c:if test="${SawonRetrieve.birthday1=='2018' }">selected</c:if>>2018</option>
<option value="2019" <c:if test="${SawonRetrieve.birthday1=='2019' }">selected</c:if>>2019</option>
<option value="2020" <c:if test="${SawonRetrieve.birthday1=='2020' }">selected</c:if>>2020</option>
<option value="2021" <c:if test="${SawonRetrieve.birthday1=='2021' }">selected</c:if>>2021</option>
<option value="2022" <c:if test="${SawonRetrieve.birthday1=='2022' }">selected</c:if>>2022</option>
   </select>년
   
   <select class="input_text" id="birthday2" name="birthday2">
<option value="1" <c:if test="${SawonRetrieve.birthday2=='1' }">selected</c:if>>1</option>
<option value="2" <c:if test="${SawonRetrieve.birthday2=='2' }">selected</c:if>>2</option>
<option value="3" <c:if test="${SawonRetrieve.birthday2=='3' }">selected</c:if>>3</option>
<option value="4" <c:if test="${SawonRetrieve.birthday2=='4' }">selected</c:if>>4</option>
<option value="5" <c:if test="${SawonRetrieve.birthday2=='5' }">selected</c:if>>5</option>
<option value="6" <c:if test="${SawonRetrieve.birthday2=='6' }">selected</c:if>>6</option>
<option value="7" <c:if test="${SawonRetrieve.birthday2=='7' }">selected</c:if>>7</option>
<option value="8" <c:if test="${SawonRetrieve.birthday2=='8' }">selected</c:if>>8</option>
<option value="9" <c:if test="${SawonRetrieve.birthday2=='9' }">selected</c:if>>9</option>
<option value="10" <c:if test="${SawonRetrieve.birthday2=='10' }">selected</c:if>>10</option>
<option value="11" <c:if test="${SawonRetrieve.birthday2=='11' }">selected</c:if>>11</option>
<option value="12" <c:if test="${SawonRetrieve.birthday2=='12' }">selected</c:if>>12</option>
   </select>월
   
 <select class="input_text" id="birthday3" name="birthday3">
	<option value="1" <c:if test="${SawonRetrieve.birthday3=='1' }">selected</c:if>>1</option>
	<option value="2" <c:if test="${SawonRetrieve.birthday3=='2' }">selected</c:if>>2</option>
	<option value="3" <c:if test="${SawonRetrieve.birthday3=='3' }">selected</c:if>>3</option>
	<option value="4" <c:if test="${SawonRetrieve.birthday3=='4' }">selected</c:if>>4</option>
	<option value="5" <c:if test="${SawonRetrieve.birthday3=='5' }">selected</c:if>>5</option>
	<option value="6" <c:if test="${SawonRetrieve.birthday3=='6' }">selected</c:if>>6</option>
	<option value="7" <c:if test="${SawonRetrieve.birthday3=='7' }">selected</c:if>>7</option>
	<option value="8" <c:if test="${SawonRetrieve.birthday3=='8' }">selected</c:if>>8</option>
	<option value="9" <c:if test="${SawonRetrieve.birthday3=='9' }">selected</c:if>>9</option>
	<option value="10" <c:if test="${SawonRetrieve.birthday3=='10' }">selected</c:if>>10</option>
	<option value="11" <c:if test="${SawonRetrieve.birthday3=='11' }">selected</c:if>>11</option>
	<option value="12" <c:if test="${SawonRetrieve.birthday3=='12' }">selected</c:if>>12</option>
	<option value="13" <c:if test="${SawonRetrieve.birthday3=='13' }">selected</c:if>>13</option>
	<option value="14" <c:if test="${SawonRetrieve.birthday3=='14' }">selected</c:if>>14</option>
	<option value="15" <c:if test="${SawonRetrieve.birthday3=='15' }">selected</c:if>>15</option>
	<option value="16" <c:if test="${SawonRetrieve.birthday3=='16' }">selected</c:if>>16</option>
	<option value="17" <c:if test="${SawonRetrieve.birthday3=='17' }">selected</c:if>>17</option>
	<option value="18" <c:if test="${SawonRetrieve.birthday3=='18' }">selected</c:if>>18</option>
	<option value="19" <c:if test="${SawonRetrieve.birthday3=='19' }">selected</c:if>>19</option>
	<option value="20" <c:if test="${SawonRetrieve.birthday3=='20' }">selected</c:if>>20</option>
	<option value="21" <c:if test="${SawonRetrieve.birthday3=='21' }">selected</c:if>>21</option>
	<option value="22" <c:if test="${SawonRetrieve.birthday3=='22' }">selected</c:if>>22</option>
	<option value="23" <c:if test="${SawonRetrieve.birthday3=='23' }">selected</c:if>>23</option>
	<option value="24" <c:if test="${SawonRetrieve.birthday3=='24' }">selected</c:if>>24</option>
	<option value="25" <c:if test="${SawonRetrieve.birthday3=='25' }">selected</c:if>>25</option>
	<option value="26" <c:if test="${SawonRetrieve.birthday3=='26' }">selected</c:if>>26</option>
	<option value="27" <c:if test="${SawonRetrieve.birthday3=='27' }">selected</c:if>>27</option>
	<option value="28" <c:if test="${SawonRetrieve.birthday3=='28' }">selected</c:if>>28</option>
	<option value="29" <c:if test="${SawonRetrieve.birthday3=='29' }">selected</c:if>>29</option>
	<option value="30" <c:if test="${SawonRetrieve.birthday3=='30' }">selected</c:if>>30</option>
	<option value="31" <c:if test="${SawonRetrieve.birthday3=='31' }">selected</c:if>>31</option>
 </select>일

  </div>
  
  <div class="account">
   이메일<input type="text" class="input_text" id="email1" name="email1" value="${SawonRetrieve.email1}">@
   <input type="text" class="input_text" id="email2" name="email2" placeholder="직접입력" value="${SawonRetrieve.email2}">
   <select id="selectemail">
   <option value="naver.com" <c:if test="${SawonRetrieve.email2=='naver.com' }">selected</c:if>>naver.com</option>
   <option value="daum.net" <c:if test="${SawonRetrieve.email2=='daum.net' }">selected</c:if>>daum.net</option>
   <option value="gmail.com" <c:if test="${SawonRetrieve.email2=='gmail.com' }">selected</c:if>>gmail.com</option>
   </select>
   </div>
  
  <div class="account">
  직위
  <select class="input_text" name="sawongrade" id="sawongrade">
  <option value="Manager" <c:if test="${SawonRetrieve.sawongrade=='Manager' }">selected</c:if>>Manager</option>
  <option value="Worker" <c:if test="${SawonRetrieve.sawongrade=='Worker' }">selected</c:if>>Worker</option>
  </select>
  
  </div>
  
  <div class="button">
  
   <div>
   <input class="cancell" type="reset" onclick="location.href='loginCheck/sawonlist'" value="취소">
   </div>
   <div>
   <input onclick="return confirm('정말로 수정하시겠습니까?')" class="check" type="submit" value="확인">
   </div>
   </div>
   </form>
   
     <div>
     <input onclick="return confirm('정말로 삭제하시겠습니까?')" type="button" class="del"  value="삭제" id="xx${SawonRetrieve.userid}" data-id="${SawonRetrieve.userid}" />
     </div> 


</div>


