<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购买计算</title>
</head>
<body>
<div style="width: 500px;height: 350px;margin:0 auto; border: 2px solid;border-radius: 10px;text-align: center">
<form action="/buy" method="post">
    <h1 align="center">购买计算:</h1>
    <br>
    请输入价格:
    <br>
    <input type="number" name="price">
    <br>
    请输入数量:
    <br>
    <input type="number" name="num">
    <br>
    结果为:
    <br>
    <%
        if (session.getAttribute("result") == null) {
    %>
    <p>￥0</p>
    <%
    } else {
    %>
    <p>￥<%=session.getAttribute("result")%>.0
    </p>
    <%
        }
    %>
    <input type="submit" value="点击计算">
</form>
</div>
</body>
</html>
