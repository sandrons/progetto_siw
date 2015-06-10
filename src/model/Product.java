package model;

import java.util.List;

import javax.persistence.*;

@Entity
@NamedQuery(name="retrieveProviders", query="SELECT pp.product_id FROM product_provider pp WHERE pp.product_id = :id")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(nullable = false)
	private String name;
	@Column
	private String tipo;
	@Column
	private String description;
	@Column(nullable = false)
	private Float price;

	
	 
	@OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
	private List<OrderLine> lineeOrdine;
	@ManyToMany(fetch=FetchType.LAZY)
	private List<Provider> listaProvider;
	
	public Product(){
		
	}
	
	public Product(Long id, String name, Float price){
		this.id = id;
		this.name = name;
		this.price = price;
		
	}
	
	public Product(String name, String tipo, String description, Float price){
		this.id = id;
		this.name = name;
		this.tipo = tipo;
		this.description = description;
		this.price = price;
		
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}

	public List<OrderLine> getLineeOrdine() {
		return lineeOrdine;
	}

	public void setLineeOrdine(List<OrderLine> lineeOrdine) {
		this.lineeOrdine = lineeOrdine;
	}

	public List<Provider> getListaProvider() {
		return listaProvider;
	}

	public void setListaProvider(List<Provider> listaProvider) {
		this.listaProvider = listaProvider;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

}
