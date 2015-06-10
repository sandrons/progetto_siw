package model;

import javax.persistence.*;
import java.util.*;

@Entity
public class Provider {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(nullable = false)
	private String name;	
	@Column(nullable = false)
	private String email;
	@Column
	private String phoneNumber;
	@Column
	private String vatin;
	
	@ManyToMany(fetch=FetchType.LAZY)
	private List<Product> listaProdotti;
	@OneToOne(fetch = FetchType.EAGER, cascade={CascadeType.PERSIST, CascadeType.REMOVE})
	private Address address;
	
	
	public Provider(){
		
	}
	
	public Provider(Long id, String name, String phoneNumber, String email, String vatin){
		this.id = id;
		this.name = name;
		this.email = email;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVatin() {
		return vatin;
	}
	public void setVatin(String vatin) {
		this.vatin = vatin;
	}
	
	public List<Product> getListaProdotti() {
		return listaProdotti;
	}
	public void setListaProdotti(List<Product> listaProdotti) {
		this.listaProdotti = listaProdotti;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
}
