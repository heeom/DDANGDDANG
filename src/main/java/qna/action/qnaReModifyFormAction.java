package qna.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Action;
import common.ActionForward;
import qna.svc.qnaDetailService;
import qna.vo.qnaBean;


public class qnaReModifyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		// 게시물 수정에 필요한 파라미터 가져오기
		int wr_id = Integer.parseInt(request.getParameter("wr_id"));
		
		// 인스턴스 생성 
		qnaDetailService qnaDetailService = new qnaDetailService();
		
		qnaBean article = qnaDetailService.getArticle(wr_id);
		request.setAttribute("article", article);
		
		forward = new ActionForward();
		forward.setPath("/qna/qna_re_modify.jsp");
		
		return forward;
	}

}













