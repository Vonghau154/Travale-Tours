<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


 <!doctype html>
 <html lang="en">
   <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>Bootstrap demo</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   </head>
   <body> 
     <c:forEach var="detail" items="${details}">
     <br><br>
    <div class="container row">
      
      <div class="col-md-9 col-sm-12 d-flex justify-content-center ms-2 ">
        <div class=" w-75">
          <img src="${detail.additionalImage}" 
            class="img-fluid rounded-3 " alt="Rounded Image">
          <br>
          <br>
          <div class="card  mb-3 d-none d-md-block">
            <div class="card-body d-flex justify-content-center">
              <p class="fw-bold col-3 fs-5">Tư vấn tour</p>
              <p class="col-3 "><i class="bi bi-telephone-fill fs-4"></i>telephone</p>
              <p class="col-3 "><i class="bi bi-messenger fs-4"></i>
                Messeger
              </p>
              <!-- Button trigger modal -->
              <button type="button" class="btn btn-outline-warning mb-2" data-bs-toggle="modal"
                data-bs-target="#exampleModal">
                Form
              </button>
  
              <!-- Modal -->
              <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <jsp:include page="_mail.jsp"/>
                    </div>
                
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="container mt-4 d-none d-md-block">
            <h3> ${detail.detailName} </h3>
            <div class="d-flex justify-content-center ">
  
              <div id="carouselExampleAutoplaying" class="carousel slide w-75" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2022/07/den-luxor-768x432.jpg"
                      class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2022/07/du-thuyen-song-niles-768x432.jpg"
                      class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="https://dulichcoguu.com/wp-content/uploads/2022/07/oc-dao-siwa-ai-cap-768x432.jpg"
                      class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                  data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                  data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
            </div>
          </div>
          
  
        </div>
  
      </div>
      <div class="col-sm-3  justify-content-center row ms-1">
  
        <p class="fs-4 fw-bold">${detail.detailName}</p>
        <p>${detail.detailInfo}</p>
        <p class="text-danger fw-bold">Tuyến điểm: CAIRO – SA MẠC SAHARA- ỐC ĐẢO SIWA – CỐ ĐÔ LUXOR – ASWAN – SÔNG NILES
        </p>
        <p class="fst-italic">Fit Tour – Du lịch có Guu tự hào đưa hơn 320 Travel Mate từ Việt Nam đến các địa điểm nổi tiếng trên thế giới trong năm
          qua. Chúng tôi tự tin mang đến hành trình độc đáo, dịch vụ chất lượng với chi phí hợp lý nhất.</p>
        <br>
        <div class="col-6 text-center ">
          <p><i class="bi bi-airplane-fill fs-1 "></i></p>
          <p class="fw-bold">Hãng Bay</p>
          <p>Qatar / Emirates</p>
        </div>
        <div class="col-6 text-center">
          <p><i class="bi bi-calendar-check fs-1"></i></p>
          <p class="fw-bold">Thời Gian</p>
          <p>${detail.detailTime}</p>
        </div>
        <br>
        <div class="card ms-2" style="width: 24rem;">
          <div class="card-body"> 
            <h5 class="card-title"> <i class="bi bi-gem"></i>LUXURY SERVICE</h5>
            <br>
            <h5 class="card-subtitle mb-2 text-body-secondary">Giá từ</h5>
            <p class="card-text fs-3 fw-bold">${detail.detailPrice}</p>
            <a href="#" class="card-link"><i class="bi bi-messenger fs-1"></i></i></a>
            <a href="#" class="card-link"><i class="bi bi-telephone-fill fs-1"></i></a>
            <br>
            <button type="button" class="btn btn-outline-warning col-12">HOTLINE ZALO</button>
          </div>
        </div>
      </div>
  
  
      </div>
  
    
        <div class=" container col-12 justify-content-center">
          <div class="container mt-4 text-center">
              <p class="fs-4 fw-bold">Highlight tour du lịch </p>
              <img src="${detail.additionalImage}" class="img-fluid w-75 rounded mx-auto" alt="Bản đồ du lịch - Fit Tour Du lịch có Guu">
             
              <br>
              <p class="fs-5 text-start fst-italic"><i class="bi bi-caret-right-fill"></i> Thăm Đại kỳ quan thế giới, biểu tượng bất diệt của văn minh nhân loại: Kim Tự Tháp Kheops, Ginza, Tượng Nhân Sư Sphynx</p>
              <p class="fs-5 text-start fst-italic"><i class="bi bi-caret-right-fill"></i> Ngủ đêm tại resort truyền thống kiểu du mục của người Bebber</p>
              <p class="fs-5 text-start fst-italic"><i class="bi bi-caret-right-fill"></i> Ngắm ngân hà đầy sao Milky Way ở Ốc Đảo Siwa</p>
              <p class="fs-5 text-start fst-italic"><i class="bi bi-caret-right-fill"></i> 3 đêm du thuyền 5 sao trên con sông huyền thoại Niles</p>
              <p class="fs-5 text-start fst-italic"><i class="bi bi-caret-right-fill"></i> Đi thuyền buồm truyền thống Felluca kiểu Địa Trung Hải</p>
          </div>
          <br><br> <hr>
      </div>
      <div class="  col-md-7 col-12 d-flex ">
        <div class="container mt-4 text-center">
          <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed fs-5" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                        Ngày 1: Việt Nam - Cairo
                    </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body text-start">
                      <p>Hướng dẫn viên FIT Tour đón khách tại điểm hẹn sân bay trước giờ bay 3 tiếng.</p>
                      <li>Chuyến bay sẽ quá cảnh và nối chuyến đến sân bay Cairo – thành phố của văn minh cổ đại</li>
                      <li>Thông tin chuyến bay dự kiến transit tại Doha.</li>
                      <p>Đến Cairo, đoàn dùng bữa tối và nghỉ ngơi tại khách sạn.</p>
                      <img src="https://dulichcoguu.com/wp-content/uploads/2023/01/hanh-trinh-kham-pha-vung-dat-di-san-ai-cap-va-nha-gia-kim.jpg" class="img-fluid" alt="...">
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed fs-5" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Ngày 2: Cairo - Siwa
                    </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body text-start">
                   <p><strong>07:00</strong> Đoàn trả phòng khách sạn và thưởng thức bữa sáng thú vị tại khách sạn. Bắt đầu cuộc hành trình thú vị đến Siwa           </p>
                   <p><strong>11:30</strong> Thưởng thức bữa trưa hảo hạng tại nhà hàng địa phương trên đường đi, thêm hương vị địa phương vào trải nghiệm du lịch của bạn.           </p>
                   <p>Sau bữa trưa thỏa mãn, cuộc phiêu lưu tiếp tục.</p>
                   <p><strong>16:00</strong> Đến Siwa và khám phá pháo đài cổ ở Shali, ghi lại vẻ đẹp của hoàng hôn trên Ốc đảo Siwa đầy mê hoặc.           </p>
                   <p><strong>18:00</strong> Thưởng thức bữa tối ngon miệng tại nhà hàng duyên dáng, sau đó trở về khách sạn nghỉ ngơi và lấy lại sức khỏe.          </p>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed fs-5" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                        Ngày 3: Siwa - Sahara
                    </button>
                </h2>
                <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body text-start">
                      <p><strong>Buổi sáng</strong>  Bắt đầu ngày mới với bữa sáng thú vị tại khách sạn trước khi bắt đầu hành trình sâu hơn vào sa mạc Sahara.          </p>
                      <p><strong>07:00</strong> Bắt đầu hành trình khám phá Ốc đảo Siwa:          </p>
                      <li>Thăm <strong>Shati</strong> thành phố cổ của Siwa.</li>
                      <img src="https://dulichcoguu.com/wp-content/uploads/2022/11/ho-muoi-o-siwa-ai-cap.jpg" class="img-fluid" alt="...">
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed fs-5" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                        Ngày 4: Sahara - Alexandria
                    </button>
                </h2>
                <div id="flush-collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body text-start">
                      <div class="accordion-body text-start">
                        <p><strong>07:00</strong> Trở về khách sạn ở Siwa tắm mát, thu dọn đồ đạc, trả phòng và bắt đầu hành trình về thủ đô Cairo.           </p>
                        <p><strong>11:30</strong> Trên đường đến Cairo, đoàn dừng chân dùng bữa trưa tại nhà hàng địa phương ở Marsa Matrouh, sau đó tiếp tục hành trình. Trên đường đi, họ có cơ hội chiêm ngưỡng những phong cảnh rộng lớn và ngoạn mục.</p>
                        <p><strong>16:00</strong> Đến Alexandria, đoàn nhận phòng khách sạn để nghỉ ngơi xứng đáng.           </p>
                        <p><strong>18:00</strong> Thưởng thức bữa tối tại nhà hàng địa phương và thư giãn khám phá Alexandria.         </p>
                         </div>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header text-start">
                    <button class="accordion-button collapsed fs-5" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                        Ngày 5: Alexandria - Cairo
                    </button>
                </h2>
                <div id="flush-collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body text-start">
                      <p><strong>07:00</strong> Đoàn đứng dậy và thưởng thức bữa sáng thịnh soạn trước khi bắt đầu một ngày khám phá ở Alexandria:                    </p>
                      <li>Thư viện Alexandria: Thư viện toàn cầu đầu tiên trong lịch sử nhân loại, tự hào với hơn 8 triệu đầu sách và thu hút hàng nghìn học giả trên toàn thế giới đến nghiên cứu.                    </li>
                      <li>Thành Quaitbay: Một pháo đài quan trọng không chỉ đối với Ai Cập mà còn đối với toàn bộ khu vực Địa Trung Hải kể từ thế kỷ 15.</li>
                      <p>Bữa trưa được phục vụ tại Alexandria trước khi đoàn quay trở lại Cairo.</p>
                      <img src="https://dulichcoguu.com/wp-content/uploads/2023/01/du-khach-xem-hang-hoa-o-khu-cho-co-ai-cap.jpg" class="img-fluid" alt="...">  
                    </div>
                </div>
            </div>
        </div>
        <br><br> <hr>
    </div>

      </div>
      </c:forEach>
      
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
  </body>
 </html>