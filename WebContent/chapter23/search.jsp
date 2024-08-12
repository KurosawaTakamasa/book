<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>

<p>検索キーワードを入力してください</p>
<form action="Search.action" method="post">
<input type="text" name="keyword">
<div>
    <input type="radio"  id="partial" name="searchtype" value=1 checked />
    <label for="partial">部分一致</label>
</div>
<div>
    <input type="radio" id="all" name="searchtype" value=2 />
    <label for="all">全部一致</label>
</div>

<input type="submit" value="検索">
</form>

<%@include file="../footer.html" %>
