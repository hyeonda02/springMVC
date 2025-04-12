<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2025/04/11
  Time: 2:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>${year}년 ${semester}학기 수강 상세</title>
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

        .summary {
            background-color: #f1f3f5;
            font-weight: bold;
            color: #2c3e50;
        }
    </style>
</head>
<body>

<h2>${year}년 ${semester}학기 수강 상세</h2>

<table>
    <thead>
    <tr>
        <th>교과목명</th>
        <th>구분</th>
        <th>담당 교수</th>
        <th>학점</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses}">
        <tr>
            <td>${course.courseName}</td>
            <td>${course.courseType}</td>
            <td>${course.professor}</td>
            <td>${course.credit}</td>
        </tr>
    </c:forEach>
    <tr class="summary">
        <td colspan="3">총 학점</td>
        <td>${totalCredits}</td>
    </tr>
    </tbody>
</table>

</body>
</html>

