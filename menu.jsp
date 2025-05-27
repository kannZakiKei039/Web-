<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
  
    <%
    HttpSession mySession = request.getSession(false);
    if(session == null || session.getAttribute("user_id") == null){
    	response.sendRedirect("login.jsp");
    	return;
    }
    String username =(String)session.getAttribute("username");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メニュー</title>
</head>
<body>
<h2>ようこそ、<%= username %>さん！</h2>
<ul>
<li><a href="janken.jsp">ジャンケンをする</a></li>
<li><a href="result.jsp">過去の対戦結果を見る</a></li>
<li><a href="logout.jsp">ログアウト</a></li>


</ul>
</body>
</html>