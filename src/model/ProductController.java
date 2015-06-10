package model;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;


@ManagedBean
public class ProductController {
	
	@EJB
	private ProductFacade productFacade;
	private String name;
	private Float price;
	private String description;
	private String tipo;
	private Product product;
	
	public String createProduct() {
		this.product = productFacade.createProduct(name, tipo, description, price);
		return "product"; 
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	

}