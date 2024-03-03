package com.alatoo.menu.services;

import com.alatoo.menu.models.Image;
import com.alatoo.menu.models.Product;
import com.alatoo.menu.models.User;
import com.alatoo.menu.repositories.ProductRepository;
import com.alatoo.menu.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository productRepository;
    private final UserRepository userRepository;


    public List<Product> listProducts(String title) {
        List<Product> products = productRepository.findAll();
        if(title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void saveProduct(Principal principal, Product product, MultipartFile file1, MultipartFile file2) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        Image image1;
        Image image2;
        if(file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
        }

        if(file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            image2.setMainImageId(true);
            product.addImageToProduct(image2);
        }

        log.info("Saving new Product. Title: {}; ", product.getTitle());
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImages().get(0).getId());
        productFromDb.setMainImageId(productFromDb.getImages().get(1).getId());
        productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
            Image image = new Image();
            image.setName(file.getName());
            image.setOriginalFileName(file.getOriginalFilename());
            image.setContentType(file.getContentType());
            image.setSize(file.getSize());
            image.setBytes(file.getBytes());
            return image;
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
