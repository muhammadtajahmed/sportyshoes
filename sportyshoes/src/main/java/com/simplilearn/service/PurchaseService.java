package com.simplilearn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.simplilearn.model.*;
import com.simplilearn.repository.PurchaseRepository;

@Service
@Transactional
public class PurchaseService {
	
	 @Autowired
	 private PurchaseRepository repo;
	 
	 public Purchase getPurchaseById(long id) {
		 return repo.findById(id);
	 }
	 
	 public List<Purchase> getAllItems() {
		 return repo.findAll();
	 }			
		
	 public List<Purchase> getAllItemsByUserId(long userId) {
		 return repo.getAllItemsByUserId(userId);
	 }	
		
	 public long updatePurchase(Purchase purchase) {
		 repo.save(purchase);
		 return purchase.getID();
	 }
	 
	 public void deletePurchase(long id) {
		 repo.deleteById(id);
	 }
}