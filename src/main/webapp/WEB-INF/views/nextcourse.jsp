<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2025/04/11
  Time: 2:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>수강신청 조회</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 900px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 14px;
            text-align: center;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: #f1f3f5;
            color: #34495e;
            font-weight: bold;
        }

        tr:hover {
            background-color: #f9fbfd;
        }

        .back-btn {
            display: block;
            width: 200px;
            margin: 30px auto 0;
            padding: 12px 20px;
            background-color: #409eff;
            color: white;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .back-btn:hover {
            background-color: #2c8be6;
        }

    </style>
</head>
<body>

<div class="container">
    <h2>${year}년 ${semester}학기 수강신청 내역</h2>

    <c:choose>
        <c:when test="${empty courses}">
            <p style="text-align: center;">수강신청 내역이 없습니다.</p>
        </c:when>
        <c:otherwise>
            <table>
                <thead>
                <tr>
                    <th>교과목명</th>
                    <th>교과구분</th>
                    <th>담당교수</th>
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
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>

    <a href="/courses/create" class="back-btn">새 수강신청 하기</a>
</div>

</body>
</html>

