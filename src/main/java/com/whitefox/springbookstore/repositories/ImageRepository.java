package com.whitefox.springbookstore.repositories;

import com.whitefox.springbookstore.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {

}
