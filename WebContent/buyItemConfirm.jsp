<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購入確認</title>
</head>
<body>
<p>以下の内容で購入します</p>
			<s:form action="BuyItemConfirmAction">
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
			</s:form>
</body>
</html>