<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản Lý Sản Phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

    <div class="container">
        <h2>Thêm Sản Phẩm Mới</h2>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<form:form action="/product/save" modelAttribute="products" method="post">
    <div class="form-group">
        <label for="id">ID sản phẩm:</label>
        <input type="text" class="form-control" id="id" name="id" path="id" required>
    </div>
     
    <div class="form-group">
        <label for="image">Hình ảnh:</label>
        <input type="text" class="form-control" id="image" name="image" path="image" required>
    </div>
    <div class="form-group">
        <label for="name">Tên sản phẩm:</label>
        <input type="text" class="form-control" id="name" name="name" path="name" required>
    </div>
    <div class="form-group">
        <label for="price">Giá:</label>
        <input type="number" step="0.01" class="form-control" id="price" name="price" path="price" required>
    </div>
    <div class="form-group">
        <label for="quantifier">Số lượng:</label>
        <input type="number" class="form-control" id="quantifier" name="quantifier" path="quantifier" required>
    </div>
    <div class="form-group">
        <label for="description">Mô tả:</label>
        <textarea class="form-control" id="description" name="description" path="description" rows="3" required></textarea>
    </div>
    
    <button type="submit" class="btn btn-primary">Lưu Sản Phẩm</button>
    
</form:form>

        

        <h2 class="mt-5">Danh Sách Sản Phẩm</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Hình ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Mô tả</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td>${product.id}</td>
                        <td><img src="${product.image}" alt="Image" style="width: 100px;"></td>
                        <td>${product.name}</td>
                        <td>${product.price}</td>
                        <td>${product.quantifier}</td>
                        <td>${product.description}</td>
                        <td>
                            
                            <form action="/products/delete/${product.id}" method="post" style="display:inline;">
   						 <button type="submit" class="btn btn-danger">Xóa</button>
							</form>
							<hr>
  				<a href="${pageContext.request.contextPath}/detail/${product.id}" >Chi Tiết</a>
                        </td>
                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
