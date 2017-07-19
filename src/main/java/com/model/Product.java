/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

/**
 *
 * @author shrey
 */
@Component
@Entity
public class Product {
        @Id
	private String productid;
	//@Column(name="pname")
	private String productname;
	private String productprice;
	private String description;
	public String getProductid(){
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductprice() {
		return productprice;
	}
	public void setProductprice(String productprice) {
		this.productprice = productprice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
