<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "ezen.*" %>
<% 
String x = request.getParameter("x");
String y = request.getParameter("y");
String op = request.getParameter("op");

	calculator c = new calculator();
	out.print(c.Cal(x, y, op));
	
	//static���� �س����� out.print(calculator.Cal(x,y,op));���ٷ� ��
	//<jsp:useBean id="c" class="ezen.calculator"></jsp:useBean>����ε� ����
%>
���� ��� �� :${z}