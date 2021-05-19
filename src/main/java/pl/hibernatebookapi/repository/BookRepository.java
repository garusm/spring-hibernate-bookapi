package pl.hibernatebookapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.hibernatebookapi.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long> {

}

