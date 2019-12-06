<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>留言板</title>
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
			list-style: none;
			text-decoration:none;
		}
		h1{
			margin: 20px 0 50px 330px;
		}
		.container{
			width: 50%;
			margin: 0 auto;
			border: 1px solid grey;

		}
		.page{
			width: 100%;
			display: block;
		}
		.add{
			display: none;
			margin-left: 20px;
			margin-top: 20px;
		}
		.nav li{
			float: left;
			margin-right: 10px;
			line-height: 30px;
			cursor: pointer;
		}
		.nav{
			width: 100%;
			height: 30px;
			font-size: 18px;
		}
		.art{
			border-bottom: 1px solid black;
			background-color: pink;
			margin-bottom: 20px;
			position: relative;
		}
		a{
			color: black;
		}
		img{
			width: 30px;
		}
		.choose{
			width: 40px;
			//height: 30px;
			position: absolute;
			right: 0px;
			top: 0;
		}
		#choose_opera{
			display: none;
		}
		.choose_opera li{
			width: 60px;
			font-size: 14px;
		}
		.title{
			position: absolute;
			top: 0;
			left: 45%;;
			font-size: 20px;
		}
		.name{
			font-size: 18px;
			margin-left: 10px;
		}
		.update_time{
			font-size: 14px;
			color: grey;
			margin-top: 10px;
			margin-left: 10px;
		}
		.content{
			margin-top: 30px;
			width: 100%;
			

		}
		.content p{
			 word-break:break-all; width:90%;
			 word-wrap:break-word; width:90%;
			 text-indent: 2em;
			 margin: 10px auto;
		}
		input{
			font-size:18px;
			width: 50%;
			height: 30px;
			margin: 20px 0;
		}
		label{
			font-size: 20px;
		}
	</style>
</head>
		<h1>留言板</h1>
		<div class="container">
			<div class="nav">
				<ul>
					<li id="nav_list" style="background-color: grey;">留言列表</li>
					<li id="nav_add">添加留言</li>
				</ul>
			</div>
			<div class="page" id="page">
				<c:forEach items="${cs}" var="c" varStatus="st">
					<ul class="art">
						<li class="name">${c.name}</li>
						<li class="title">${c.title}</li>
						<div class="choose" onclick="show(this)">
							<img src="https://www.easyicon.net/api/resizeApi.php?id=1143312&size=128" alt="这里是图片" >
							<ul id="choose_opera">
								<a href="edit?id=${c.id}"><li>编辑</li></a>
								<a href="delete?id=${c.id}"><li>删除</li></a>
							</ul>
						</div>
						<li class="update_time">${c.updateTime}</li>
						<li class="content">
							<p>${c.content}	</p>
						</li>
					</ul>
				</c:forEach>
				<div style="text-align:center">
					<a href="?start=0">首  页</a>
					<a href="?start=${page.start-page.count}">上一页</a>
					<a href="?start=${page.start+page.count}">下一页</a>
					<a href="?start=${page.last}">末  页</a>
				</div>
			</div>
			<div class="add" id="add">
				<form method="post" action="add">
					<label from="name">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</label>
					<input tgype="text" placeholder="请输入你的昵称" name="name"><br>
					<label from="name">留言标题：</label>
					<input tgype="text" placeholder="请输入你的留言标题" name="title"><br>
					<label from="name">留言内容：</label>
					<textarea rows="5" cols="45" name="content"></textarea>
					<input type="submit" value="提交" style="width:30%;display:block;margin:20px auto;">
				</form>
			</div>
		</div>

	    <script type="text/javascript">
	    	var status = 'hide';
	    	function show(e) {		
	    		var childNodes = e.childNodes;
	    		var ul = childNodes[3];
	    		if (status == 'hide') {
	    			ul.style.display = 'block';
	    			status = 'block';
	    		}else {
	    			ul.style.display = 'none';
	    			status = 'hide';
	    		}
	    	}
	    	var nav_list = document.getElementById('nav_list');
	    	var nav_add = document.getElementById('nav_add');
	    	var page = document.getElementById('page');
	    	var add = document.getElementById('add');
	    	
	    	nav_list.onclick = function () {
	    		page.style.display = 'block';
	    		add.style.display = 'none';
	    		nav_list.style.backgroundColor = 'grey';
	    		nav_add.style.backgroundColor = 'white';
	    	}
	    	nav_add.onclick = function () {
	    		page.style.display = 'none';
	    		add.style.display = 'block';
	    		nav_add.style.backgroundColor = 'grey';
	    		nav_list.style.backgroundColor = 'white';
	    	}
	    	
	    </script>
</html>