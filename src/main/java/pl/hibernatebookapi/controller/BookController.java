package pl.hibernatebookapi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.hibernatebookapi.entity.Book;
import pl.hibernatebookapi.service.BookService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class BookController {

    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping(path = "/all")
    public String showPosts(Model model){
        model.addAttribute("books", bookService.getBooks());
        return "/books/all";
    }

    @GetMapping(path = "/add")
    public String bookAdd(Model model){
        model.addAttribute("book", new Book());
        return "/books/add";
    }

    @PostMapping(path = "/add")
    public String processBookAdd(@Valid Book book, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "/books/add";
        } else{
            bookService.add(book);
            return "redirect:/admin/books/all";
        }
    }

    @GetMapping(path = "/edit/{id}")
    public String bookEdit(@PathVariable Long id, Model model){
        model.addAttribute("book", bookService.get(id));
        return "/books/edit";
    }

    @PostMapping(path = "/edit")
    public String processBookEdit(@Valid Book book, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "/books/edit";
        }else{
            bookService.update(book);
            return "redirect:/admin/books/all";
        }
    }

    @GetMapping(path = "/delete/{id}")
    public String bookDelete(@PathVariable Long id, Model model){
        bookService.delete(id);
        return "redirect:/admin/books/all";
    }
    @GetMapping("/show/{id}")
    public String showBook(Model model, @PathVariable long id){
        model.addAttribute("book", bookService.get(id).orElseThrow(EntityNotFoundException::new));
        return "/books/show";
    }

    @ModelAttribute("publishers")
    public List<String> publishers(){
        return Arrays.asList("Znak", "Kuźnia", "Ragnarok", "Fantasy Co.", "Czeluście Otchłani", "Earth 2.0");
    }
    @ModelAttribute("types")
    public List<String> types(){
        return Arrays.asList("Fantasy", "Science Fiction", "History", "Nature", "Life Style", "Drama");
    }

}
