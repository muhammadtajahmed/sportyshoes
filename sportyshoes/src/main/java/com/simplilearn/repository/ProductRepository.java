package com.simplilearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.simplilearn.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	Product findById(long id);
}
