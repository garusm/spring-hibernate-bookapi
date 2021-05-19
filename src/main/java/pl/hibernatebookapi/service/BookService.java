package pl.hibernatebookapi.service;

import pl.hibernatebookapi.entity.Book;

import java.util.List;
import java.util.Optional;

public interface BookService {

    List<Book> getBooks();
    void add(Book book);
    Optional<Book> get(Long id);
    void delete(Long id);
    void update(Book book);

}
