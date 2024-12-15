package com.example.demo.controller;

import java.util.Collection;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.Dao.AccountDAO;
import com.example.demo.Dao.CartDao;
import com.example.demo.Dao.DetailDao;
import com.example.demo.Dao.ProductDao;
import com.example.demo.entity.Account;
import com.example.demo.entity.Detail;
import com.example.demo.entity.Product;
import com.example.demo.service.SessionService;

@Controller
public class homepage {
	Logger logger = LogManager.getLogger(homepage.class);
	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	
    @Autowired 
    private ProductDao productDao;

    @Autowired
    private CartDao cartService; 
    @Autowired
    private DetailDao detailDao; 

    @RequestMapping("/index")
    public String index(Model model) {
      
        model.addAttribute("products", productDao.findAll());
        return "index"; 
    }

    @GetMapping("/redirectPage1")
    public String redirectToRegisterPage() {
        return "redirect:/newPage1";
    }

    @GetMapping("/newPage1")
    public String newRegisterPage() {
        return "dangky"; 
    }

    @GetMapping("/redirectPage")
    public String redirectToLoginPage() {
        return "redirect:/newPage";
    }

    @GetMapping("/newPage")
    public String newLoginPage() {
        return "dangnhap";
    }
    @GetMapping("/cart")
    public String showCart(Model model) {
        Collection<Product> cartItems = cartService.getItems(); 
        model.addAttribute("cartItems", cartItems); 

       
        double totalAmount = cartItems.stream()
     
        		.mapToDouble(product -> product.getPrice()) 
        		.sum(); // Tính tổng
        model.addAttribute("amount", totalAmount); 

        return "cart"; 
    }


    // Thêm sản phẩm vào giỏ hàng
    @PostMapping("/cart/add/{id}")
    public String addToCart(@PathVariable("id") Long id) {
        cartService.add(id); 
        
        return "redirect:/cart";
    }
    @PostMapping("/cart/remove/{id}")
public String removecart(@PathVariable("id") Long id){	
    	cartService.remove(id);
    	return "redirect:/cart";
    	}
    @PostMapping("/cart/update/{id}")
    public String updateCart(@PathVariable("id") long id, String qty, RedirectAttributes redirectAttributes) {
        // Cập nhật số lượng sản phẩm trong giỏ hàng
        Product updatedProduct = cartService.update(id, qty);
        return "redirect:/cart"; 
    }
    

    @GetMapping("/details/{productId}")
    public String getDetailsByProductId(@PathVariable int productId, Model model) {
        List<Detail> details = detailDao.findByProductId(productId);
        
        if (details.isEmpty()) {
            model.addAttribute("message", "Không tìm thấy thông tin chi tiết cho sản phẩm này."); 
        } else {
            model.addAttribute("details", details);
        }

        return "detail"; 
    }
	@GetMapping("/account/logout")
	public String accountLogout() {
		Account accountLogin = (Account)session.get("user");
		if(accountLogin != null)
			session.set("user", null);
		return "/account/login";
	}
	@GetMapping("/dangnhap")
	public String showLoginForm(Model model) {
	    return "dangnhap"; // Trả về view login
	}

    @PostMapping("/dangnhap")
	public String login(Model model, @RequestParam("username") String username,
	        @RequestParam("password") String password) {
	    logger.info("User Login: " + username);
	    try {
	        Account user = dao.findByUsername(username);
	        // Kiểm tra xem người dùng có tồn tại không và mật khẩu có chính xác không
	        if (user == null || !user.getPassword().equals(password)) {
	            logger.warn("Login Fail: " + username);
	            model.addAttribute("message", "Invalid username or password!");
	        } else {
	            // Lưu thông tin người dùng vào session
	            session.set("user", user);
	            String uri = (String) session.get("security-uri");
	            logger.info("Login success: " + username);
	            
	            // Kiểm tra vai trò của người dùng
	            if (user.isAdmin()) {
	                if (uri != null) {
	                	System.out.println(uri);
	                    return "redirect:" + uri; // Chuyển hướng đến URI nếu có
	                } else {
	                    return "redirect:/admin"; // Trang admin mặc định
	                }
	            } else {
	                // Nếu là người dùng thường, có thể chuyển hướng đến trang chính hoặc thông báo
	                if (uri != null) {
	                    return "redirect:" + uri; 
	                } else {
	                    model.addAttribute("message", "Login succeed");
	                    return "redirect:/index"; // Trang chính cho người dùng thường
	                }
	            }
	        }
	    } catch (Exception e) {
	        logger.error("Error Login: " + username, e);
	        model.addAttribute("message", "Invalid username");
	    }
	    model.addAttribute("message", "Đăng Nhập Thất bại");
	    return "dangnhap";
	}



}
