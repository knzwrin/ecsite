<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<style type="text/css">
	.header{
		width: 100%;
		height: 70px;
   		background-color: black;
   		line-height: 70px;
   		text-align: center;
   		font-size: 30px;
   		color: white;
	}

	.container{
		margin-top: 100px;
	    width:100%;
	    text-align: center;
	}

		.footer{
		position: fixed;
		bottom: 0px;
	    width: 100%;
	    height: 50px;
	    background-color: black;
	    color: white;
	    line-height: 50px;
	    text-align: center;
	}
	</style>
<title>購入完了画面</title>
</head>
<body>
<div class="header">
購入完了しました！！
</div>
		<div class="container">
		<img src='<s:property value="#session.itemImg" />'>
		<p><s:property value="#session.itemName" />を購入しました。<p><br>
		<p><a href='<s:url action="GoHomeAction" />'>ショッピングを続ける</a></p>
		<p><a href='<s:url action="MyPageAction" />'>購入履歴を確認する</a></p>
		</div>
        <div class="footer">footer</div>
</body>
</html>