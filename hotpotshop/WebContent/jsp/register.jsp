<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
			<form action="user/register.do" method="post">
				<img class="mimg" alt="" src="image/2.png" ><br><br>
				<span class="mspan1">好辣火锅店</span><br><br>
				<span class="mspan2">用户注册</span><br><br>
				<input type="text" autocomplete="off" placeholder="用户名" class="minput" name="username"><i class="iconfont icon-ziyuan iclass"></i><br><br>
				<input type="password" placeholder="password" class="minput" name="password"><i class="iconfont icon-yuechi iclass"></i><br>		
				<br><br><br><br>
				<input type="submit" value="Register" class="tinput">
				<input type="reset" value="Reset" class="tinput"><br><br><br><br><br>
				
			</form>			
		</div>
	</div>

</body>
</html>