package com.alatoo.menu.controllers;

import com.alatoo.menu.models.Product;
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

@Controller
@RequiredArgsConstructor
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
public class AdminController {
    private final ProductService productService;



    @GetMapping("/product/add")
    public String itemAdd(Model model, Principal principal) {
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "product-add";
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

}
