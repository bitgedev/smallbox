package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.QnaDeleteProAction;
import action.QnaDetailAction;
import action.QnaListAction;
import action.QnaReplyFormAction;
import action.QnaReplyProAction;
import action.QnaWriteProAction;
import action.ReserveCancelProAction;
import action.ReserveListAction;
import vo.ActionForward;

@WebServlet("*.my")
public class MyPageFrontController extends HttpServlet {
	// GET or POST 방식 요청을 공통으로 처리할 doProcess() 메서드 정의
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String command = request.getServletPath();

		ActionForward forward = null; // 포워딩 정보를 저장할 ActionForward 타입 변수
		Action action = null;
		
		// ----------------------------------------------------------------------
//		if(command.equals("/MyPageMain.my")) { // 마이페이지 메인으로 이동
//			forward = new ActionForward();
//			forward.setPath("mypage/mypage_main.jsp");
//			forward.setRedirect(false);
		if(command.equals("/MyPageMain.my")) { // 마이페이지 메인 이동 + 여러 정보 출력
			action = new MyPageMainAction();
			forward = action.execute(request, response);
		} else if(command.equals("/MovieLikeList.my")) { // 마이페이지 - 찜 목록 출력
 			action = new MovieLikeListProAction();
			forward = action.execute(request, response);
		} else if(command.equals("/CouponList.my")) { // 마이페이지 - 쿠폰 목록 출력
 			action = new CouponListProAction();
			forward = action.execute(request, response);
		} else if(command.equals("/ReviewList.my")) { // 마이페이지 - 리뷰 목록 출력
 			action = new ReviewListProAction();
			forward = action.execute(request, response);
		//
		} else if (command.equals("/Reserved.my")) {
			action = new ReserveListAction();
			forward = action.execute(request, response);
			
		} else if (command.equals("/ReserveCancel.my")) {
			action = new ReserveCancelProAction();
			forward = action.execute(request, response);
			
		} else if(command.equals("/QnaWriteForm.my")) {
			forward = new ActionForward();
			forward.setPath("qna/qna_write.jsp");
			forward.setRedirect(false);
			
		} else if(command.equals("/QnaWritePro.my")) {
			action = new QnaWriteProAction();
			forward = action.execute(request, response);
			
		} else if(command.equals("/QnaList.my")) {
			action = new QnaListAction();
			forward = action.execute(request, response);
			
		} else if(command.equals("/QnaDetail.my")) {
			action = new QnaDetailAction();
			forward = action.execute(request, response);
			
		} else if(command.equals("/QnaDeleteForm.my")) {
			forward = new ActionForward();
			forward.setPath("qna/qna_delete.jsp");
			forward.setRedirect(false); // 생략도 가능
			
		} else if(command.equals("/QnaDeletePro.my")) {
			action = new QnaDeleteProAction();
			forward = action.execute(request, response);
			
		} else if(command.equals("/QnaReplyForm.my")) {
			// 답글 작성 폼 비즈니스 작업 요청
			// QnaReplyFormAction 의 execute() 메서드 호출
			action = new QnaReplyFormAction();
			forward = action.execute(request, response);
			
		} else if(command.equals("/QnaReplyPro.my")) {
			// 답글 작성 비즈니스 작업 요청
			// QnaReplyProAction 의 execute() 메서드 호출
			action = new QnaReplyProAction();
			forward = action.execute(request, response);
		} 
		
		if(forward != null) {
			// 2. Actionforward 객체에 저장된 포워딩 방식 판별
			if(forward.isRedirect()) { // Rerdirect 방식
				// Redirect 방식의 포워딩 작업 수행
				// => 포워딩 경로는 ActionForward 객체의 getPath() 메서드 활용
				response.sendRedirect(forward.getPath());
			} else { // Dispatch 방식
				// Dispatch 방식의 포워딩 작업 수행
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
		
	} // doProcess() 메서드 끝(응답 데이터 전송 시점)
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}