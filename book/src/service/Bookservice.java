package service;

import dao.BookDao;
import entity.Book;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(readOnly = false)
public class Bookservice {
    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    public List<Book> selectAll() {
        return bookDao.selectAll();
    }

    public void addOne(Book book) {
        bookDao.addOne(book);
    }

    public Book getOneById(Integer id) {
        return bookDao.getOneById(id);
    }

    public void updateOne(Book book) {
        bookDao.updateOne(book);
    }

    public void deleteOne(Book book) {
        bookDao.delOne(book);
    }
}
