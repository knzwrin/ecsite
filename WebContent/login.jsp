<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:form action="LoginAction">
<s:textfield name="username"/>
<s:password name ="password"/>
<s:submit value="ログイン"/>
</s:form>

<s:form action="CreateUserAction">
<s:submit value="新しくアカウントをつくる"/>
</s:form>
</body>
</html>