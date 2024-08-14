<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.*, bean.*" %>
<%@include file="../header.html" %>
<%@include file="menu.jsp" %>

<% List<Item>cart = (List<Item>)session.getAttribute("cart"); %>

<% if (cart.size()>0){ %>
	<p><%=cart.size()%>種類の商品があります</p>
	<hr>
<% }else{ %>
	<p>カートに商品がありません</p>
<% } %>

<table style="border-collapse: separate; border-spacing: 10px;">
<% for (Item i : cart){ %>
	<tr>
		<td>商品<%=i.getProduct().getId() %></td>
		<td><img src="image/<%=i.getProduct().getId() %>.jpg" height="96"></td>
		<td><%=i.getProduct().getName() %></td>
		<td><%=i.getProduct().getPrice() %>円</td>
		<td><%=i.getCount()%>個</td>
		<td><a href="CartRemove.action?id=<%=i.getProduct().getId()%>">カートから削除</a></td>
	</tr>
<% } %>
</table>

<%@include file="../footer.html" %>
