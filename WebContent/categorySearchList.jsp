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
	.listbox{
		width:100%;
		margin-top: 50px;
		display: flex;
  		justify-content: center;
  		align-items: center;
  		height: 100%;
  		text-align: center;
	}

	img{
	width: 200px;
	height: 200px;
	}

	.box{
	width: 25%;
	}
	</style>
<title>検索結果</title>
</head>
<body>
<body>
	<div class="listbox">

		<s:iterator value="searchDTO">
		<s:form action="ItemDetailSearchAction">
		<div class="box">
			<table>
				<tr>
					<td>
						<span>商品名：<s:property value="itemName" /></span><br>
					</td>
				</tr>
				<tr>
					<td>
					<img src ="<s:property value="itemImg" />">
					</td>
				</tr>

				<tr>
					<td>
						<input type="hidden" name="itemId" value='<s:property value="itemId" />'>
						<s:submit value="購入" />
					</td>
				</tr>
			</table>
	</div>
		</s:form>
		</s:iterator>

	</div>
</body>
</html>