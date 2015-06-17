package it.uniroma3.facade;

import it.uniroma3.model.Order;
import it.uniroma3.model.OrderLine;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class OrderLineFacade {

	@PersistenceContext(unitName = "unit-jee-es2")
	private EntityManager em;


	public void aggiungiLinea(OrderLine ol) {

		em.persist(ol);
	}
}
