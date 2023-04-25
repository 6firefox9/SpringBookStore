package com.whitefox.springbookstore.controllers;

import com.whitefox.springbookstore.models.Book;
import com.whitefox.springbookstore.services.BookService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequiredArgsConstructor
public class BookController {
    private final BookService bookService;

    @GetMapping("/")
    public String books(@RequestParam(name = "title", required = false) String title, Model model){
        model.addAttribute("books", bookService.bookList(title));
        return "books";
    }

    @PostMapping("/book/create")
    public String createBook(@RequestParam("file1") MultipartFile file1,
                             @RequestParam("file2") MultipartFile file2,
                             @RequestParam("file3") MultipartFile file3,
                             Book book) throws IOException {
        bookService.saveBook(book, file1, file2, file3);
        return "redirect:/";
    }

    @GetMapping("/book/{id}")
    public String bookInfo(@PathVariable Long id, Model model){
        Book book = bookService.getBookById(id);
        model.addAttribute("book", book);
        model.addAttribute("images", book.getImages());
        return "book-info";
    }

    @PostMapping("/book/delete/{id}")
    public String deleteBook(@PathVariable Long id){
        bookService.deleteBook(id);
        return "redirect:/";
    }
}
