import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sumClass")
public class sumClass extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public sumClass() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sum = 0;
		for(int i=1; i<=100; i++) {
			sum += i;
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD>");
		out.println("<TITLE>합계</TITLE>");
		out.println("</HEAD>");
		out.println("<STYLE> BODY { color: royalblue; }</STYLE>");
		out.println("<BODY>");
		out.println("1~100까지의 합계<BR>> "+ sum);
		out.println("</BODY>");
		out.println("</HTML>");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
