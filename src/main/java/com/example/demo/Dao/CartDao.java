package com.example.demo.Dao;

import java.util.Collection;

import com.example.demo.entity.Product;

public interface CartDao  {

	Product add(long id);
	void remove (long id);
	Product update (long id, String qty);
	void clear();

	Collection<Product> getItems();
	int getCount();
	
	double getAmount();
}
