package action;

import com.opensymphony.xwork2.ModelDriven;
import entity.Book;
import service.Bookservice;

import java.util.List;

public class BookAction extends SupperAction implements ModelDriven<Book>{
    private Book book=new Book();
    @Override
    public Book getModel() {
        return book;
    }
    private Bookservice bookservice;/*声明对象*/
    public void setBookservice(Bookservice bookservice) {
        this.bookservice = bookservice;
    }
    public String selectBook(){
        List<Book> bookList=bookservice.selectAll();
        request.setAttribute("bookList",bookList);/*数据放在request域中，取个名字bookList*/
        return "xiaxia";
    }
    public String addBook(){
        bookservice.addOne(book);
        return "addBook_success";
    }
    public String toUpdate(){
        book = bookservice.getOneById(book.getId());
        request.setAttribute("book",book);
        return "toUpdate_success";
    }
    public String updateBook(){
        bookservice.updateOne(book);
        return "updateBook_success";
    }
    public String deleteBook(){
        book = bookservice.getOneById(book.getId());
        bookservice.deleteOne(book);
        return "deleteBook_success";
    }
}
