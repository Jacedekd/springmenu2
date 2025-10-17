package com.alatoo.menu.controllers;

import com.alatoo.menu.models.Product;
import com.alatoo.menu.services.ProductService;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;


    @GetMapping("/")
    public String products(@RequestParam(name = "title", required = false) String title, Principal principal, Model model, HttpServletResponse response) {
        model.addAttribute("products", productService.listProducts(title));
//        model.addAttribute("user", productService.getUserByPrincipal(principal));

        if (principal != null) {
            model.addAttribute("user", productService.getUserByPrincipal(principal));
        } else {
            model.addAttribute("user", null); // или new User() — если Freemarker не любит null
        }

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
        return "home";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model, Principal principal) {
        Product product = productService.getProductById(id);
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());

        return "product-info";
    }

    @GetMapping("/product/cart")
    public String products(Principal principal, Model model) {
        model.addAttribute("user", productService.getUserByPrincipal(principal));

        return "cart";
    }


}
