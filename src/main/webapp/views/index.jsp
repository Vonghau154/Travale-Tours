<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

    <nav class="navbar navbar-expand-lg bg-white    ">
        <div class="container-fluid col-md-7">
          <a class="navbar-brand text-warning  " href="#!">TRAVEL TOURS</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse ms-5  " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-3 mb-lg-0  ">
              <li class="nav-item dropdown position-static">
                <a class="nav-link dropdown-toggle text-warning fw-bold" href="#" id="navbarDropdown" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">
                  Tours
                </a>
                <div class="dropdown-menu w-100 mt-0" aria-labelledby="navbarDropdown" ">
                    <div class=" container">
                  <div class="row my-4">
                    <div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
                      <div class="list-group list-group-flush">
                        <p class="mb-0 list-group-item text-uppercase font-weight-bold ">
                       <strong>Hymalaya</strong> 
                        </p>
                        <a href="#" class="list-group-item list-group-item-action">Ladakh</a>
                        <a href="#" class="list-group-item list-group-item-action">Nepal</a>
                        <a href="#" class="list-group-item list-group-item-action">Tây Tạng</a>
                        <a href="#" class="list-group-item list-group-item-action">Bhutan</a>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
                      <div class="list-group list-group-flush">
                        <p class="mb-0 list-group-item text-uppercase font-weight-bold">
                          <strong>Trung Đông</strong> 
                        </p>
                        <a href="#" class="list-group-item list-group-item-action">Iran</a>
                        <a href="#" class="list-group-item list-group-item-action">Pakistan</a>
                       
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-3 mb-3 mb-md-0">
                      <div class="list-group list-group-flush">
                        <p class="mb-0 list-group-item text-uppercase font-weight-bold">
                          <strong>Silk Road</strong> 
                        </p>
                        <a href="#" class="list-group-item list-group-item-action">Tân Cương</a>
                        <a href="#" class="list-group-item list-group-item-action">Pakistan</a>
                        <a href="#" class="list-group-item list-group-item-action">Iran</a>
                        <a href="#" class="list-group-item list-group-item-action">Geogria</a>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                      <div class="list-group list-group-flush">
                        <p class="mb-0 list-group-item text-uppercase font-weight-bold">
                          <strong>Việt Nam</strong> 
                        </p>
                        <a href="#" class="list-group-item list-group-item-action">Quảng Bình</a>
                        <a href="#" class="list-group-item list-group-item-action">Tây Bắc</a>
                        <a href="#" class="list-group-item list-group-item-action">Đà Lạt</a>
                        <a href="#" class="list-group-item list-group-item-action">Sapa</a>
                      </div>
                    </div>
                  </div>
                </div>
          </div>
          </li>
          <li class="nav-item dropdown fw-bold">
            <a class="nav-link dropdown-toggle text-warning" href="#" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              Phong cách Guu
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-warning fw-bold" aria-current="page" href="#">Tour nước ngoài</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-warning fw-bold" href="#!gioithieu">Giới thiệu</a>
          </li>
          <!-- <h1>Đây là header</h1>
          <a href="#!">Trang chủ</a> 
          <a href="#!gioithieu">Giới thiệu</a> 
          <a href="#!lienhe">Liên hệ</a>
          <a href="#!khac">Khác</a>
     -->
          <li class="nav-item">
            <a class="nav-link text-warning fw-bold" href="#!lienhe">Liên hệ</a>
          </li>
          </ul>
          <!-- Button trigger modal -->
          <button type="button" class="btn btn-white text-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
              SIGN IN
          </button>
            <form action="/dangnhap" method="post">
