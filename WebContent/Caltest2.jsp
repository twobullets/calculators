<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Calculator</title>
</head>
<body>
	<h1>Calculator2</h1>
	<form id="frm" name="frm" method="post" action="CaltestOK.jsp">		
		<input type="text" id="x" name="x">
		<select id="operator" name="operator">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>
		</select>
		<input type="text" id="y" name="y">
		<input type="submit" value="enter">
	</form>
</body>
</html>