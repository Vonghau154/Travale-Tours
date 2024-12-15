	package com.example.demo.Dao;
	
	import java.util.List;
	
	import org.springframework.data.jpa.repository.JpaRepository;
	import org.springframework.data.jpa.repository.Query;
	import org.springframework.data.repository.query.Param;
	
	import com.example.demo.entity.Detail;
	import com.example.demo.entity.Product;
	public interface DetailDao extends JpaRepository <Detail, Integer > {
	    @Query("SELECT d FROM Detail d WHERE d.product.id = :productId")
	    List<Detail> findByProductId(@Param("productId") int productId);
	}
