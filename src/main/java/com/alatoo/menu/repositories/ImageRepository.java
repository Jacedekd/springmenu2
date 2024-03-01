package com.alatoo.menu.repositories;

import com.alatoo.menu.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
