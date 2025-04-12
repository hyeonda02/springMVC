<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2025/04/11
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학사 정보 시스템</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f8fbff, #e2ebf0);
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #409eff;
            color: white;
            padding: 20px 40px;
            font-size: 28px;
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .login-btn {
            background-color: #ffffff;
            color: #409eff;
            border: 2px solid #ffffff;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #ffffff;
            color: #2c8be6;
        }

        .container {
            display: flex;
            justify-content: center;
            margin-top: 60px;
            gap: 40px;
            flex-wrap: wrap;
        }

        .card {
            background-color: #ffffff;
            width: 260px;
            padding: 30px 25px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-title {
            font-size: 20px;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .card-desc {
            font-size: 14px;
            color: #666;
            margin-top: 10px;
            min-height: 50px;
        }

        .submit-btn {
            margin-top: 20px;
            padding: 12px 24px;
            background-color: #409eff;
            color: white;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #2c8be6;
        }

    </style>
</head>
<body>

<div class="header">
    <div>학사 정보 시스템</div>
    <button class="login-btn">Login</button>
</div>

<div class="container">
    <div class="card">
        <div class="card-title">학년별 이수 학점 조회</div>
        <div class="card-desc">학년별로 이수한 학점을 확인할 수 있습니다.</div>
        <a href="<%= request.getContextPath() %>/courses" class="submit-btn">확인하기</a>
    </div>

    <div class="card">
        <div class="card-title">수강 신청하기</div>
        <div class="card-desc">과목 정보를 입력하여 수강 신청을 할 수 있습니다.</div>
        <a href="<%= request.getContextPath() %>/courses/create" class="submit-btn">신청하기</a>
    </div>

    <div class="card">
        <div class="card-title">수강 신청 조회</div>
        <div class="card-desc">2025년 2학기 수강신청 내역을 확인할 수 있습니다.</div>
        <a href="<%= request.getContextPath() %>/courses/nextcourse" class="submit-btn">조회하기</a>
    </div>
</div>

</body>
</html>



