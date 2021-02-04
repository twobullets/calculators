<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String x = request.getParameter("x");
String y = request.getParameter("y");
String op = request.getParameter("op");
/*
out.print("x="+x+"<br>");
out.print("y="+y+"<br>");
out.print("op="+op+"<br>")
*/
if(x==null){
	x="0";
}
if(y==null)
{
	y="0";
}
if(op==null)
{
	op="+";
}
double ix=Double.parseDouble(x);
double iy=Double.parseDouble(y);

if(op.equals("+"))
{
	out.print(ix+iy);
}
if(op.equals("-"))
{
	out.print(ix-iy);
}
if(op.equals("*"))
{
	out.print(ix*iy);
}
if(op.equals("/"))
{
	out.print(ix/iy);
}

%>