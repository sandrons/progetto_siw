package it.uniroma3.controller;

import it.uniroma3.facade.OrderLineFacade;
import it.uniroma3.model.Order;
import it.uniroma3.model.OrderLine;
import it.uniroma3.model.Product;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="orderLineController")
@SessionScoped
public class OrderLineController {

	@EJB(name = "olFacade")
	private OrderLineFacade orderLineFacade; //da eliminare con commit
	private Product product;
	private Integer quantity;
	//private OrderLine ol; commit

	@ManagedProperty(value = "#{orderController}")
	private OrderController orderController;

	@ManagedProperty(value = "#{productController}")
	private ProductController productController;

	public String createOrderLine(Order o, Product p) {

		OrderLine orderLine = new OrderLine(p.getPrice(),quantity,p);

		
		if (p.getQuantity() - quantity >= 0)  {
			boolean trovato = false;

			if(!(this.orderController.getOrderLines().isEmpty())){
				for(int i = 0; ((i< this.orderController.getOrderLines().size()) && (trovato==false)) ; i++){ 
					
					if(this.orderController.getOrderLines().get(i).getProduct().getId().equals(p.getId())){
						this.orderController.getOrderLines().get(i).setQuantity(this.orderController.getOrderLines().get(i).getQuantity() + this.quantity );
						trovato = true;
					}
					else
						this.orderController.getOrderLines().add(orderLine);
					

				}
			}
			else
				this.orderController.getOrderLines().add(orderLine); 

			return "basket";
		}
		return "homePage"; //errorpage da mettere
	}


	//	public OrderLine getOl() {
	//		return ol;
	//	}
	//
	//	public void setOl(OrderLine ol) {
	//		this.ol = ol;
	//	}




	public OrderController getOrderController() {
		return orderController;
	}

	public void setOrderController(OrderController orderController) {
		this.orderController = orderController;
	}

	public OrderLineFacade getOrderLineFacade() {
		return orderLineFacade;
	}

	public void setOrderLineFacade(OrderLineFacade orderLineFacade) {
		this.orderLineFacade = orderLineFacade;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product p) {
		this.product = p;
	}

	public ProductController getProductController() {
		return productController;
	}

	public void setProductController(ProductController productController) {
		this.productController = productController;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}



}
