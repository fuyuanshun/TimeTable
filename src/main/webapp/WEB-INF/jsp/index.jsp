<%@page isELIgnored="false"%>
<%@   page   contentType="text/html;charset=utf-8"%>
<%@ page   pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>作息时间表</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery.3.3.1.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
</head>
<body>
    <h2 class="text-center">作息时间表</h2>
    <table class="table table-hover" border="1">
        <tr>
            <th>日期/时间</th>
            <th>8:00-9:00</th>
            <th>9:00-12:00</th>
            <th>12:20-7:00</th>
            <th>7:20-凌晨</th>
        </tr>
        <tr>
            <th>Monday</th>
            <c:forEach var="thing" items="${monday}" >
                <th><c:out value="${thing.thing}" /></th>
            </c:forEach>
        </tr>
        <tr>
            <th>Tuesday</th>
            <c:forEach var="thing" items="${tuesday}" >
                <th><c:out value="${thing.thing}" /></th>
            </c:forEach>
        </tr>
        <tr>
            <th>Wednesday</th>
            <c:forEach var="thing" items="${wednesday}" >
                <th><c:out value="${thing.thing}" /></th>
            </c:forEach>
        </tr>
        <tr>
            <th>Thursday</th>
            <c:forEach var="thing" items="${thursday}" >
                <th><c:out value="${thing.thing}" /></th>
            </c:forEach>
        </tr>
        <tr>
            <th>Friday</th>
            <c:forEach var="thing" items="${friday}" >
                <th><c:out value="${thing.thing}" /></th>
            </c:forEach>
        </tr>
        <tr>
            <th>Saturday</th>
            <c:forEach var="thing" items="${saturday}" >
                <th><c:out value="${thing.thing}" /></th>
            </c:forEach>
        </tr>
        <tr>
            <th>Sunday</th>
            <c:forEach var="thing" items="${sunday}" >
                <th><c:out value="${thing.thing}" /></th>
            </c:forEach>
        </tr>
    </table>
<form action="" method="post" id="myform">
    <select name="date">
        <option value="1">Monday</option>
        <option value="2">Tuesday</option>
        <option value="3">Wednesday</option>
        <option value="4">Thursday</option>
        <option value="5">Friday</option>
        <option value="6">Saturday</option>
        <option value="7">Sunday</option>
    </select>
    <select name="time">
        <option value="1">8:00-9:00</option>
        <option value="2">9:00-12:00</option>
        <option value="3">12:20-7:00</option>
        <option value="4">7:20-凌晨</option>
    </select>
    <input type="text" name="thing" placeholder="每个时间段多次添加会覆盖"/>
    <input type="button" value="添加" id="button">
</form>
</body>
</html>