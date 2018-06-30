package service;

import dao.AdminsDao;
import entity.Admin;

public class AdminsService {

    private AdminsDao adminsDao;
    public void setAdminsDao(AdminsDao adminsDao) {
        this.adminsDao = adminsDao;
    }

    public Admin getOneByUser(String username, String password) {
        return adminsDao.getOneByUser(username,password);
    }
}