</form>
 

    
          <!-- Modal -->
          <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                 
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
    
                <div class="modal-footer">
           
                <a href="/newPage""> <button type="button" class="btn btn-primary">Đăng nhập</button></a> 
               
                </div>
                
              </div>
            </div>
          </div>
        
          <!-- Button trigger modal -->
          
  <i class="bi bi-cart fs-5 ms-3 text-warning"></i>
        </div>
        </div>
      </nav>
    <div class="container-fluid">
      <nav class="col-md-12">
        <div class="card text-bg-dark">
          <img src="./img/picc.png" class="card-img" alt="...">
          <div class="card-img-overlay d-flex flex-column justify-content-center align-items-center text-center ">
  
            <p class="fs-1 card-title d-none d-md-block ">TRAVEL TOURS:  </p>
            <p class="card-text d-none d-md-block">T.
            </p>
            <p class="card-text d-none d-md-block">
            </p>
            <p class="card-text d-none d-md-block fw-bold"> </p>
            <div class="d-flex flex-wrap justify-content-center">
              <button type="button" class="btn btn-warning m-1">Warning</button>
              <button type="button" class="btn btn-secondary m-1">Secondary</button>
            </div>
          </div>
        </div>
        <br>
        <div class="col-12 ">
          <div id="cardCarousel" class="carousel slide" data-bs-ride="carousel">
            <p class="fs-3 fw-semibold text-center "> Những vùng đất thú vị để khám phá</p>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="d-flex justify-content-center ">
  
                  <div class="col-md-2 col-6 border border-white ">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-himalayas-2024-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 1</h5>
                    </div>
                  </div>
                  <div class="col-md-2 col-6 border border-white">
                    <img
                      src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-san-bac-cuc-quang-2024-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 2</h5>
                    </div>
                  </div>
                  <div class="col-md-2 col-6 border border-white">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-trung-quoc-2024-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 3</h5>
                    </div>
                  </div>
                  <div class="col-md-2 col-6 border border-white">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-xe-may-chau-au-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 4</h5>
                    </div>
                  </div>
                  <div class="col-md-2 col-6 border border-white">
                    <img
                      src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-con-duong-to-lua-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 5</h5>
                    </div>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="d-flex justify-content-center">
                  <div class="col-md-2 col-6 border border-white">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2022/11/tour-ai-cap-standee-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 6</h5>
                    </div>
                  </div>
                  <div class="col-md-2 col-6 border border-white">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-himalayas-2024-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 1</h5>
                    </div>
                  </div>
                  <div class="col-md-2 col-6 border border-white">
                    <img
                      src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-san-bac-cuc-quang-2024-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 2</h5>
                    </div>
                  </div>
                  <div class="col-md-2 col-6 border border-white">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-trung-quoc-2024-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body border border-white">
                      <h5 class="card-title">Card title 3</h5>
                    </div>
                  </div>
                  <div class="col-md-2 col-6 border border-white">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2024/02/standee-tour-xe-may-chau-au-240x300.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Card title 4</h5>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev " type="button" data-bs-target="#cardCarousel" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#cardCarousel" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
  
          </div>
        </div>
        <br>
        <hr>
        
        <div class=" col-12  bg-warning-subtle text-warning-emphasis ">
          
          <p class="fs-3 fw-semibold text-center "><i class="bi bi-star-fill"></i> SIGNATURE TOUR <i
              class="bi bi-star-fill"></i></p>
          <br>
        
          <div ng-controller="myCtrl">
    
   
            
            <c:forEach var="product" items="${products}">
            <div class="d-flex justify-content-center"  >
              <div class="card mb-3" style="max-width: 940px;">
                <div class="row g-0">
                  <div class="col-md-4">
                    <img src="${product.image}" class="img-fluid rounded-start" alt="...">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <p class="fs-5 fw-semibold text-center text-warning">${product.name}</p>
                      <br>
                      <p class="fs-5">${product.description}</p>
                      <p class="fs-5 card-text">Thời gian: ${product.quantifier} Ngày</p>
                      <div class="d-flex justify-content-end">
                        <p class="me-3 fs-4">Giá chỉ từ:</p>
                        <p class="fs-4 text-danger">${product.price} VND</p>
                      <form action="${pageContext.request.contextPath}/cart/add/${product.id}" method="post">
                                <button type="submit" class="btn btn-primary">Thêm</button>
                            </form>
                       


                      </div>
                       <a href="${pageContext.request.contextPath}/details/${product.id}" >Xem Chi Tiết</a>
                    </div>
                  </div>
                </div>
              </div>
            
          </div>  
          <br>
            </c:forEach>
  <!--
          <div class="d-flex justify-content-center">
            <div class="card mb-3" style="max-width: 940px;">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="https://dulichcoguu.com/wp-content/uploads/2024/03/tour-xe-may-chau-au-standee-2024.jpg"
                    class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
  
                    <p class="fs-5 fw-semibold  text-warning">MOTOR TOUR CHÂU ÂU 16 NGÀY DÃY ALPS: ĐỨC, ÁO, Ý, THỤY SĨ,
                      PHÁP </p>
                    <br>
                    <P class="fs-6">Chuyến tham quan được hỗ trợ đầy đủ hậu cần với Leader địa phương, leader người Việt,
                      Backup truck, thợ sửa xe đi cùng, vé tham quan trọn gói.</P>
                    <p class=" fs-5 card-text">Thời gian: LIÊN HỆ</p>
                    <div class="d-flex justify-content-end">
                      <p class="me-3 fs-4">Giá chỉ từ : </p> 
                      <p class="fs-4 text-danger">LIÊN HỆ</p>
                      <button class="btn btn-warning ms-4 mb-3 "><a class="link-offset-2 link-underline link-underline-opacity-0 text-white" href="./ctspdk.html">XEM CHI TIẾT</a></button>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
         
          <br>
          <div class="d-flex justify-content-center">
            <div class="card mb-3" style="max-width: 940px;">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="https://dulichcoguu.com/wp-content/uploads/2024/03/tour-ladakh-standee-2024.jpg"
                    class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <p class="fs-5 fw-semibold text-center text-warning">TOUR DU LỊCH LADAKH - CHUYẾN ĐI ROADTRIP ĐỘC ĐÁO
                    </p>
                    <br>
                    <P class="fs-5">Hành trình Roadtrip thú vị khám phá vùng đất Ladakh, tham quan các thánh hồ Pangong,
                      Tso Moriri, cưỡi lạc đã ở thung lũng Nubra,…</P>
                    <p class=" fs-5 card-text">Thời gian: 10 ngày 9 đêm</p>
                    <div class="d-flex justify-content-end"> 
                      <p class="me-3 fs-4">Giá chỉ từ : </p> 
                      <p class="fs-4 text-danger">46.990.000</p>
                      <button class="btn btn-warning ms-4 mb-3 "><a class="link-offset-2 link-underline link-underline-opacity-0 text-white" href="./ctsp.html">XEM CHI TIẾT</a></button>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
          <div class="d-flex justify-content-center">
            <div class="card mb-3" style="max-width: 940px;">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="https://dulichcoguu.com/wp-content/uploads/2024/03/tour-maroc-standee-2024.jpg"
                    class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
  
                    <p class="fs-5 fw-semibold text-center text-warning">TOUR MAROC 12 NGÀY 11 ĐÊM - HÀNH TRÌNH XỨ CỔ TÍCH
                    </p>
                    <br>
                    <P class="fs-5">Cắm trại ở sa mạc Sahara ngắm trời sao, tham quan thành phố xanh Chefchaouen, khám phá
                      cố đô Fes, Marrakech,…</P>
                    <p class=" fs-5 card-text">Thời gian: 10 ngày 9 đêm</p>
                    <div class="d-flex justify-content-end"> 
                      <p class="me-3 fs-4">Giá chỉ từ : </p> 
                      <p class="fs-4 text-danger">84.500.000</p>
                      <button class="btn btn-warning ms-4 mb-3 "><a class="link-offset-2 link-underline link-underline-opacity-0 text-white" href="./ctsp.html">XEM CHI TIẾT</a></button>
                   
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div><br> -->
          <div class="d-flex justify-content-center">
            <button class="btn btn-warning ms-4 mb-3 text-white fw-bold">XEM LỊCH TRÌNH TOURS CỤ THỂ </button>
          </div>
        </div>
        <br>
        <hr>
        <div class="d-flex justify-content-center">
          <div class="col-8">
            <p class="fs-2 fw-bold">Hành trình Ladakh cùng TRAVELS TOURS</p>
            <button class="btn btn-warning ms-4 mb-3 text-white fw-bold">Hành trình tour bằng xe máy </button><br>
            <button class="btn btn-secondary ms-4 mb-3 text-white fw-bold">Xem lịch trình tour trên kênh</button>
          </div>
          <div class="col-4 ">
            <div class="embed-responsive embed-responsive-16by9 d-none d-md-block">
              <iframe width="460" height="250" src="https://www.youtube.com/embed/yfB3hqSosIw?si=Opeb2BUkN_CpmLs2" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
          </div>
        </div>
        <br><br>
        <hr>
        <div class="d-flex justify-content-center">
          <div class="card text-bg-dark">
            <img src="./img/picc3.png" class="card-img" alt="...">
            <div class="card-img-overlay ">
              <div class="position-absolute bottom-0 start-0 ms-5">
                <h5 class="card-title fs-4 fw-bold ">Đi du lịch nước ngoài 2024 ở đâu vui ?</h5>
                <p class="card-text d-none d-md-block">Những ý tưởng để bắt đầu kế hoạch du lịch của bạn—chỉ cần lưu lại
                  những gì bạn yêu thích và gọi cho chúng tôi chuẩn bị</p>
                <button class="btn btn-secondary mb-2">XEM NGAY NÀO</button>
              </div>
            </div>
          </div>
        </div>
        <br> <br>
        <hr>
        <p class="fs-4 ms-5 text-center fw-bold">Điểm đến được yêu thích</p>
        <div class="row justify-content-center">
          <div class="col-md-6 d-flex justify-content-center">
            <div class="card text-bg-dark w-75">
              <img src="./img/picc4.png" class="card-img img-fluid" alt="...">
              <!-- Thêm lớp img-fluid để hình ảnh fit với khung -->
              <div class="card-img-overlay">
                <div class="d-flex flex-column align-items-center">
                  <br>
                  <h5 class="card-title fs-4 fw-bold mb-0">Himalayas</h5>
                  <br><br>
                  <button class="btn btn-secondary">XEM NGAY NÀO</button>
                </div>
              </div>
  
            </div>
  
          </div>
          <div class="col-md-6 d-flex justify-content-center">
            <div class="card text-bg-dark w-75">
              <img src="./img/picc5.png" class="card-img img-fluid" alt="...">
              <!-- Thêm lớp img-fluid để hình ảnh fit với khung -->
              <div class="card-img-overlay">
                <div class="d-flex flex-column align-items-center">
                  <br>
                  <h5 class="card-title fs-4 fw-bold mb-0">Trung Đông</h5>
                  <br><br>
                  <button class="btn btn-secondary">XEM NGAY NÀO</button>
                </div>
              </div>
            </div>
          </div>
        </div>
  
  
    </div>
    <br>
    <hr>
    <div class="d-flex justify-content-center">
      <div class="col-10 d-none d-md-block">
        <div id="cardCarousel" class="carousel slide p-3 mb-2 bg-info-subtle" data-bs-ride="carousel">
  
          <div class="carousel-inner ">
            <div class="carousel-item active">
              <div class="d-flex justify-content-center ">
  
                <div class="col-md-2 col-6 ">
  
                  <div class="card-body">
                    <h5 class="card-title">Giá trị của chuyến đi</h5>
                    <p>Dù là hành trình đến đâu cùng chúng tôi, thương hiệu FIT Tour tự tin mang đến hành trình du lịch có
                      GUU dành cho bạn.</p>
                  </div>
                </div>
                <div class="col-md-2 col-6  w-25">
                  <div class="card" style="width: 18rem;">
                    <img
                      src="https://dulichcoguu.com/wp-content/uploads/2022/11/hanh-trinh-tren-day-himalayas-fit-tour-2022-768x432.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <p class="fw-bold">Kinh nghiệm dày dặn</p>
                      <p class="card-text">Tổ chức thành công 57 chuyến đi Himalayas – Trung Đông – Bắc Phi, 120 đoàn khởi
                        hành trong năm qua</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-2 col-6 w-25">
                  <div class="card" style="width: 18rem;">
                    <img
                      src="https://dulichcoguu.com/wp-content/uploads/2022/11/buoi-trao-doi-va-tu-van-truoc-chuyen-di-trek-everest-base-camp-768x432.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <p class="fw-bold">Đi cùng chuyên gia</p>
                      <p class="card-text">Fit Tour đã cùng Kami Rita, người nắm kỷ lục 26 lần chinh phục Everest trên
                        hành trình EBC.</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-2 col-6  w-25">
                  <div class="card" style="width: 18rem;">
                    <img
                      src="https://dulichcoguu.com/wp-content/uploads/2022/11/doan-khach-fit-tour-check-in-diem-de-everest-base-camp-768x432.jpg"
                      class="card-img-top" alt="...">
                    <div class="card-body">
                      <p class="fw-bold">Chinh phục vùng đất của giấc mơ</p>
                      <p class="card-text">Dãy Himalayas, Khu vực Trung Đông – Con đường tơ lụa, Châu Phi,… và nhiều vùng
                        đất khác.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
    <hr>
    <br>
    <div class="d-flex justify-content-center col-12">
      <div class="card text-bg-dark">
        <img src="./img/picc6.png" class="card-img" alt="...">
        <div class="card-img-overlay ">
          <p class="fs-5 d-none d-md-block">Chỉ riêng đoàn của bạn</p>
          <h5 class="card-title fs-4 ">Thiết kế tour riêng (Private Tour)</h5>
          <p class="card-text fs-5 d-none d-md-block">Bạn sẽ được lên chương trình bởi các Local Experiences Trip Planner
          </p>
          <p class="card-text fs-5 d-none d-md-block">Hành trình được thiết kế riêng theo sở thích, nhu cầu,</p>
          <p class="card-text fs-5 d-none d-md-block">“Guu” đi chơi của bạn. Chi phí hợp lý và tiết kiệm. </p>
          <button class="btn btn-outline-light fw-bold fs-4">Lên Plan Ngay</button>
        </div>
  
      </div>
  
    </div>
    <hr>
    
    <div class="col-12">
      <div id="cardCarousel" class="carousel slide" data-bs-ride="carousel">
        <p class="fs-3 fw-semibold text-center"> Những Đối Tác Của Chúng Tôi</p>
        <hr>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="d-flex justify-content-center ">
  
              <div class="col-md-2 col-6  ">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
              <div class="col-md-2 col-6 ">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo-2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
              <div class="col-md-2 col-6">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo-1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
              <div class="col-md-2 col-6 ">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/images1.png" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
              <div class="col-md-2 col-6 ">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo4.jpg" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="d-flex justify-content-center">
              <div class="col-md-2 col-6 ">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
              <div class="col-md-2 col-6 ">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo-2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
              <div class="col-md-2 col-6">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo-1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
              <div class="col-md-2 col-6 e">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo4.jpg" class="card-img-top" alt="...">
                <div class="card-body ">
  
                </div>
              </div>
              <div class="col-md-2 col-6">
                <img src="https://dulichcoguu.com/wp-content/uploads/2021/08/logo-2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
  
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <button class="carousel-control-prev " type="button" data-bs-target="#cardCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#cardCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
        <hr><br>
      </div>
    </div>


    </nav>
    
    </div>
  
    </div>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
      <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <!-- Popper JS -->
  <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>