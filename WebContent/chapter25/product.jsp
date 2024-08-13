<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>
<%@include file="menu.jsp" %>
<%@page import="java.util.List, bean.Product" %>

<p>検索キーワードを入力してください</p>
<form action="Product.action" method="post">
<input type="text" name="keyword">
<input type="submit" value="検索">
</form>
<hr>

<table style="border-collapse: separate;border-spacing: 10px">

<%List<Product>list = (List<Product>)session.getAttribute("list");%>

<% for(Product p : list){ %>
	<tr>
		<td>商品<%=p.getId()%></td>
		<td><img src="image/<%=p.getId()%>.jpg" height="64"></td>
		<td><%=p.getName()%></td>
		<td><%=p.getPrice()%>円</td>
		<td><a href="CartAdd.action?id=<%=p.getId()%>">カートに追加</a></td>
	</tr>
<% }%>

</table>

<%@include file="../footer.html" %>