<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản Lý Chi Tiết Sản Phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

   <div class="container">
        <h2>Thêm Chi Tiết Sản Phẩm Mới</h2>
        
        <form:form action="/detail/save" modelAttribute="detail" method="post">
            <div class="form-group">
                <label for="product_id">ID Sản Phẩm:</label>
                <input type="hidden" name="product_id" value="${product.id}"> 
            </div>
            
            <div class="form-group">
                <label for="detail_name">Tên Chi Tiết:</label>
                <input type="text" class="form-control" id="detail_name" name="detailName" path="detailName" required>
            </div>
            
            <div class="form-group">
                <label for="detail_price">Giá Chi Tiết:</label>
                <input type="number" step="0.01" class="form-control" id="detail_price" name="detailPrice" path="detailPrice" required>
            </div>

            <div class="form-group">
                <label for="detail_time">Thời Gian:</label>
                <input type="text" class="form-control" id="detail_time" name="detailTime" path="detailTime" required>
            </div>

            <div class="form-group">
                <label for="detail_info">Thông Tin Chi Tiết:</label>
                <textarea class="form-control" id="detail_info" name="detailInfo" path="detailInfo" rows="3" required></textarea>
            </div>

            <div class="form-group">
                <label for="additional_image">Hình Ảnh Bổ Sung:</label>
                <input type="text" class="form-control" id="additional_image" name="additionalImage" path="additionalImage" required>
            </div>

            <button type="submit" class="btn btn-primary">Lưu Chi Tiết</button>
        </form:form>
   

        <h2 class="mt-5">Danh Sách Chi Tiết</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên chi tiết</th>
                    <th>Giá chi tiết</th>
                    <th>Thời gian</th>
                    <th>Thông tin chi tiết</th>
                    <th>Hình ảnh bổ sung</th>
                    <th>ID sản phẩm</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${details}" var="detail">
                    <tr>
                        <td>${detail.detailId}</td>
                        <td>${detail.detailName}</td>
                        <td>${detail.detailPrice}</td>
                        <td>${detail.detailTime}</td>
                        <td>${detail.detailInfo}</td>
                        <td><img src="${detail.additionalImage}" alt="Image" style="width: 100px;"></td>
                        <td>${detail.product.id}</td> <!-- Giả sử có thuộc tính product trong detail -->
                        <td>
                            <form action="/details/delete/${detail.detailId}" method="post" style="display:inline;">
                                <button type="submit" class="btn btn-danger">Xóa</button>
                            </form>
                            <hr>
                            <a href="${pageContext.request.contextPath}/details/${detail.detailId}">Chi Tiết</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
