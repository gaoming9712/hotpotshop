<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=request.getContextPath() %>/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/iconfont.css">
<link rel="stylesheet" type="text/css" href="css/shop.css">
</head>
<body style="margin: 0px;">
	<div class="mdiv">
		<div class="sdiv">
			<form action="user/login.do" method="post">
				<img class="mimg" alt="" src="image/2.png" ><br><br>
				<span class="mspan1">好辣火锅店</span><br><br>
				<span class="mspan2">管理系统</span><br><br>
				<input type="text" autocomplete="off" placeholder="用户名" class="minput" name="username"><i class="iconfont icon-ziyuan iclass"></i><br><br>
				<input type="password" placeholder="password" class="minput" name="password"><i class="iconfont icon-yuechi iclass"></i><br>
				<input type="checkbox" class="ninput">Remember me<br><br><br><br>
				<input type="submit" value="Login" class="tinput">
				<input type="reset" value="Reset" class="tinput"><br><br><br><br><br>
				<a href="jsp/register" class="a_class">没有账号，去注册</a>
			</form>			
		</div>
	</div>
</body>
</html>