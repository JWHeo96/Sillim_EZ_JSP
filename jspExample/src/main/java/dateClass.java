import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dateClass")
public class dateClass extends HttpServlet {
	private static final long serialVersionUID = 1L; // 사용자 n명에 대한 식별코드값

    public dateClass() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD>");
		out.println("<TITLE>날짜와 시간</TITLE>");
		out.println("</HEAD>");
		out.println("<BODY>");
		out.println("<H2>Hello World : 헬로월드</H2>");
		out.println("오늘의 날짜와 시간은 : "+new java.util.Date());
		out.println("</BODY>");
		out.println("</HTML>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
