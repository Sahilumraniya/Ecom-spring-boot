package com.ecom.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecom.bean.ProductBean;
import com.ecom.dao.ProductDao;
import com.ecom.service.FileUploadService;

@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;
	
	@Autowired
	FileUploadService fileUploadService;
	
	@GetMapping("/newProduct")
	public String newProduct() {
		return "NewProduct";
	}
	
	@GetMapping("/products")
	public String products(Model model) {
		model.addAttribute("products", productDao.getAllProduct());
		return "ListProduct";
	}
	
	@GetMapping("/viewProduct")
	public String viewProduct(@RequestParam Integer productId,Model model) {
		model.addAttribute("product", productDao.getProductById(productId));
		return "ViewProduct";
	}
	
	@PostMapping("/deleteProduct")
	public String deleteProduct(@RequestParam Integer productId) {
		productDao.deleteProduct(productId);
		return "redirect:/products";
	}
	
	@PostMapping("/saveProduct")
	public String saveProduct(ProductBean product) {
		try {
			boolean isFileUploaded = fileUploadService.fileUploadOnLocal(product.getProductImage());
			if(isFileUploaded) {
				product.setProductImagePath("images/products/"+product.getProductImage().getOriginalFilename());
				productDao.addProduct(product);
				return "redirect:/products";
			}else {
				return "Error";
			}
		}catch(Exception e) {
			System.out.println("ERROR :: Product Controller :: saveProduct");
			e.printStackTrace();
		}
		return "Error";
	}
}
