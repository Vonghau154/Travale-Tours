package com.example.demo.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.entity.Product;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Service
public class cartimpl implements CartDao {

    private final Map<Long, Product> cartItems = new HashMap<>();

    @Autowired
    private ProductDao productDao;

    @Override
    public Product add(long id) {
        Optional<Product> optionalProduct = productDao.findById(id);
        if (optionalProduct.isPresent()) {
            Product product = optionalProduct.get();
            cartItems.put(id, product); // Thêm sản phẩm vào giỏ hàng
            return product;
        }
        
        return null; // Trả về null nếu không tìm thấy sản phẩm
    }

    @Override
    public void remove(long id) {
        cartItems.remove(id); // Xóa sản phẩm khỏi giỏ hàng
    }

    @Override
    public Product update(long id, String qty) {
        // Cập nhật số lượng sản phẩm trong giỏ hàng (có thể cần thêm logic)
        if (cartItems.containsKey(id)) {
            Product product = cartItems.get(id);
            // Chuyển đổi qty từ String sang int và cập nhật
            int quantity = Integer.parseInt(qty);
            product.setQty(quantity);
            return product;
        }
        return null; // Trả về null nếu không tìm thấy sản phẩm
    }

    @Override
    public void clear() {
        cartItems.clear(); // Xóa tất cả sản phẩm trong giỏ hàng
    }

    @Override
    public Collection<Product> getItems() {
        return cartItems.values(); // Trả về danh sách sản phẩm trong giỏ hàng
    }

    @Override
    public int getCount() {
        return cartItems.size(); // Trả về số lượng sản phẩm trong giỏ hàng
    }

    @Override
    public double getAmount() {
        return cartItems.values().stream()
            .mapToDouble(product -> product.getPrice() * product.getQty()) // Tính tổng số tiền
            .sum();
    }
}
