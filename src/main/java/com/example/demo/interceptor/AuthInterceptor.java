package com.example.demo.interceptor;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;



import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.example.demo.entity.*;
import com.example.demo.service.SessionService;

@Service
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	SessionService session;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		Account user = (Account) session.get("user"); // lấy từ session
		String error = "";
		if (user == null) { // chưa đăng nhập
			error = "Please login!";
		}
		// không đúng vai trò
		else if (!user.isAdmin() && uri.startsWith("/admin")) {
			error = "Access denied!";
			System.out.println(user);
	
		}
		if (error.length() > 0) { // có lỗi
			session.set("security-uri", uri);
			response.sendRedirect("/dangnhap?error=" + error);
			return false;
		}
		System.out.println(user);
		return true;
	}
}
