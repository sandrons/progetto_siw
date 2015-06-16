package it.uniroma3.facade;

import it.uniroma3.model.Product;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.List;

@Stateless(name="pFacade")
public class ProductFacade {

    @PersistenceContext(unitName = "unit-jee-es2")
    private EntityManager em;

    public Product createProduct(String name, String code, Float price, String description, Integer quantity) {
        Product product = new Product(name, price, description, code,quantity);
        em.persist(product);
        return product;
    }

    public Product getProduct(Long id) {
        return em.find(Product.class, id);
    }


    public List<Product> getAllProducts() {
        return em.createQuery("SELECT product FROM Product product", Product.class).getResultList();
    }

    public void deleteProduct(Long id){
        em.remove(getProduct(id));
    }


    public void modifyProduct(Product product, Float price, Integer quantity, String description) {
        product.setPrice(price);
        product.setQuantity(quantity);
        product.setDescription(description);
        em.merge(product);

    }
}