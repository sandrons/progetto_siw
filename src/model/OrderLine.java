package model;

import java.util.*;
import javax.persistence.*;

@Entity
public class OrderLine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(nullable = false)
	private Float unitPrice;
	@Column(nullable = false)
	private Integer quantity;


	@ManyToOne(fetch = FetchType.EAGER)
	private Ordine order;
	@ManyToOne(fetch = FetchType.LAZY, cascade={CascadeType.PERSIST, CascadeType.REMOVE})
	private Product product;
	
	public OrderLine(){
		
	}
	
	public OrderLine(Long id, Float unitPrice, Integer quantity){
		this.id = id;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Float getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Float unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
}
