<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2025/04/11
  Time: 2:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>수강 내역</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 40px 20px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            width: 90%;
            max-width: 900px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.05);
        }

        thead {
            background-color: #409eff;
            color: white;
        }

        th, td {
            padding: 16px;
            text-align: center;
            border-bottom: 1px solid #eaecef;
            font-size: 15px;
        }

        tbody tr:last-child td {
            border-bottom: none;
        }

        a {
            color: #409eff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.2s ease;
        }

        a:hover {
            color: #2c8be6;
        }

        .summary {
            background-color: #f1f3f5;
            font-weight: bold;
            color: #2c3e50;
        }
    </style>
</head>
<body>

<h2>수강 내역</h2>

<table>
    <thead>
    <tr>
        <th>년도</th>
        <th>학기</th>
        <th>취득 학점</th>
        <th>상세보기</th>
    </tr>
    </thead>
    <tbody>
    <c:set var="totalCredits" value="0"/>
    <c:forEach var="entry" items="${courseMap}">
        <c:set var="yearSemester" value="${entry.key}" />
        <c:set var="courses" value="${entry.value}" />

        <c:set var="year" value="${courses[0].year}" />
        <c:set var="semester" value="${courses[0].semester}" />

        <c:set var="groupCredits" value="0"/>
        <c:forEach var="c" items="${courses}">
            <c:set var="groupCredits" value="${groupCredits + c.credit}" />
            <c:set var="totalCredits" value="${totalCredits + c.credit}" />
        </c:forEach>

        <tr>
            <td>${year}</td>
            <td>${semester}</td>
            <td>${groupCredits}</td>
            <td>
                <a href="courses/detail?year=${year}&semester=${semester}">상세보기</a>
            </td>
        </tr>
    </c:forEach>

    <tr class="summary">
        <td colspan="2">총계</td>
        <td>${totalCredits}</td>
        <td></td>
    </tr>
    </tbody>
</table>

</body>
</html>

