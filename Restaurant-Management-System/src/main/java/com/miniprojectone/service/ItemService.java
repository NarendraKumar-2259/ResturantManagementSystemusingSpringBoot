package com.miniprojectone.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniprojectone.model.Items;
import com.miniprojectone.repo.ItemRepo;


@Service
public class ItemService {
	@Autowired
	ItemRepo repo;
	
	public Items save(Items items) {
		return repo.save(items);
	}
	public Items findById(Integer id) {
		return repo.findById(id).orElse(new Items());
	}
	public List<Items> findAll() {
		return repo.findAll();
	}
	public Items update(Items item) {
	
		return repo.save(item);
	}
	public void deleteById(Integer id) {
		repo.deleteById(id);
		
	}

}
