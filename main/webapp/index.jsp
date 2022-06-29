<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body{	 background:#2e2930;
	}

	p1{	color: lime;
	
	font-size: 500%; 
	font-family: fantasy;
	}
	
	p{color: white;
	}
</style>
<title>TUBYAKI</title>
</head>
<body>
<p1>TUBUYAKI</p1>
<form action="/test1/Login"method="post">
<p>ユーザー名：<input type="text"name="name"></p>
<p>パスワード：<input type="password"name="pass"></p>
<input type="submit"value="ログイン">


</form>
</body>
</html>