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
	p{
	text-align: center;
	}

	table{

	    width:100%;
		display: flex;
  		justify-content: center;
  		align-items: center;

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
<title>購入確認</title>
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

<p>以下の内容で購入します</p>
			<s:form action="BuyItemConfirmAction">
			<table>
				<tr>
					<td>商品名</td>
					<td><s:property value="#session.itemName" /></td>
				</tr>
				<tr>
					<td><img src='<s:property value="#session.itemImg" />'></td>
				</tr>
				<tr>
					<td>値段</td>
					<td><s:property value="#session.totalPrice" /><span>円</span></td>
				</tr>
				<tr>
					<td>購入個数</td>
					<td><s:property value="#session.count" /><span>個</span></td>
				</tr>
				<tr>
					<td>支払い方法</td>
					<td><s:property value="#session.pay" /></td>
				</tr>
				<tr>
					<td>
					<s:submit value="購入完了"/><br>
					</td>
				</tr>
			</table>
			</s:form>

			        <div class="footer">footer</div>
</body>
</html>