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

//    DA COMMITTARE
    
//    public void aggiungiLinea(OrderLine ol) {
// 
//        em.persist(ol);
//    }
    
   /* public void apriOrdine(Order o) {
    	o.setAperto(1);
    	em.merge(o);
    }*/
    
    
}
