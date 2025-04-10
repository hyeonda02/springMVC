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
            font-family: 'Arial', sans-serif;
            background-color: #e6f1f7;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .header {
            background-color: yellow;
            padding: 20px;
            font-size: 28px;
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-left: 40px;
            padding-right: 40px;
        }

        .login-btn {
            background-color: #ffe599;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            font-weight: bold;
        }

        .container {
            display: flex;
            justify-content: center;
            margin-top: 60px;
            gap: 30px;
        }

        .card {
            background-color: white;
            width: 250px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .card img {
            width: 100%;
            height: 120px;
            object-fit: contain;
        }

        .card-title {
            font-size: 18px;
            font-weight: bold;
            margin-top: 15px;
        }

        .card-desc {
            font-size: 12px;
            color: gray;
            margin-top: 10px;
            height: 50px;
        }

        .submit-btn {
            margin-top: 15px;
            padding: 8px 20px;
            background-color: purple;
            color: white;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-weight: bold;
        }

        a.submit-btn {
            text-decoration: none;
            display: inline-block;
        }
    </style>
</head>
<body>

<div class="header">
    <div>학사 정보 시스템</div>
    <button class="login-btn">login</button>
</div>

<div class="container">
    <div class="card">
        <img src="https://cdn-icons-png.flaticon.com/512/2922/2922506.png" alt="icon1">
        <div class="card-title">학년별 이수 학점 조회</div>
        <div class="card-desc">학년별로 이수한 학점을 확인할 수 있는 기능입니다.</div>
        <a href="<%= request.getContextPath() %>/courses" class="submit-btn">submit</a>

    </div>

    <div class="card">
        <img src="https://cdn-icons-png.flaticon.com/512/2942/2942701.png" alt="icon2">
        <div class="card-title">수강 신청하기</div>
        <div class="card-desc">원하는 과목을 선택하여 수강 신청을 할 수 있습니다.</div>
        <a href="<%= request.getContextPath() %>/courses/create" class="submit-btn">submit</a>

    </div>

    <div class="card">
        <img src="https://cdn-icons-png.flaticon.com/512/1077/1077063.png" alt="icon3">
        <div class="card-title">수강 신청 조회</div>
        <div class="card-desc">내가 신청한 과목의 상태를 조회할 수 있습니다.</div>
        <a href="<%= request.getContextPath() %>/courses/nextcourse" class="submit-btn">submit</a>
    </div>
</div>

</body>
</html>

