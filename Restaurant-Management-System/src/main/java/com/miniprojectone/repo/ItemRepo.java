package com.miniprojectone.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.miniprojectone.model.Items;

@Repository
public interface ItemRepo extends JpaRepository<Items, Integer> {

}
