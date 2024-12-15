package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Dao.DetailDao;
import com.example.demo.Dao.ProductDao;
import com.example.demo.entity.Detail;
import com.example.demo.entity.Product;

@Controller

public class Adminpage {
	@Autowired 
	ProductDao Pdao;
    @Autowired
    private DetailDao detailDao; 
	@RequestMapping("/admin")
	public String index(Model model, @ModelAttribute("products") Product po) {
		model.addAttribute("products", Pdao.findAll() );
		return "admin";
	}
	@PostMapping("/product/save")
	public String saveproduct(Model model,@Validated @ModelAttribute("products") Product po) {
	Pdao.save(po);

	model.addAttribute("products", Pdao.findAll() );
	
		return "redirect:/admin";
	}
	   @PostMapping("/products/delete/{id}")
	   public String removecart(@PathVariable("id") Long id){	
	       Pdao.deleteById(id);
	       	return "redirect:/admin";
	       	}
	    @GetMapping("/detail/{productId}")
	    public String getDetailsByProductId(@PathVariable int productId, Model model) {
	        List<Detail> details = detailDao.findByProductId(productId);
	        
	        if (details.isEmpty()) {
	            model.addAttribute("message", "Không tìm thấy thông tin chi tiết cho sản phẩm này."); 
	        } else {
	            model.addAttribute("details", details);
	        }

	        return "admindetail"; 
	    }
		@PostMapping("/detail/save")
		public String savedetail(Model model,@Validated @ModelAttribute("detail") Detail dt) {
		detailDao.save(dt);

		model.addAttribute("products", Pdao.findAll() );
		
			return "redirect:/admin";
		}

}
