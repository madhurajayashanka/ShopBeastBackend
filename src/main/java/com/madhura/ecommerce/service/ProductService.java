package com.madhura.ecommerce.service;

import com.madhura.ecommerce.dao.ProductRepository;
import com.madhura.ecommerce.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductRepository repository;

    public Product saveProduct(Product product) {
        return repository.save(product);
    }

    public Product getProductById(Long id) {
        return repository.findById(id).orElse(null);
    }

//    public List<Product> getProductByName(String name){
//        return repository.findByNameContaining(name);
//    }

    public String deleteProduct(Long id) {
        repository.deleteById(id);
        return "Product " + id + " removed.";
    }

    public Product updateProduct(Product product) {
        Product existingProduct = repository.findById(product.getId())
                .orElse(null);
        existingProduct.setCategory(product.getCategory());
        existingProduct.setSku(product.getSku());
        existingProduct.setName(product.getName());
        existingProduct.setDescription(product.getDescription());
        existingProduct.setUnitPrice(product.getUnitPrice());
        existingProduct.setImageUrl(product.getImageUrl());
        existingProduct.setActive(product.isActive());
        existingProduct.setUnitsInStock(product.getUnitsInStock());
        existingProduct.setDateCreated(product.getDateCreated());
        existingProduct.setLastUpdated(product.getLastUpdated());

        return repository.save(existingProduct);
    }


}
