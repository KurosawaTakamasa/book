package chapter25;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Item;
import tool.Action;

public class CartRemoveAction extends Action {

	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request, HttpServletResponse response
		)throws Exception{

		HttpSession session = request.getSession();

		int id = Integer.parseInt(request.getParameter("id"));

		List<Item>cart= (List<Item>)session.getAttribute("cart");

		for(Item item : cart){
			if(item.getProduct().getId() == id){
				cart.remove(item);
				break;
			}
		}
		return "cart.jsp";
	}

}
