<%@page import="qna.vo.qnaBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="nowPage" value="${param.page}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항 수정</title>
<style type="text/css">
.qnamodifyForm{ width: 1200px; margin: 0 auto; padding:10px 0 0 0; font-size: 17px;}
.qnamodifyForm h2 {font-size: 25px; margin: 10px 0 40px 0;padding:5px 5px 0 5px;}

.qnamodifyForm .qnadetail{border-top:1px solid silver; border-bottom:1px solid silver; padding: 10px 0 20px 0;border-radius: 5px}
.qnamodifyForm .qnadetail .qasubjectarea { width: 1200px; word-break:break-all; min-height: 15px; margin:0 0 0 20px;}
.qnamodifyForm .qnadetail .qasubjectarea input[type="text"]{width:1170px; min-height:10px; padding: 0 0 0 10px; font-size: 17px; border-radius: 5px; overflow-x:scroll;}

.qnamodifyForm .qnadetail .qacontentarea { width: 1200px; word-break:break-all; white-space:pre-line;  overflow: visible; min-height: 30px; height: auto ; margin:0 0 0 20px; line-height: 30px;}
.qnamodifyForm .qnadetail .qacontentarea textarea{width:1170px; min-height:200px; line-height:30px; padding: 10px 10px 5px 10px; font-size: 17px; border-radius: 5px; white-space: nowrap;}


.qnamodifyForm  .qabtn{width:300px; padding: 40px 0 0 0; margin: 0 auto;}

.qnamodifyForm  .qabtn input[type="submit"], .qnamodifyForm  .qabtn input[type="button"]{height: 35px; width:100px; font-size: 18px; border-radius: 5px;
 		color: rgba(30, 22, 54, 0.6); box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset; margin:0px 20px 10px 20px}

.qnamodifyForm  .qabtn input[type="submit"]:hover {color: rgba(255, 255, 255, 0.85); 
 		box-shadow: #fc5230 0 0px 0px 40px inset;} 
 		
.qnamodifyForm  .qabtn input[type="button"]:hover {color: rgba(255, 255, 255, 0.85); 
 		box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;} 

</style>
</head>
<body>
<jsp:include page="../main/head.jsp" />
	<!-- 게시판 수정하기 -->
	<div class="qnamodifyForm">
	<div><h2>${article.mb_id}님의 문의 수정</h2></div>
	
		<form action="qnaModifyPro.qa" method="post" name="modifyForm">
		<input type="hidden" name="wr_no" value="${article.wr_no}" />
		<input type="hidden" name="wr_id" value="${article.wr_id}" />
		<input type="hidden" name="page" value="${nowPage}" />
		<input type="hidden" name="wr_subject" value="${article.wr_subject}" />
		<input type="hidden" name="wr_content" value="${article.wr_content}" />
			<div class="qnadetail">
				<div class="qasubjectarea" >
					<input type="text"id="wr_subject" name="wr_subject" required="required" value="${article.wr_subject}"/>
				</div>

				<div class="qacontentarea">
					<textarea id="wr_content" name="wr_content" required="required">${article.wr_content}</textarea>
				</div>
			</div>
			<div class="qabtn">
					<input type="submit" value="수정">&nbsp;&nbsp; <input
						type="button" value="뒤로" onclick="history.back()">
			</div>
		</form>
	</div>
<jsp:include page="../main/tail.jsp" />
</body>
</html>















