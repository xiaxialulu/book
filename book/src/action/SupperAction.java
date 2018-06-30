package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SupperAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,ServletContextAware {
    protected HttpServletRequest request=null;
    protected HttpServletResponse response=null;
    protected ServletContext application=null;
    protected HttpSession session=null;
    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request=httpServletRequest;
        this.session=httpServletRequest.getSession();
    }
    @Override
    public void setServletContext(ServletContext servletContext) {
        this.application=servletContext;
    }
    @Override
    public void setServletResponse(HttpServletResponse httpServletResponse) {
        this.response=httpServletResponse;
    }
}
