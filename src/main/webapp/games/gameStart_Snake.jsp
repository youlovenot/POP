<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="game.snakegame.snakegame.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Game Start</title>
</head>
<body>
	<%
	new SnakeGame();
	%>
	<script>
		window.close();
	</script>
</body>
</html>