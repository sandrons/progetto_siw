package it.uniroma3.facade;

import it.uniroma3.model.Customer;
import it.uniroma3.model.Order;
import it.uniroma3.model.OrderLine;

import java.util.Date;
import java.util.List;

import javax.ejb.Stateless;
import javax.faces.context.FacesContext;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

@Stateless(name="oFacade")
public class OrderFacade {

    @PersistenceContext(unitName = "unit-jee-es2")
    private EntityManager em;


    public Order createOrder(Date creationTime, Customer customer_id) {
        Order o = new Order(creationTime, customer_id);
        return o;
    }

    public Order getOrder(Long id){
        return em.find(Order.class, id);
    }

    public List<Order> allOrders() {
        return em.createNamedQuery("findAllOrders").getResultList();
    }
    
    public void closeOrder(Order order, Date closeTime, List<OrderLine> orderLines) {
        order.setCloseTime(closeTime);
        order.setOrderLines(orderLines);
        order.setAperto(2);
        this.em.persist(order);
    }

    public void addOrder(Customer customer, Order order) {
        customer.getOrders().add(order);
        em.merge(customer);
    }

    public void evadeOrder(Order o) {

        for(OrderLine ol : o.getOrderLines()) {
            Integer newQta = ol.getProduct().getQuantity() - ol.getQuantity();
            ol.getProduct().setQuantity(newQta);
            em.merge(ol.getProduct());
        }

        o.dispatched();
        em.merge(o);
    }
    
    public Order getOrderFromIdInRequestMap(){

		String stringId = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("orderId");
		long id = Long.valueOf(stringId).longValue();
		Order order = this.getOrder(id);
		return order;

	}

    
    public void removeOrder(Order o) {
    	Query q =  em.createQuery("DELETE FROM Order o WHERE o.id = :id");
    	q.setParameter("id", o.getId()).executeUpdate();
    	
    }

	public void closeOrderVuoto(Order order, Date closeTime,
			List<OrderLine> orderLines) {
		order.setCloseTime(closeTime);
        order.setOrderLines(orderLines);
        order.setAperto(2);
		
	}

}
