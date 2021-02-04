<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	function Reset()
	{
		document.cal.x.value="";
		document.cal.y.value="";
		document.cal.x.focus();
		alert("reset");
	}
	
	function DoCal()
	{
		x=$("#x").val();
		y=$("#y").val();
		op=document.cal.op.value;
		if(op == "+")
		{
			op="%2B";	
		}
		//alert(x);
		//alert(y);
		//alert(op);
		param = "x="+x+"&y="+y+"&op="+op;
		$.ajax
		({
			url:"ajax.jsp?"+param,
			type:"GET",
			data:"HTML",
			success:function(data)
			{
				alert(data);
				//document.cal.output.value = data;
				$("#output").val(data);
			},
			complete:function(data)
			{
				
			},
			error:function(xhr, status, error)
			{		
				alert(error);
			}
		});
		
	}

</script>
</head>
<body>
	<form id="cal" name="cal" method="get" action="ajax.jsp">
		<table width="60%" style="padding-left:50px;">
			<caption><font size="50">계산기</font></caption>
			<tr>
				<td colspan="2">
					입력값 1 : <input type = "text" id= "x" name="x">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					입력값 2 : <input type = "text" id= "y" name="y">
				</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
				<td>
					<input type="radio" name="op" value="+" checked>덧셈
					<input type="radio" name="op" value="-">뺄셈
					<input type="radio" name="op" value="*">곱셈
					<input type="radio" name="op" value="/">나눗셈
				</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<input type = "button" value="계산하기" onclick="DoCal()" >
					<input type = "button" value="&nbsp;초기화 &nbsp;" onclick="Reset()">					
				</td>
			</tr>
			<tr>
				<td colspan="2">
					계산결과 : <input type = "text" id= "output" name="output">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>