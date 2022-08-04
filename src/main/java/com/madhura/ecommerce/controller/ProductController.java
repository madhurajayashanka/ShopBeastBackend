package com.madhura.ecommerce.controller;

import com.madhura.ecommerce.entity.Product;
import com.madhura.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/product")
@CrossOrigin("http://localhost:4200")
public class ProductController {

    @Autowired
    private ProductService productService;

    @PostMapping("/add")
    @PreAuthorize("hasRole('Admin')")
    public Product addProduct(@RequestBody Product product){
        return productService.saveProduct(product);
    }

    @PutMapping("/update")
    public Product updateProduct(@RequestBody Product product){
        return productService.updateProduct(product);
    }

    @DeleteMapping("/delete/{id}")
    public String deleteProduct(@PathVariable Long id){
        return productService.deleteProduct(id);
    }

    @GetMapping("/find/{id}")
    public Product findProductById(@PathVariable Long id){
        return productService.getProductById(id);
    }

//    @GetMapping("/name/{name}")
//    public List<Product> findProductByName(@PathVariable String name){
//        return productService.getProductByName(name);
//    }


}
