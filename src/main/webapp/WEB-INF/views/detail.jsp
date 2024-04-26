<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>상세페이지</h1>
    <hr>
    <table border="1">
        <tr>
            <th>작성자</th><td>${dto.writer}</td>
        </tr>
        <tr>
            <th>제목</th><td>${dto.title}</td>
        </tr>
        <tr>
            <th>내용</th><td>${dto.content}</td>
        </tr>
    </table>
    <a href="delete?bno=${dto.bno}">삭제하기</a>

</body>
</html>