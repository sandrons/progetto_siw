package it.uniroma3.model;


import javax.persistence.*;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@Entity
@Table(name = "orders")
@NamedQuery(name = "findAllOrders", query = "SELECT o FROM Order o")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Temporal(TemporalType.TIMESTAMP)
    private Date creationTime;

    @Temporal(TemporalType.TIMESTAMP)
    private Date closeTime;

    @OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.REMOVE, CascadeType.MERGE})
    @JoinColumn(name = "orders_id")
    //@OrderBy("creationTime asc")
    private List<OrderLine> orderLines;

    private String status;
    private Integer aperto;

    @ManyToOne
    private Customer customer_id;

    public Order() {
    }

    public Order(Date creationTime, Customer customer_id) {
        this.creationTime = creationTime;
        this.customer_id = customer_id;
        this.orderLines = new LinkedList<OrderLine>();
        this.status = "Not dispatched";
        this.aperto = 0;
   
    }

    public boolean checkDispatched(){
        return this.status.equals("Not dispatched");
    }

    public void setCreationTime(Date creationTime) {this.creationTime = creationTime;}

    public void setCustomer_id(Customer customer_id) {this.customer_id = customer_id;}

    public Date getCreationTime() {return creationTime;}

    public Long getId() {return id;}

    public Customer getCustomer_id() {return customer_id;}

    public void setOrderLines(List<OrderLine> orderLines) {this.orderLines = orderLines;}

    public List<OrderLine> getOrderLines() {return orderLines;}

    public Date getCloseTime() {return closeTime;}

    public void setCloseTime(Date closeTime) {this.closeTime = closeTime;}

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void dispatched(){
        this.setStatus("Dispatched");
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean equals(Object o) {
        return super.equals(o);
    }

	public Integer getAperto() {
		return aperto;
	}

	public void setAperto(Integer aperto) {
		this.aperto = aperto;
	}

    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Order");
        sb.append("{id=").append(id);
        sb.append(", creationTime='").append(creationTime);
        sb.append(", customer_id='").append(customer_id);
        sb.append("}\n");
        return sb.toString();
    }

	

}