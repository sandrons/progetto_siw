package model;

import javax.ejb.Stateless;
import javax.persistence.*;
import java.util.*;


@Stateless (name="cFacade")
public class CustomerFacade {

	@PersistenceContext(unitName="model")
	private EntityManager em;

	public CustomerFacade(){
		
	}
	
	public Customer createCustomer(String firstName, String lastName, String email, String password) {
		Customer customer = new Customer();
		customer.setFirstName(firstName);
		customer.setLastName(lastName);
		customer.setEmail(email);
		customer.setPassword(password);
		em.persist(customer);	
		return customer;
	}


	public List<Customer> visualizzaCustomer() {

		List<Customer> results = em.createNamedQuery("visualizzaCustomer").getResultList();
		return results;

	}
	
	public List<Ordine> visualizzaOrdini(Long id) {

		List<Ordine> results = em.createNamedQuery("visualizzaOrdine").setParameter("id", id).getResultList();
		return results;

	}
	
	public Customer getCustomer(Long id){
		Customer customer = em.find(Customer.class, id);
		return customer;
	}

}