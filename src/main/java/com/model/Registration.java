/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.stereotype.Component;
/**
 *
 * @author shrey
 */
@Component
@Entity
public class Registration implements Serializable{
   @Id
   @GeneratedValue(strategy=GenerationType.IDENTITY)
   private String id;
   private String name,username,address,password,phoneno,role,gender;
   private boolean enabled; 

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getGender() {
        return gender;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }       
       public String getName(){
       return name;
    }
    public void setName(String name){
        this.name = name;
    }    
    public String getUsername(){
        return username;
    }    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getId(){
        return id;
    }
    public void setId(String id){
        this.id = id;
    }
    public String getAddress(){
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPhoneno(){
        return phoneno;
    }    
    public void setPhoneno(String phoneno) {
        this.phoneno = phoneno;
    }
 
}
