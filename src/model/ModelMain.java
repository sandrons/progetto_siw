package model;


import javax.persistence.*;

import java.util.*;

public class ModelMain {
	
	
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("progetto_siw");
		EntityManager em = emf.createEntityManager();

		CustomerFacade cf = new CustomerFacade();
		cf.createCustomer("Michele","Ridolfi","michele.ridolfi@hotmail.it","opera901");
		
		Address address = new Address();
		address.setStreet("Via Galvani");
		address.setCity("Roma");
		address.setState("Italia");
		
		Product blancheDeNamur = new Product();
		blancheDeNamur.setName("Blanche De Namur");
		blancheDeNamur.setPrice(3.50f);
		
		Provider birreDeBocq = new Provider();
		birreDeBocq.setName("BirreDeBocq");
		birreDeBocq.setEmail("birredebocq@gmail.com");
		
		List<Provider> listaFornitoriBlanche = new ArrayList<Provider>();
		List<Product> listaProdottiBirreDeBocq = new ArrayList<Product>();
		
		listaFornitoriBlanche.add(birreDeBocq);
		listaProdottiBirreDeBocq.add(blancheDeNamur);
		
		birreDeBocq.getListaProdotti().add(blancheDeNamur);
		blancheDeNamur.getListaProvider().add(birreDeBocq);
		
		blancheDeNamur.setListaProvider(listaFornitoriBlanche);
		birreDeBocq.setListaProdotti(listaProdottiBirreDeBocq);
		
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(address);
		em.persist(blancheDeNamur);
		//em.persist(orderline);
		em.persist(birreDeBocq);
		tx.commit();
		em.close();
		emf.close();
		

	}

}
