<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>

	function add(char) {
    var input = document.getElementById('input'); 
    input.value += char;
   
	}

	function cal() {
	    var input = document.getElementById('input');
	    var output = eval(input.value); 
	    document.getElementById('output').value = output;
	}

	function ac() {
	    document.getElementById('input').value = "";
	    document.getElementById('output').value = "";
	}

</script>
<style>
td{
	padding: 5px 10px;
	text-align: center;
}
input{
	border:none;
	
}

</style>
</head>
<body>
	<table border="1" width="300px" height="500px" style="text-align:center; border-collapse:collapse;">
		<tr>
			<td colspan="4">
				<input type="text" id="input">
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="text" id="output">
			</td>
		</tr>
		<tr>
			<td colspan="3" onclick="ac()">AC</td>
			<td onclick="add('/')">÷</td>
		</tr>
		<tr>
			<td onclick="add(7)">7</td>
			<td onclick="add(8)">8</td>
			<td onclick="add(9)">9</td>
			<td onclick="add('*')">x</td>
		</tr>
		<tr>
			<td onclick="add(4)">4</td>
			<td onclick="add(5)">5</td>
			<td onclick="add(6)">6</td>
			<td onclick="add('-')">-</td>
		</tr>
		<tr>
			<td onclick="add(1)">1</td>
			<td onclick="add(2)">2</td>
			<td onclick="add(3)">3</td>
			<td onclick="add('+')">+</td>
		</tr>
		<tr>
			<td colspan="2" onclick="add(0)">0</td>
			<td onclick="add('.')">.</td>
			<td onclick="cal()">=</td>
		</tr>
	</table>
</body>
</html>