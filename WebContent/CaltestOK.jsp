<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<%
String x = request.getParameter("x");
String y = request.getParameter("y");
String operator = request.getParameter("operator");

int ix = Integer.parseInt(x);
int iy = Integer.parseInt(y);
int z = 0;

if(operator.equals("+")){
	z = ix + iy;
}else if(operator.equals("-")){
	z = ix - iy;
}else if(operator.equals("*")){
	z = ix * iy;
}else if(operator.equals("/")){
	z= ix / iy;
}


%> 
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=x %><%=operator%><%=y %>=<%=z%>
<button onclick="history.back()">back</button>
</body>
</html>