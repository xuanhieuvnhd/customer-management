<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thông tin khách hàng</title>
</head>
<body>
<h1>Thông tin khách hàng</h1>
<p>
    <a href="/customers">Quay lại danh sách khách hàng</a>
</p>
<table>
    <tr>
        <td>Họ tên: </td>
        <td>${requestScope["customer"].getName()}</td>
    </tr>
    <tr>
        <td>Hộp thư: </td>
        <td>${requestScope["customer"].getEmail()}</td>
    </tr>
    <tr>
        <td>Địa chỉ: </td>
        <td>${requestScope["customer"].getAddress()}</td>
    </tr>
</table>
</body>
</html>