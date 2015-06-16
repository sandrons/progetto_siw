package it.uniroma3.facade;

import it.uniroma3.model.Admin;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class AdminFacade {

    @PersistenceContext(unitName = "unit-jee-es2")
    private EntityManager em;


    public Admin checkPassword(String email, String password) throws Exception {
        Admin a;

        try {
            Query query = this.em.createQuery("SELECT a FROM Admin a WHERE a.email=:email");
            query.setParameter("email", email);
            a = (Admin) query.getSingleResult();

        }catch (Exception e){
            throw new Exception("Errore!");
        }
        if(!a.checkPassword(password))
            throw new Exception("Password non corretta!");

        return a;
    }
}
