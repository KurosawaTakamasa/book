<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>
<%@page import="bean.Customer" %>

<% Customer customer = (Customer)session.getAttribute("customer"); %>

こんにちは、<%=customer.getLogin() %>さん。

<p><a href="Logout.action">ログアウト</a></p>

<%@include file="../footer.html" %>