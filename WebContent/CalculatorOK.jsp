<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String op = request.getParameter("op");
	
	int ix = Integer.parseInt(x);
	int iy = Integer.parseInt(y);
	int iz = 0;
	
	switch(op)
	{
	
	case "+":
		iz = ix + iy;
		break;
	case "-":
		iz = ix - iy;
		break;
	case "/":
		iz = ix / iy; 
		break;
	case "*":
		iz = ix * iy;
		break;	
	}
%>
	<%= ix%> <%= op%> <%= iy%> = <%= iz%>
	
