<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dang sách khách hàng</title>
</head>
<body>
<h1>Danh sách khách hàng</h1>
<p>
    <a href="/customers?action=create">Tạo mới khách hàng</a>
</p>
<table border="1" style="width: 100%" bgcolor="#faebd7">
    <tr>
        <td>Họ tên</td>
        <td>Hộp thư</td>
        <td>Địa chỉ</td>
        <td>Sửa</td>
        <td>Xoá</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="/customers?action=edit&id=${customer.getId()}">sửa</a></td>
            <td><a href="/customers?action=delete&id=${customer.getId()}">xoá</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>