<%@page import="java.util.ArrayList"%>
<%@page import="order.vo.orderBean"%>
<%@ page import="item.vo.ItemBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../main/head.jsp" />

<c:set var="no" value="${param.no }" />
<c:set var="strangerID" value="${strangerID }" />
<c:set var="customerID" value="${customerID }" />

<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">

<c:set var="article" value="${article}"/>
<c:set var="orderarticle" value="${orderarticle}"/>

<c:set var="memberID" value="${sessionScope.memberID}" />

<style>

#jb-header {
	padding: 20px 0;
}

#jb-content {
	width: 750px;
	margin-bottom: 20px;
	float: left;
	padding: 20px;
	border-top: 1px solid #bcbcbc;
}

#jb-content img {
	max-width: 100% !important;
}

#jb-sidebar-right {
	width: 400px;
	padding: 20px;
	margin: 0px;
	float: right;
	text-align: center;
}

#jb-sidebar-right2 {
	width: 400px;
	padding: 20px;
	margin: 0px;
	float: right;
}

#btn1 {
	min-height: 90px;
	width: 90px;
	border-radius: 50%;
	border: 3px solid white;
	background-color: rgb(250, 172, 88);
	font-family: 'Gamja Flower', cursive;
	font-size: 19px;
	font-weight: 600;
	letter-spacing: 3px;
	height: 45px;
}
#btn2 {
	min-height: 90px;
	width: 90px;
	border-radius: 50%;
	border: 3px solid white;
	background-color: rgb(250, 172, 88);
	font-family: 'Gamja Flower', cursive;
	font-size: 19px;
	font-weight: 600;
	letter-spacing: 3px;
	height: 45px;
}
#btn3 {
	min-height: 90px;
	width: 90px;
	border-radius: 50%;
	border: 3px solid white;
	background-color: rgb(250, 172, 88);
	font-family: 'Gamja Flower', cursive;
	font-size: 19px;
	font-weight: 600;
	letter-spacing: 3px;
	height: 45px;
}
.myipchal {
	width: 350px;
	height: 40px;
}

input {
	margin: 0;
}

#price {
	width: 50%;
	height: 40px;
	border: none;
	font-size: 1em;
	padding-left: 5px; 
	font-style: oblique;
	display: inline;
	outline: none;
	box-sizing: border-box;
	color: black;
	border: 1px solid #bcbcbc;
}

#addprice {
	width: 30%;
	height: 40px;
	background-color: lightgray;
	border: none;
	background-color: white;
	font-size: 1em;
	color: #042AaC;
	outline: none;
	display: inline;
	margin-left: -10px;
	box-sizing: border-box;
	border: 1px solid #bcbcbc;
}

input[type=button]:hover {
	background-color: lightgray;
}

.aa {
	clear: both;
}

.a {
	font-family: 'Gamja Flower', cursive;
}

#d-day {
	font-family: 'Gamja Flower', cursive;
}
</style>





<!-- 	<div id="jb-container"> -->
<div id="jb-header">
	<h1 style="font-size: 2em">${article.getName()}</h1>
</div>
<div id="jb-content">
	<p>${article.getContent()} </p>

</div>
<div id="jb-sidebar-right">
	<h1 class="a" style="font-size: 4em">???????????????</h1>
	<h1 id="d-day" style="font-size: 2em">${article.getEndTime()}</h1>
	<hr class="a" style="border: solid 10px red;">
	<div>
		<div>
			<div>
				<div style="padding-top: 0;">
					<br> <br> <br>
					<h3 class="a" style="font-size: 3em">?????????</h3>
					<p style="font-size: 2em">${article.getStartPrice()}???</p>
					</div>
						<div>
							<br>
							<h3 class="a" style="font-size: 3em">?????? ?????????</h3>
							<input type="text" id="nowprice" value="${article.getNowPrice()}???"
							 readonly style=" font-style: normal; border:0px; text-align: center; font-size: 2em">
							<br>
							<input type="hidden" id="nowprice2" value="${article.getNowPrice()}">
							<br>
							<h3 class="a" style="font-size: 3em">?????? ?????????</h3>
							<span style="color:red;">????????? ????????? ????????? ?????? ???????????????.</span>
							<p style="font-size: 2em">
							${article.getMaxPrice()}???
							</p><br>
							<p class="a">
								<strong style="font-size: 2em">${orderarticle}</strong>??? ??????
							</p>
						</div>
						<div class="myipchal">
							<br>
							<br>
							<h3 class="a" style="font-size: 2em">?????????
								?????? ??????</h3><span style="color:red;">???(???????????????!)?????? ???????????? ????????? ???????????????.</span><br>
								<form action="itemAddPriceAcion.it?it_no=${article.getNo()}&memberID=${article.getMemberID()}
								&customerID=${customerID }&endTime=${article.getEndTime()}
								&maxPrice=${article.getMaxPrice()}&nowPrice=${article.getNowPrice()}" method="post" id="ipchal">
							<input type="text" id="price" name="price" value="" placeholder="????????? ??????">
							<input type="submit" id="addprice" name="addprice" value="??????">
							</form>
						</div>
						<div>
							<br><br><br><br><br><br>
							<h3 class="a" style="font-size: 2em">?????? ??????</h3>
							<br>
							<input type="button" onclick="btn1()" id="btn1" value="5000">&nbsp&nbsp
							<input type="button" onclick="btn2()" id="btn2" value="10000">&nbsp&nbsp
							<input type="button" onclick="btn3()" id="btn3" value="15000">&nbsp&nbsp
						</div>
					</div>
				</div>
			</div>
			<div style="border-bottom:1px solid #bcbcbc"><h4>????????? ??????</h4></div><br>
			????????? ????????? : ${article.getMemberID()}<br>
			<div style="border-top:1px solid #bcbcbc">
				<c:url value="../item/modify.it" var="modify">
					<c:param name="no" value="${no }" />
				</c:url>
				<a href="${modify }" style="width:100%;display:block;background:#e6e6e6;margin-top:10px;padding:8px;font-size:15px;border:1px solid #d6d6d6;">??????</a>
			</div>
            <c:url value="../talk/list.ta" var="talk">
               <c:param name="item_num" value="${no }" />
               <c:param name="recv_mb_id" value="${strangerID }" />
               <c:param name="type" value="send" />
            </c:url>
            <a href="${talk }" style="width:100%;display:block;background:#fc5230;color:#FFF;margin-top:10px;padding:8px;font-size:15px;border:1px solid #e23a18;">????????????</a>
		</div>

