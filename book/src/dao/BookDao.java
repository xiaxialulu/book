package dao;


import entity.Book;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class BookDao extends HibernateDaoSupport{
    /*查询*/
    public List<Book> selectAll() {
        //select * from book
        String hql="from Book";//Book 是entity的类名
        List<Book> list=(List<Book>) this.getHibernateTemplate().find(hql);
        return list;
    }

    public void addOne(Book book) {
        this.getHibernateTemplate().save(book);
    }

    public Book getOneById(Integer id) {
        String hql="from Book where id=?";//Book 是entity的类名
        List<Book> list=(List<Book>) this.getHibernateTemplate().find(hql,id);
        if(list.size()>0){
            return list.get(0);
        }
        return null;
    }

    public void updateOne(Book book) {
        this.getHibernateTemplate().update(book);
    }

    public void delOne(Book book) {
        this.getHibernateTemplate().delete(book);
    }
}

