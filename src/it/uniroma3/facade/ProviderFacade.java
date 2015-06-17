package it.uniroma3.facade;

import java.util.List;

import it.uniroma3.model.Address;
import it.uniroma3.model.Product;
import it.uniroma3.model.Provider;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


@Stateless
public class ProviderFacade {

    @PersistenceContext(unitName = "unit-jee-es2")
    private EntityManager em;

    public Provider createProvider(String name, String phoneNumber, String email, String vatin, Address address) {
        Provider provider = new Provider(name,phoneNumber,email,vatin,address);
        em.persist(provider);

        return provider;
    }
    
    public Provider getProvider(Long id) {
        return em.find(Provider.class, id);
    }


    public List<Provider> getAllProviders() {
        return em.createQuery("SELECT pr FROM Provider pr", Provider.class).getResultList();
    }

    public void deleteProvider(Long id){
        em.remove(getProvider(id));
    }


   
    
}
