package com.miniprojectone.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Items {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	private String name;
	private String type;
	private String quantity;
	private String Price;

	public Items() {
		// TODO Auto-generated constructor stub
	}

	
	public Items(int id, String name, String type, String quantity, String price) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.quantity = quantity;
		Price = price;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		Price = price;
	}


	@Override
	public String toString() {
		return "Items [id=" + id + ", name=" + name + ", type=" + type + ", quantity=" + quantity + ", Price=" + Price
				+ "]";
	}
	
	
}
