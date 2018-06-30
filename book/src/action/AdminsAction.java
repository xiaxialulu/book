package action;

import com.opensymphony.xwork2.ModelDriven;
import entity.Admin;
import service.AdminsService;

public class AdminsAction extends SupperAction implements ModelDriven<Admin> {
    private Admin admin = new Admin();
    @Override
    public Admin getModel() {
        return admin;
    }

    private AdminsService adminsService;
    public void setAdminsService(AdminsService adminsService) {
        this.adminsService = adminsService;
    }

    public String login(){
        Admin ad = adminsService.getOneByUser(admin.getUsername(),admin.getPassword());
        if(ad!=null){
            session.setAttribute("admin",ad);
            return "login_success";
        }
        return "false";
    }

    public String loginout(){
        session.invalidate();
        return "success";
    }

}
