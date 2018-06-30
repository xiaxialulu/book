package dao;

import entity.Admin;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class AdminsDao extends HibernateDaoSupport{

    public Admin getOneByUser(String username, String password) {
        /* sql = " select * from admins where username=? and password=? */
        String hql = "from Admin where username=? and password=?";
        List<Admin> list = (List<Admin>) this.getHibernateTemplate().find(hql,username,password);
        if(list.size()>0){
            return list.get(0);
        }
        return null;
    }
}
