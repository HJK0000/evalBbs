<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
    <h1>목록보기</h1>
    <hr>
    <div>  
        <table width="500" cellpadding="0" cellspacing="0" border="1">
        <tr>
            <td>번호</td><td>작성자</td><td>제목</td><td>작성일자</td>
        </tr>
        <c:forEach var="list" items="${list}">
        <tr>
            <td style="width:50px">${list.bno}</td>
            <td style="width:80px">${list.writer}</td>
            <td style="width:300px"><a href="detail?bno=${list.bno}">${list.title}</a></td>
            <td style="width:180px">${list.regdate}</td>
        </tr>    
        </c:forEach>    
        </table>
    </div>
        <a href="writeForm">글 작성하기</a>
</body>
</html>