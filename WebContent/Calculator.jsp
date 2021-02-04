<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Calculator</title>
</head>
<body>
	<form id="frm" name = "frm" method="post" action ="MyCal.do">
	<strong>Calculator :</strong>  
	<input type = "text" id="x" name="x" value="1">
	<select id="op" name="op">
		<option value="+">+
		<option value="-">-
		<option value="/">/
		<option value="*">*
	</select>
	<input type = "text" id="y" name="y" value="1">
	<input type = "submit" value="전송">
	</form>
</body>
</html>