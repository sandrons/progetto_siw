package model;

import javax.ejb.Stateless;
import javax.persistence.*;

import java.util.*;

@Stateless (name="pFacade")
public class ProductFacade {

	@PersistenceContext(unitName="model")
	private EntityManager em;
	
	public ProductFacade(){
		
	}
	
	public Product createProduct(String name, String tipo, String description, Float price) {
		Product product = new Product(name, tipo, description, price);
		em.persist(product);
		return product;
		
	}

	
	public List<Provider> retrieveProviders(Long idProdotto){
	
		try{
		List<Provider> results = em.createNamedQuery("retrieveProviders").setParameter("id", idProdotto).getResultList();
		return results;			
		}catch(Exception e){
			return null;
		}
		}
	
	public Product getProduct(Long id){
		Product product = em.find(Product.class, id);
		return product;
	}
}
