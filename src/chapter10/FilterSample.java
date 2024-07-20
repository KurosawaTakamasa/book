package chapter10;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FilterSample
 */
@WebServlet(urlPatterns = { "/chapter10/filter-sample" })
public class FilterSample extends HttpServlet {

	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("サーブレットの処理");
	}

}
