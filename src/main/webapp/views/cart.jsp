<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Giỏ hàng</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>

    <style>

    </style>
</head>
<body>

<section class="h-100 gradient-custom">
<a href="/index" class="text-body"><i class="fas fa-long-arrow-alt-left me-2"></i>Quay lại</a>
  <div class="container py-5">
    <div class="row d-flex justify-content-center my-4">
      <div class="col-md-8">
        <div class="card mb-4">
          <div class="card-header py-3">
            <h5 class="mb-0">Giỏ hàng - ${cartItems.size()} sản phẩm</h5>
            
          </div>
          <div class="card-body">
            <!-- Single item -->
            <c:forEach var="cart" items="${cartItems}">
              <div class="row">
                <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                  <!-- Image -->
                  <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                    <img src="${cart.image}" class="w-100" alt="${cart.name}" />
                    <a href="#!">
                      <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                    </a>
                  </div>
                  <!-- Image -->
                </div>

                <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                  <!-- Data -->
                  <p><strong>${cart.name}</strong></p>
                  <p>Giá: ${cart.price}</p>
                  <form method="POST" action="/cart/update/${cart.id}">
                    <div class="d-flex mb-4" style="max-width: 300px">
                      <button class="btn btn-primary px-3 me-2"
                        onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                        <i class="fas fa-minus">-</i>
                      </button>
                      <div class="form-outline">
                        <input id="form1" min="0" name="qty" value="${cart.qty}" type="number" class="form-control" />
                      </div>
                      <button class="btn btn-primary px-3 ms-2"
                        onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                        <i class="fas fa-plus">+</i>
                      </button>
                    </div>
                  </form>
                  <form method="POST" action="/cart/remove/${cart.id}">
                    <button type="submit" class="btn btn-danger btn-sm">
                      <i class="fas fa-trash"></i> Xóa
                    </button>
                  </form>
                </div>

                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                  <!-- Total -->
                  <p class="text-start text-md-center">
                    <strong>Tổng cộng: ${cart.price * cart.qty}</strong>
                  </p>
                </div>
              </div>
              <hr class="my-4" />
            </c:forEach>
          </div>
        </div>
 
        <div class="card mb-4 mb-lg-0">
          <div class="card-body">
            <p><strong>Chúng tôi chấp nhận</strong></p>
            <img class="me-2" width="45px" src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg" alt="Visa" />
            <img class="me-2" width="45px" src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg" alt="American Express" />
            <img class="me-2" width="45px" src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg" alt="Mastercard" />
            <img class="me-2" width="45px" src="https://th.bing.com/th?id=OIP.08pbRxr6BpSE6zsBpVVN_wHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2" alt="PayPal" />
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card mb-4">
          <div class="card-header py-3">
            <h5 class="mb-0">Tóm tắt</h5>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                Tổng giá sản phẩm
                <span>${amount}</span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                Phí vận chuyển
                <span>Miễn phí</span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                <div>
                  <strong>Tổng tiền</strong>
                  <strong><p class="mb-0">(bao gồm VAT)</p></strong>
                </div>
                <span><strong>${amount}</strong></span>
              </li>
            </ul>
            <button type="button" class="btn btn-primary btn-lg btn-block">Thanh toán</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>
