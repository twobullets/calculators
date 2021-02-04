<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "ezen.*" %>
<% 
String x = request.getParameter("x");
String y = request.getParameter("y");
String op = request.getParameter("op");

	calculator c = new calculator();
	out.print(c.Cal(x, y, op));
	
	//static으로 해놓으면 out.print(calculator.Cal(x,y,op));한줄로 끝
	//<jsp:useBean id="c" class="ezen.calculator"></jsp:useBean>빈즈로도 한줄
%>
서블릿 계산 값 :${z}