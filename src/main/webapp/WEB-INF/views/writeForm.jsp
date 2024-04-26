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
    <h1>글 작성하기</h1>
    <hr>
    <form action="write" method="get">
        <table border="1">
             <tr>
             <th>작성자</th><td><input type="text" name="writer"></td>
             </tr>
             <tr>
             <th>제목</th><td><input type="text" name="title"></td>
             </tr>
             <tr>
             <th>내용</th><td><input type="text" name="content"></td>
             </tr>
             <tr>
             <th></th><td><input type="submit" value="등록"></td>
             </tr>
         </table>
     </form>
</body>
</html>