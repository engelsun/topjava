<%--
  Created by IntelliJ IDEA.
  User: engelsun
  Date: 6/6/2017
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meal List</title>
    <style>
        .normal {
            color: forestgreen;
        }

        .exceed {
            color: darkred;
        }
    </style>
</head>
<body>
<section>
    <h2><a href="index.html">Home</a></h2>
    <h2 align="center">Meals List</h2>
    <table align="center" border="1" cellpadding="10" cellspacing="0">
        <thead align="center">
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
        </thead>
        <c:forEach items="${meals}" var="meals">
            <jsp:useBean id="meals" scope="page" type="ru.javawebinar.topjava.model.MealWithExceed"/>
            <tr class="${meals.exceed ? 'exceed' : 'normal'}" align="center">
                <td>
                    <fmt:parseDate value="${meals.dateTime}" pattern="y-M-dd'T'H:m" var="parseDate"/>
                    <fmt:formatDate value="${parseDate}" pattern="yyyy.HH.dd HH:mm"/>
                </td>
                <td>${meals.description}</td>
                <td>${meals.calories}</td>
            </tr>
        </c:forEach>
    </table>
</section>
</body>
</html>
