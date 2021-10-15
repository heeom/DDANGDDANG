<%@page import="qna.vo.qnaBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 해결(관리자)</title>
<style type="text/css">
.qnadetailForm {width: 1200px;	margin: 0 auto;	padding: 50px 0 0 0;	font-size: 17px;}

.qnadetailForm h2 {	font-size: 20px;	margin: 0px 0 30px 10px;	padding: 5px 5px 0 5px;}

.qnadetailForm .qnadetail {
	border-top: 1px solid silver;	padding: 10px 0 0 0;	border-top-left-radius: 5px;	border-top-right-radius: 5px;}
.qnadetailForm .qnadetail .qacontentarea {
	width: 1150px;	word-break: break-all;	white-space: pre-line;	overflow: visible;	min-height: 30px;	height: auto;	
	margin: 0 0 20px 20px;	padding-bottom: 20px; line-height : 30px;	border-bottom: 1px solid silver;	line-height: 30px;}

.qnadetailForm .reqnadetail {
	border-bottom: 1px solid silver;	padding: 0 0 20px 0;	border-bottom-left-radius: 5px;	border-bottom-right-radius: 5px;}
.qnadetailForm .reqnadetail .qacontentarea {width:1170px; margin: 0 auto;}
.qnadetailForm .reqnadetail .qacontentarea textarea{width:1170px; min-height:180px; line-height:30px; padding: 10px 10px 5px 10px; font-size: 17px; border-radius: 5px}

.qnadetailForm  .qabtn {width:260px; margin: 0 auto; padding-top: 50px;}
.qnadetailForm  .qabtn input[type="submit"], .qnadetailForm  .qabtn input[type="reset"] {	width: 100px;	height: 35px;	font-size: 17px;	border-radius: 5px;	margin: 0 10px 0 10px;	
color: rgba(30, 22, 54, 0.6);	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;}
.qnadetailForm  .qabtn input[type="submit"]:hover {
	color: rgba(255, 255, 255, 0.85);	box-shadow: #fc5230 0 0px 0px 40px inset;}

 .qnadetailForm  .qabtn input[type="reset"]:hover {
	color: rgba(255, 255, 255, 0.85);	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;}
</style>
</head>
<body>
	<jsp:include page="../main/head.jsp" />
	<!-- 게시판 답변하기 -->
	<section class="qnareplyForm">
		<form action="qnaReplyPro.qa" method="post" name="reModifyForm">
			<!-- 답변 글 작성에 필요한 게시물 정보 중 입력받지 않는 정보도 함께 전달 -->
			<input type="hidden" name="page" value="${param.page}" />
			<input type="hidden" name="wr_no" value="${article.wr_no}" />
			<input type="hidden" name="wr_id" value="${article.wr_id}" />
			<input type="hidden" name="wr_co_id" value="${article.wr_co_id}" />
			<div class="qnadetailForm">
				<h2>${article.mb_id}님의문의사항</h2>
				<div class="qnadetail">
					<div class="qasubjectarea" style="word-break: break-all;">
						<h2>
							문의사항 ) ${article.wr_subject }<br>
						</h2>
					</div>
					<div class="qacontentarea" style="word-break: break-all;">${article.wr_content}</div>
				</div>

				<div class="reqnadetail">
					<input type="hidden" name="re_subject" value="${article_re.wr_subject}"/>
					<div class="qasubjectarea" style="word-break: break-all;">
						<h2> ${article_re.wr_subject }	</h2>
					</div>
					<div class="qacontentarea">
						<textarea id="re_content" name="re_content" required="required">${article_re.wr_content}</textarea>
					</div>
					<div style="clear: both;"></div>
				</div>
				<div class="qabtn">
					<input type="submit" value="답변글등록">&nbsp;&nbsp;
					<input type="reset" value="다시쓰기">
				</div>
			</div>
		</form>
	</section>
	<jsp:include page="../main/tail.jsp" />
</body>
</html>


