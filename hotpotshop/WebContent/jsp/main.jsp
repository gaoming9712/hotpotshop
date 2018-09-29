<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=request.getContextPath() %>/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/shop.css">
<link rel="stylesheet" type="text/css" href="css/iconfont.css">
<script type="text/javascript" src="jQuery/jquery-1.8.3.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function showTime()
	{
	 //创建Date对象
		 var today = new Date();
		 //分别取出年、月、日、时、分、秒
		 var year = today.getFullYear();
		 var month = today.getMonth()+1;
		 var day = today.getDate();
		 var week = today.getDay();
		 var hours = today.getHours();
		 var minutes = today.getMinutes();
		 var seconds = today.getSeconds();
		 //如果是单个数，则前面补0
		 month  = month<10  ? "0"+month : month;
		 day  = day <10  ? "0"+day : day;
		 hours  = hours<10  ? "0"+hours : hours;
		 minutes = minutes<10 ? "0"+minutes : minutes;
		 seconds = seconds<10 ? "0"+seconds : seconds;
		 var weeks ;
		 //构建要输出的字符串
		 if (week == 0) {  
		        weeks = "星期日";  
		} else if (week == 1) {  
			weeks = "星期一";  
		} else if (week == 2) {  
			weeks = "星期二";  
		} else if (week == 3) {  
			weeks = "星期三";  
		} else if (week == 4) {  
			weeks = "星期四";  
		} else if (week == 5) {  
			weeks = "星期五";  
		} else if (week == 6) {  
			weeks = "星期六";  
		}  
		 var str = year+"年"+month+"月"+day+"日 "+weeks+hours+":"+minutes+":"+seconds;
		 
		 //获取id=result的对象
		 var obj = document.getElementById("result");
		 //将str的内容写入到id=result的<div>中去
		 obj.innerHTML = str;
		 //延时器
		 window.setTimeout("showTime()",1000);
	}
	$(function(){
		$(".liclass").on("click",function(){
			$(".liclass").css("background-color","rgb(0,0,0,0)");
			$(this).css("background-color","rgb(0,0,0,0.4)");			
		})
		$(".onclass>a").on("click",function(){
			if($(this).parent().children("ul").css("display")=="none"){
				$(this).parent().children("ul").css("display","block");
			}else {
				$(this).parent().children("ul").css("display","none");
			}
			$(".onulclass").parent().children("a").not(this).parent().children("ul").css("display","none");
					
		})		
	})
</script>
<style type="text/css">
	.topdiv {
		height: 6%;
		width: 100%;
		background-color: rgb(0,0,0,0.2);		
	}
	.weather {
		
	}
	.weatherdiv {
		text-align:right;
		height:100%;
		width:50%;
		display:inline-block;
	}
	.pdiv {
		height:100%;
		width:15%;
		display:inline-block;
		color: white;
		border:1px;
		border-right: 6px;
		text-align: center;
		background-color: rgb(0,0,0,0.1);
	}
	.pdiv>p {
		margin: 0px;
		display:inline-block;
		margin-top: 10px;
	}
	.pdiv:HOVER {
		cursor: pointer;
	}
	.datediv {
		display: inline-block;
		color: white;
		height: 100%;
		width: 20%;
		text-align: center;
	}
	.datediv>p {
		display: inline-block;
		margin: 0px;
		margin-top: 10px;
	}
	.datediv>span {
		display:inline-block;
		float: right;    	
    	font-size:27px;
    	color: #D3D3D3 !important;
	}
	.weatherdiv>span {
		display:inline-block;
		float: right;    	
    	font-size:27px;
    	color: #D3D3D3;
	}
	.pdiv>span {
		display:inline-block;
		float: right;    	
    	font-size:27px;
    	color: #D3D3D3;
	}
	.udiv {
		display: inline-block;
		height: 100%;
		float: right;
		color: white;
		width: 12%;
		
	}
	.udiv>img {
		height: 38px;
		background: rgb(0,0,0,0);
		
		
	}
	.udiv>span {
		
	}
	.leftdiv {
		height: 94%;
		width: 15%;
		display:inline-block;
		float: left;
	}
	.meundiv {
		background: rgb(0,0,0,0.3);
		height: 92%;
		width: 100%;
		
		
	}
	.meundiv>ul {
		margin: 0px;
		padding: 0px;
		
	}
	.meundiv>ul>li{
		line-height: 30px;
		position:relative;
		list-style: none;
		margin: 0px;
		padding: 0px;
	}
	.meundiv>ul>li:HOVER{
		
		background: rgba(0,0,0,0.4) !important;
	}
	.meundiv>ul>li>ul {
		position: relative;
		display: none;
	}
	.meundiv>ul>li:HOVER ul{
		
	}
	.meundiv>ul>li>a {
		display:block;
		text-decoration: none;
		color: white;
		position: relative;
		padding: 18px;
	}
	.meundiv>ul>li>ul>li {
		list-style: none;
		
	}
	.meundiv>ul>li>ul>li>a {
		text-decoration: none;
		outline: none;
		color: white;
		
	}
	.mtopdiv {
		width: 100%;
		height: 8%;
	}
	.mtopdiv button {
		background: rgb(0,0,0,0.3);
		border: 0px;
		outline: none;
		margin: 0px;
		width: 100%;
		height: 100%;
		color: white;
	}
	.icla {	
		
		float: right;
		
	}
	.pageclass {		
		float:left;
		width:85%;
		height:94%;
		background-color: rgb(0,0,0,0.1);
	}
	.pagetopclass {
		font-size: 25px;
	}
	.pagetopclass>a{
		display:inline-block;
		margin-top:10px;
		margin-left:40px;
		margin-bottom:10px;
		text-decoration: none;
		color: white;
	}
	.pagetopclass>a>span{
		font-size: 16px!important;
	}
	.fdiv {		
		height: 20%;
		
	}
	.fdiv>div{
		margin-left:40px;
		margin-right:50px;
		float:left;
		height: 100%;
		width: 200px;
	}
	.fdiv1 {
		background-color: red;
	}
	.fdiv2 {
		background-color: blue;
	}
	.fdiv3 {
		background-color: green;
	}
	.fdiv4 {
		background-color: gray;
		margin-right: 0px;
	}
