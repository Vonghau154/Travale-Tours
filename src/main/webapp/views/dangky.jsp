<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
  </head>
  <body ng-controller="myCtrl">
    <section class="vh-100" style="background-color: #eee;">
      <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-lg-12 col-xl-11">
            <div class="card text-black" style="border-radius: 25px;">
              <div class="card-body p-md-5">
                <div class="row justify-content-center">
                  <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
    
                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
    
                    <form class="mx-1 mx-md-4" name="formUser" novalidate>
                      <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                          <div data-mdb-input-init class="form-outline flex-fill mb-0">
                              <label class="form-label" for="form3Example1c">Your Name</label>
                              <input name="hoten" type="text" id="form3Example1c" class="form-control" ng-model="fullname" required/>
                              <span ng-show="formUser.hoten.$touched && formUser.hoten.$invalid">Họ tên không hợp lệ</span>
                          </div>
                      </div>
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                        <div data-mdb-input-init class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example3c">Your Email</label>
                          <input name="email" type="email" id="form3Example3c" class="form-control" ng-model="email" required/>
                          <span ng-show="formUser.email.$touched && formUser.email.$invalid">Email không hợp lệ</span>
                        </div>
                      </div>
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                        <div data-mdb-input-init class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example4c">Password</label>
                          <input name="password" type="password" id="form3Example4c" class="form-control" ng-model="password" required/>
                          <span ng-show="formUser.password.$touched && formUser.password.$invalid">Mật khẩu không hợp lệ</span>
                        </div>
                      </div>
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                        <div data-mdb-input-init class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example4cd">Repeat your password</label>
                          <input name="repeatPassword" type="password" id="form3Example4cd" class="form-control" ng-model="repeatPassword" required/>
                          <span ng-show="formUser.repeatPassword.$touched &&  formUser.repeatPassword.$invalid ">Vui lòng nhập lại </span>
                          <span ng-show="formUser.repeatPassword.$touched && password !== repeatPassword">Mật khẩu nhập lại không khớp</span>
                        </div>
                      </div>
                      
                      <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                        <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-warning btn-lg">Register</button>
                      </div>

                      <table class="table ">
                        <tr>
                          <th>Thông tin</th>
                          <th>Kết quả kiểm lỗi</th>
                        </tr>
                        <tr>
                          <td>Họ tên</td>
                          <td>{{fullname}}</td>
                        </tr>
                        <tr>
                          <td>Email:</td>
                          <td>{{email}}</td>
                        </tr>
                        <tr>
                          <td>Password:</td>
                          <td>{{password}}</td>
                        </tr>
                        <tr>
                          <td>repeatPassword:</td>
                          <td>{{repeatPassword}}</td>
                        </tr>
                      </table>
                    </form>
                  </div>

                  <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                      class="img-fluid" alt="Sample image">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
    <script>
      // AngularJS app module
      var app = angular.module('myApp', []);
      app.controller('myCtrl', function($scope) {
        // controller logic here if needed
      });
    </script>
  </body>
</html>