<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home</title>
</head>
<body>
<div class="wordSearch">
<s:form action="WordSearchAction">
<s:textfield name="searchWord" label="検索欄"/>
<s:submit value="検索"/>
</s:form>
</div>
<div class="categoybox">
<div>服</div>
<div>家具</div>
<div>食品</div>
<div>日用品</div>
<div>家電製品</div>
</div>
</body>
</html>