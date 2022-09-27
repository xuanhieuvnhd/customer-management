<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tạo mới khách hàng</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Tạo khách hàng mới</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/customers">Quay lại danh sách khách hàng</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin khách hàng</legend>
        <table>
            <tr>
                <td>Họ và tên: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Hòm thư: </td>
                <td><input type="text" name="email" id="email"></td>
            </tr>
            <tr>
                <td>Địa chỉ: </td>
                <td><input type="text" name="address" id="address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Tạo mới"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
