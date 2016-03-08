<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User meals</title>
    <style>
        .green {
            color: green
        }

        .red {
            color: red
        }
    </style>
</head>
<body>
<table BORDER=1 CELLSPACING=1 CELLPADDING=3>
    <caption>User meals list:</caption>
    <tr>
        <td>Date</td>
        <td>Description</td>
        <td>Calories</td>
    </tr>
    <c:forEach items="${mealList}" var="mealList">
        <%--<jsp:useBean id="mealList" scope ="page" class="ru.javawebinar.topjava.model.UserMealWithExceed" />--%>
        <tr class="${mealList.exceed ? 'red' : 'green'}">
            <td>
                    <fmt:parseDate value="${mealList.dateTime}" pattern="y-M-dd'T'H:m" var="parsedDate"/>
                    <fmt:formatDate value="${parsedDate}" pattern="yyyy.MM.dd HH:mm"/>
            </td>
            <td>${mealList.description}</td>
            <td>${mealList.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

