package com.alatoo.menu.controllers;

import com.alatoo.menu.models.Product;
import com.alatoo.menu.repositories.ProductRepository;
import com.alatoo.menu.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
public class AdminController {
    private final ProductService productService;
    private final ProductRepository productRepository;


    @GetMapping("/product/add")
    public String itemAdd(@RequestParam(name = "title", required = false) String title, Model model, Principal principal) {
        model.addAttribute("products", productService.listProducts(title));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "admin";
    }

    @GetMapping("/product/edit/{id}")
    public String itemAdd(@RequestParam(name = "title", required = false) String title, @PathVariable Long id, Model model, Principal principal) {
        Product product = productService.getProductById(id);
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());

        return "productEdit";
    }

    @PostMapping("/product/create")
    public String productCreate(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2, Product product, Principal principal) throws IOException {
        productService.saveProduct(principal, product, file1, file2);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String productDelete(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }


    @PostMapping("/product/edit/{id}")
    public String productEdit(@PathVariable Long id, @RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2, Principal principal, Product product) throws IOException {

        productService.updateProduct(id, file1, file2, principal, product);
        return "redirect:/";
    }

}


