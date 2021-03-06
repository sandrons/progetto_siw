package it.uniroma3.controller;

import it.uniroma3.facade.ProviderFacade;
import it.uniroma3.model.Address;
import it.uniroma3.model.Product;
import it.uniroma3.model.Provider;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import java.util.List;



@ManagedBean(name="providerController")
@SessionScoped
public class ProviderController {


    @EJB(name="provFacade")
    private ProviderFacade providerFacade;

    private String name;
    private String phoneNumber;
    private String email;
    private String vatin;
    private Provider provider;
    private List<Product> products;
    private List<Provider> providers;

    private String street;
    private String city;
    private String zipcode;
    private String country;
    private Address address;


    public String createProvider(){
        this.address = new Address(street,city,zipcode,country);
        this.provider = providerFacade.createProvider(name,phoneNumber,email,vatin,address);

        return "provider";
    }
    
    public String findProvider(Long id){
        this.provider = providerFacade.getProvider(id);
        return "provider";
    }


    public String catalogProvider() {
        this.providers = providerFacade.getAllProviders();
        return "providers";
    }

    public String deleteProviderFromCatalog(Long id){
        providerFacade.deleteProvider(id);
        this.providers = providerFacade.getAllProviders();

        return "providers";
    }

    public String addProvider(Provider p){
        this.provider = p;
        return "newProvider";
    }

    public String providerAddress(Long id){
        this.address = providerFacade.getProvider(id).getAddress();
        return "providerAddress";
    }   
   
    


    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Provider getProvider() {
        return provider;
    }

    public void setProvider(Provider provider) {
        this.provider = provider;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public List<Product> getProducts() {
        return products;
    }
   

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public List<Provider> getProviders() {
        return providers;
    }
   

    public void setProviders(List<Provider> providers) {
        this.providers = providers;
    }
    
    
    public ProviderFacade getProviderFacade() {
        return providerFacade;
    }

    public void setProviderFacade(ProviderFacade providerFacade) {
        this.providerFacade = providerFacade;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getVatin() {
        return vatin;
    }

    public void setVatin(String vatin) {
        this.vatin = vatin;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }
}
