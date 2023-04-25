package com.whitefox.springbookstore.services;

import com.whitefox.springbookstore.models.Book;
import com.whitefox.springbookstore.models.Image;
import com.whitefox.springbookstore.repositories.BookRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class BookService {
    private final BookRepository bookRepository;
    public List<Book> bookList(String title){
        if (title != null) return bookRepository.findByTitle(title);
        else  return bookRepository.findAll();
    }

    public void saveBook(Book book, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        Image image1;
        Image image2;
        Image image3;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            book.addImageToBook(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            book.addImageToBook(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            book.addImageToBook(image3);
        }
        log.info("Saving new Book. Title: {}; Author: {}", book.getTitle(), book.getAuthor());
        Book bookFromDB = bookRepository.save(book);
        bookFromDB.setPreviewImageId(bookFromDB.getImages().get(0).getId());
        bookRepository.save(book);
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

    public void deleteBook(Long id){
        bookRepository.deleteById(id);
    }

    public Book getBookById(Long id) {
        return bookRepository.findById(id).orElse(null);
    }
}
