package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instace = new ProductRepository();
	
	public static ProductRepository getInstance(){
		return instace;
	}
	public ProductRepository(){
		Product phone = new Product("P1234","iPHONE 6s",800000);
		phone.setDescription("4.7-inch,1335X705 Renina HD display, 8-megapixel isight camera");
		phone.setCategory("smart phoen");
		phone.setManufacturer("apple");
		phone.setUnitPrice(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1234","LG GRAM",1800000);
		notebook.setDescription("4.7-inch,1335X705 Renina HD display, 8-megapixel isight camera");
		notebook.setCategory("smart phoen");
		notebook.setManufacturer("Lg");
		notebook.setUnitPrice(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("P1234","GALAXT TAB 5",500000);
		tablet.setDescription("SAMSUONG GALAXT TAB,1335X705 Renina HD display, 8-megapixel isight camera");
		tablet.setCategory("smart phoen");
		tablet.setManufacturer("SAMSUONG");
		tablet.setUnitPrice(1000);
		tablet.setCondition("OID");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
	}
	
	public ArrayList<Product> getAllProducts(){
			return listOfProducts;
	}
	
	public Product getProductById(String productId){
		Product productById = null;
		
		for(int i = 0; i<listOfProducts.size(); i++ ){
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)){
				productById = product;
				break;
			}
		}
		return productById;
	}
	public void addProduct(Product product){
		listOfProducts.add(product);
	}
}