</style>


</head>
<body style="margin: 0px;" onload="showTime()">
	<div class="mdiv">
		<div class="topdiv">
			<div class="pdiv">
				<p>&nbsp;&nbsp;&nbsp;<strong>好辣火锅</strong>管理&nbsp;≡</p><span>|</span>
			</div>
			<div class="weatherdiv">
				<iframe allowtransparency="true" frameborder="0" width="180" height="26" scrolling="no" 
					src="//tianqi.eastday.com/plugin/widget_v1.html?sc=3&z=2&t=0&v=0&d=1&bd=0&k=&f=ffffff&q=1&a=1&c=54511&w=180&h=30&align=center">
				</iframe><span>|</span>
			</div>
			<div class="datediv" >
				<p id="result"></p><span>|</span>
			</div>
			<div class="udiv">
				<img alt="" src="image/5.jpg" align="AbsMiddle">&nbsp;&nbsp;&nbsp;
				<span>${username }</span>
			</div>
		</div>
		<div class="leftdiv">
		<div class="mtopdiv">
			<button>NAVIGATION</button>
		</div>
		<div class="meundiv">
			<ul class="menuul">
				<li class="liclass"><a href="javascript:;"><i class="iconfont icon-gailan"></i>&nbsp;&nbsp;首页</a></li>
				<li class="liclass"><a href="javascript:;"><i class="iconfont icon-bofang"></i>&nbsp;&nbsp;买单结算</a></li>
				<li class="liclass"><a href="javascript:;"><i class="iconfont icon-bofang"></i>&nbsp;&nbsp;前台服务</a></li>
				<li class="liclass onclass"><a href="javascript:;"><i class="iconfont icon-manage"></i>&nbsp;&nbsp;菜品管理<i class="icla iconfont icon-jiahao"></i></a>
					<ul class="onulclass">
						<li><a href="javascript:;"><i class="iconfont icon-triangle-left"></i>&nbsp;&nbsp;菜品列表</a></li>
						<li><a href="javascript:;"><i class="iconfont icon-triangle-left"></i>&nbsp;&nbsp;添加菜品</a></li>
					</ul>
				</li>
				<li class="liclass onclass"><a href="javascript:;"><i class="iconfont icon-manage"></i>&nbsp;&nbsp;会员管理<i class="icla iconfont icon-jiahao"></i></a>
					<ul class="onulclass">
						<li><a href="javascript:;"><i class="iconfont icon-triangle-left"></i>&nbsp;&nbsp;会员列表</a></li>
						<li><a href="javascript:;"><i class="iconfont icon-triangle-left"></i>&nbsp;&nbsp;添加会员</a></li>
					</ul>
				</li>
				<li class="liclass"><a href="javascript:;"><i class="iconfont icon-guanli"></i>&nbsp;&nbsp;财务管理<i class="icla iconfont icon-jiahao"></i></a></li>
				<li class="liclass"><a href="javascript:;"><i class="iconfont icon-guanli"></i>&nbsp;&nbsp;库存管理<i class="icla iconfont icon-jiahao"></i></a></li>
				<li class="liclass onclass"><a href="javascript:;"><i class="iconfont icon-guanli"></i>&nbsp;&nbsp;员工管理<i class="icla iconfont icon-jiahao"></i></a>
					<ul class="onulclass">
						<li><a href="javascript:;"><i class="iconfont icon-triangle-left"></i>&nbsp;&nbsp;员工列表</a></li>
						<li><a href="javascript:;"><i class="iconfont icon-triangle-left"></i>&nbsp;&nbsp;添加员工</a></li>
						<li><a href="javascript:;"><i class="iconfont icon-triangle-left"></i>&nbsp;&nbsp;发放薪资</a></li>
					</ul>
				</li>
			</ul>
		</div>
		</div>
		<div class="pageclass">
			<div class="pagetopclass">
				<a href="javascript:;"><i class="iconfont1 icon-gailan"></i>&nbsp;&nbsp;首页<span>//好辣火锅店    吃的就是火锅    吃的就是辣</span></a>
			</div>
			<div class="fdiv">
				<div class="fdiv1">
					<table>
						<tr><td rowspan="2"><i></i></td><td><span>就餐已有</span></td></tr>
						<tr><td><span>5</span></td></tr>
						<tr><td colspan="2">rrrrrrr</td></tr>
					</table>
				</div>
				<div class="fdiv2"></div>
				<div class="fdiv3"></div>
				<div class="fdiv4"></div>
			</div>
		</div>
	</div>
</body>
</html>