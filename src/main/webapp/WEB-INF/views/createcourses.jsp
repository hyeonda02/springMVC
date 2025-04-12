<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2025/04/11
  Time: 2:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<html>
<head>
    <title>수강신청 하기</title>
    <style>

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f8fbff, #e2ebf0);
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 60px 20px;
        }

        form {
            background-color: #ffffff;
            padding: 40px 45px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        p {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            color: #34495e;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 12px 14px;
            border: 1px solid #dcdfe6;
            border-radius: 8px;
            font-size: 15px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #409eff;
            box-shadow: 0 0 5px rgba(64, 158, 255, 0.5);
            outline: none;
        }

        .form-errors {
            color: #e74c3c;
            font-size: 13px;
            margin-top: 6px;
        }

        button {
            display: block;
            width: 100%;
            padding: 14px;
            background-color: #409eff;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2c8be6;
        }
    </style>
</head>

<body>
<h2>수강신청 입력</h2>

<%--@elvariable id="course" type=""--%>
<form:form method="post" action="/courses/create" modelAttribute="course">
    <p>년도: <form:input path="year"/> <form:errors path="year"/></p>
    <p>학기: <form:input path="semester"/> <form:errors path="semester"/></p>
    <p>교과목명: <form:input path="courseName"/> <form:errors path="courseName"/></p>
    <p>교과구분: <form:input path="courseType"/> <form:errors path="courseType"/></p>
    <p>담당교수: <form:input path="professor"/> <form:errors path="professor"/></p>
    <p>학점: <form:input path="credit"/> <form:errors path="credit"/></p>

    <button type="submit">신청</button>
</form:form>

</body>
</html>

