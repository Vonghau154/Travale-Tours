package com.example.demo.Dao;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.entity.Product;


public interface ProductDao extends JpaRepository<Product, Long>{
	   @Query("SELECT p FROM Product p WHERE p.id = :id")
	    Product findByIdp(@Param("id") Long id);
}
