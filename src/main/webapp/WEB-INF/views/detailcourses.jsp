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
      table {
        width: 80%;
        border-collapse: collapse;
        margin: 30px auto;
      }
      th, td {
        border: 1px solid black;
        padding: 10px;
        text-align: center;
      }
      th {
        background-color: #4CAF50;
        color: white;
      }
      .summary {
        background-color: yellow;
        font-weight: bold;
      }
    </style>
</head>
<body>

<h2 style="text-align:center;">${year}년 ${semester}학기 수강 상세</h2>

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
