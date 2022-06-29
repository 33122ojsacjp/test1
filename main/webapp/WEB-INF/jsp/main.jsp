<%@page import="model.Mutter"%>
<%@page import="java.util.List"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%  User loginUser = (User)session.getAttribute("loginUser");
 	List<Mutter>mutterList=(List<Mutter>)application.getAttribute("mutterList");
 	String errorMsg = (String) request.getAttribute("errorMsg");
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>body{
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
}</style>
<title>TUBYAKI</title>
</head>
<body>
	<p1>TUBYAKI</p1>
<p>
<%= loginUser.getName() %>さん、ログイン中
<a href="/test1/Logout">ログアウト</a>
</p>
<p><a href="/test1/Main">更新</a></p>
<form action="/test1/Main"method="post">
<input type="text"name="text">
<input type="submit" value="つぶやく">
</form>
<%if(errorMsg != null){ %>
<p><%= errorMsg %></p>
<%} %>
<%for(Mutter mutter : mutterList) {%>
	<p><%= mutter.getUserName() %>:<%= mutter.getText() %></p>
<%} %>
</body>
</html>