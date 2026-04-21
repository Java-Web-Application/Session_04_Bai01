<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý Đơn hàng - Saigon Lumière</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; background-color: #f4f4f4; }
        .container { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        h2 { color: #333; border-bottom: 2px solid #007bff; padding-bottom: 10px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #007bff; color: white; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        .status-ok { color: green; font-weight: bold; }
    </style>
</head>
<body>

<div class="container">
    <h2>Danh sách đơn hàng - Project RESSYNC</h2>

    <p>Thông báo từ hệ thống: <strong>${message}</strong></p>

    <table>
        <thead>
        <tr>
            <th>ID Đơn hàng</th>
            <th>Tên sản phẩm</th>
            <th>Trạng thái</th>
        </tr>
        </thead>
        <tbody>
        <%-- Giả sử bạn truyền một list 'orders' từ Controller --%>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td>${order.id}</td>
                <td>${order.name}</td>
                <td class="status-ok">Thành công</td>
            </tr>
        </c:forEach>

        <%-- Nếu list trống --%>
        <c:if test="${empty orders}">
            <tr>
                <td colspan="3" style="text-align: center;">Hiện chưa có đơn hàng nào được xử lý.</td>
            </tr>
        </c:if>
        </tbody>
    </table>
</div>

</body>
</html>