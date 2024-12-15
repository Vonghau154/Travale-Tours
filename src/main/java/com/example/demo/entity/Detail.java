package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Detail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer detailId;
 
    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;
    
    private String detailName;  // Thêm trường này
    private int detailPrice;    // Thêm trường này
    private String detailTime;  // Thêm trường này
    private String detailInfo;
    private String additionalImage;
}
