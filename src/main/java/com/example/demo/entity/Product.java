package com.example.demo.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "Product")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;          // Khóa chính tự động tăng

    private String image;     

    private String name;     

    private Double price;    

    private Integer quantifier; // Số ngày đi trong tour

    private String description; // Giới thiệu sản phẩm

    private Integer qty = 1;    // Số lượng đặt hàng, mặc định là 1
    @OneToMany(mappedBy = "product")
    private List<Detail> details;
}
