package model;

import javax.persistence.*;

import java.util.*;

@Entity
@NamedQuery(name = "visualizzaOrdine", query = "SELECT o.id FROM Ordine o WHERE o.customer.id= :id")
public class Ordine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date creationTime;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private Customer customer;
	@OneToMany(mappedBy = "order", fetch=FetchType.EAGER, cascade={CascadeType.PERSIST, CascadeType.REMOVE})
	private List<OrderLine> lineeOrdini;
	
	public Ordine(Long id, Date creationTime, Customer customer){
		this.id = id;
		this.creationTime = creationTime;
		this.customer = customer;
	}
	
	public Ordine(){
	}
	
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getCreationTime() {
		return creationTime;
	}
	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public Customer getCustomerId() {
		return customer;
	}

	public void setCustomerId(Customer customer) {
		this.customer = customer;
	}
}
