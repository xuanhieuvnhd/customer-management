<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sửa thông tin khách hàng</title>
</head>
<body>
<h1>Sửa thông tin khách hàng</h1>
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
                <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
            </tr>
            <tr>
                <td>Hộp thư: </td>
                <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
            </tr>
            <tr>
                <td>Địa chỉ: </td>
                <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Lưu lại thông tin"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>