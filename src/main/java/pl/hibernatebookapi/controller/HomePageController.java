package pl.hibernatebookapi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.hibernatebookapi.service.BookService;

@Controller
public class HomePageController {

    private final BookService bookService;

    public HomePageController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/")
    public String homePage(Model model){
        model.addAttribute("books", bookService.getBooks());
        return "home";
    }
}
