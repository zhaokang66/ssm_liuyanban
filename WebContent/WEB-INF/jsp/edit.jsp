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
		.add{
			display: block;
			margin-left: 20px;
			margin-top: 20px;
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
		textarea {
			font-size: 18px;
		}
}
	</style>
</head>
		<h1>留言板</h1>
		<div class="container">
			<div class="add" id="add">
				<form method="post" action="update">
					<label from="name">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</label>
					<input tgype="text" value="${c.name}" name="name"><br>
					<label from="name">留言标题：</label>
					<input tgype="text" value="${c.title}" name="title"><br>
					<label from="name">留言内容：</label>
					<textarea rows="5" cols="30" name="content">${c.content}</textarea>
					<input type="submit" value="提交" style="width:30%;display:block;margin:20px auto;">
				</form>
			</div>
		</div>
</html>