<div class="aa"></div>

<script type="text/javascript">
		
		$('#addprice').click(function() {
   			location.reload();
		});
		
		// ?????? ????????? ?????????
		$('#ipchal').submit(function(){
			var now=${article.getNowPrice()}
			var max=${article.getMaxPrice()} 
			
		if(${not empty sessionScope.memberID}){
		
		if($("#price").val()==""||$("#price").val()=="0"){
			alert("???????????? ??????????????????");
			return false;
		}else if($("#price").val()>max){
			alert("???????????? ?????? ??????????????? ?????? ??? ????????????.");
			return false;
		}else if(now>max){
			alert("?????????????????? ??????????????? ????????? ????????????");
			return false;
		}else if((Number($("#price").val())+now)>max){
			alert("???????????? ???????????? ?????????????????????.");
			return false;
		}else if(now>=max){
			alert("????????? ?????????????????????.");
			return false;
		}
		}else{
			alert("???????????? ????????? ??????????????????.");
		}
		
		});
		
		$('#ipchal').submit(function(){
			var now=${article.getNowPrice()}
			var max=${article.getMaxPrice()} 
		if(now>=max){
			alert("???????????? ????????? ?????????????????????.");
			return false;
		}
		});
		// ????????? ?????????
		var countDownDate = new Date("${article.getEndTime()}").getTime();
		var now = new Date().getTime();
		if((countDownDate - now)>0){
		var x = setInterval(function() { //1????????? ??????????????? ?????? ??????,??????
			var now = new Date().getTime(); // ?????? ?????? ?????? 
			var distance = countDownDate - now; // ?????????????????? ??????????????? ??? ?????? 
			var d = Math.floor(distance / (1000 * 60 * 60 * 24));
			var h = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)); 
			var m = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60)); 
			var s = Math.floor((distance % (1000 * 60)) / 1000); 
			//id??? d-day??? HTML????????? ?????? ??????
			document.getElementById("d-day").innerHTML = "?????????????????? " + d +"??? " + h + "?????? " + m + "??? " + s + "???"; 
			
			if(distance<=0){
		
				$.ajax({
	                    url:"itemSuccessfulAction.it",
	                    type:"post",
	                    dataType:"html",
	                    data:{"it_no":${article.getNo()},"memberID":"${article.getMemberID()}","endTime":"${article.getEndTime()}"},
	                    success: function(data){
	                           alert("????????? ?????????????????????.");
	                           clearInterval(x);
	                    }
				 });
				 
				alert("????????? ???????????????.");
				document.getElementById("d-day").innerHTML = "????????? ??????";
			
			$('#ipchal').submit(function(){
			if(distance<=0){
				alert("????????? ?????????????????????.");
				return false;
			}
			});
			
			
		}
		});
		}else{
			alert("????????? ???????????????.");
			document.getElementById("d-day").innerHTML = "????????? ??????";
		}
		

	function btn1(){
		var num1 = document.getElementById("btn1");
		var num2 = document.getElementById("price");
		var value1 = parseInt(num1.value)
		num2.value = value1;
		}
	
	function btn2(){
		var num1 = document.getElementById("btn2");
		var num2 = document.getElementById("price");
		var value1 = parseInt(num1.value)
		num2.value = value1;
		}
	function btn3(){
		var num1 = document.getElementById("btn3");
		var num2 = document.getElementById("price");
		var value1 = parseInt(num1.value)
		num2.value = value1;
		}
	
</script>



<jsp:include page="../main/tail.jsp" />
