package com.example.demo.entity;

import java.io.Serializable;

import jakarta.persistence.*;
import lombok.*;
@SuppressWarnings("serial")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Accounts")  
public class Account implements Serializable{

    @Id
    @Column(name = "Username", length = 50)  
   String username;

    @Column(name = "Password", nullable = false, length = 255)  
     String password;

    @Column(name = "Fullname", nullable = false, length = 100)
    private String fullname;

    @Column(name = "Email", nullable = false, length = 100) 
    private String email;

    @Column(name = "Admin", nullable = false)  
     boolean admin;
	
	public String getRole() {
		if(this.admin)
			return "Admin";
		else
			return "Customer";
	}

}
