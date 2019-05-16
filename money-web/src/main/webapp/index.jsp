<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script type="text/javascript" src="jquery-3.4.1.js"></script>
<script type="text/javascript">
function myFunction(){
	var length= $("#a").val();
	
	$.ajax({
	    type: "POST",
        url: "/money-web/test.do?",
		async:false,
		data:"length="+length,
        success: function(msg) {alert(msg);}
	});
}

</script>
</head>
<body>
    <form action="/money-web/login.do" method="post">
    username:<input type="text" name = "username" ><p> 
    password:<input type="password" name = "password" ><p>
    <input type="submit" value="登录"> 
</form>

<h2>1、生成随机字符串长度</h2>
<input  id="a" placeholder="请输入长度" type="text" ></input>
<button id=abc class="btn1" onclick="myFunction()" >生成</button>
<p id=result></p>

</body>
</html>