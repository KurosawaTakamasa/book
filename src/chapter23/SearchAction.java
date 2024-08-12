package chapter23;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import dao.ProductDAO;
import tool.Action;

public class SearchAction extends Action {
	public String execute(
			HttpServletRequest request, HttpServletResponse response
		) throws Exception{

			String keyword = request.getParameter("keyword");
			String seachType = request.getParameter("searchtype");

			System.out.println(seachType);
			ProductDAO dao = new ProductDAO();


			if (seachType.equals("1")){
				List<Product>list = dao.search(keyword);
				request.setAttribute("list", list);
				System.out.println(seachType);
			} else{
				List<Product>list = dao.searchAll(keyword);
				request.setAttribute("list", list);
			}

			return "list.jsp";


	}

}
