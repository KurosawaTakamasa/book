<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.List, bean.Item, bean.Product" %>
<%@include file="../header.html" %>
<%@include file="menu.jsp" %>

<%List<Item>cart = (List<Item>)session.getAttribute("cart"); %>
<p><%=cart.size()%>種類の商品があります。</p>
<hr>

<table style="border-collapse: separate; border-spacing: 10px;">
<% for (Item i : cart){ %>
	<tr>
		<td>商品<%=i.getProduct().getId() %></td>
		<td><img src="image/<%=i.getProduct().getId() %>.jpg" height="96"></td>
		<td><%=i.getProduct().getName() %></td>
		<td><%=i.getProduct().getPrice() %>円</td>
		<td><%=i.getCount()%>個</td>
	</tr>
<% } %>
</table>
<hr>

<form action="Purchase.action" method="post">
	<p>お名前 <input type="text" name="name"></p>
	<p>ご住所 <input type="text" name="address"></p>
	<p><input type="submit" value="購入を確定"></p>
</form>


<%@include file="../footer.html" %>