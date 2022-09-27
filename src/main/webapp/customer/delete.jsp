<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Xoá khách hàng</title>
</head>
<body>
<h1>Xoá khách hàng</h1>
<p>
    <a href="/customers">Quay lại danh sách khách hàng</a>
</p>
<form method="post">
    <h3>Bạn có chắc muốn xoá không?</h3>
    <fieldset>
        <legend>Thông tin khách hàng</legend>
        <table>
            <tr>
                <td>Họ và tên: </td>
                <td>${requestScope["customer"].getName()}</td>
            </tr>
            <tr>
                <td>Hòm thư: </td>
                <td>${requestScope["customer"].getEmail()}</td>
            </tr>
            <tr>
                <td>Địa chỉ: </td>
                <td>${requestScope["customer"].getAddress()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Xoá khách hàng"></td>
                <td><a href="/customers">Quay lại danh sách khách hàng</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>