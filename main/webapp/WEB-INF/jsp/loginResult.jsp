<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.User" %>
    <% User loginUser = (User) session.getAttribute("loginUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body{
		background: #2e2930;
	}
	p1{	color: lime;
	
	font-size: 500%; 
	font-family: fantasy;
	}
	p{color: white;
	}
	a{
		color: white;
	}
	a:hover {
		background: lime;
		color: #2e2930;
}

 </style>
<title>TUBYAKI</title>
</head>
<body>
<p1>TUBYAKI</p1>
<% if(loginUser !=null) {%>
	<p>ログインに成功しました</p>
	<p>ようこそ<%= loginUser.getName() %>さん</p>
	<a href="/test1/Main">つぶやき投稿・閲覧へ</a>
<%}else{ %>
	<p>ログインに失敗しました</p>
	<a href="/test1/">TOPへ</a>
<%} %>
</body>
</html>