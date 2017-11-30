<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
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
   		 background-color: black;
	}

	.menu ul{
    	margin: 0;
    	padding: 0;
    	list-style: none;
	}

	.menu li a{
	    display: block;
	    padding: 15px;
	    color: white;
	    font-size: 14px;
	    text-decoration: none;
		text-align:center;
	}

	.menu li a:hover{
	    background-color: lightgrey;
	}

	.menu ul:after{
	    content: "";
	    display: block;
	    clear: both;
	}

	.menu li{
	    float: left;
	    width: 150px;
	}

	.main{
	margin-top: 100px;
	width: 100%;
	}

	h2,h3,p{
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
<title>検索結果なし</title>
</head>
<body>
        <div class="header">
            <nav class="menu">
                <ul>
                    <li><a href='<s:url action="GoHomeAction" />'>ECSITE</a></li>
                    <li><a href='<s:url action="GoLoginAction" />'>ログイン</a></li>
                    <li><a href='<s:url action="GoMyPageAction" />'>マイページ</a></li>
                </ul>
            </nav>
        </div>

		<div class="main">
			<h2>もう一度検索をお願いします。</h2>
			<h3>検索例</h3>
			<p>「服」</p>
			<p>「服　メンズ」</p>
			<p>×「服メンズ」</p>
			<p><a href='<s:url action="BackAction" />'>前へ戻る</a></p>
		</div>

		<div class="footer">footer</div>
</body>
</html>