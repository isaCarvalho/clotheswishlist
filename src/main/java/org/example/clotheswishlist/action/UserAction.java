package org.example.clotheswishlist.action;

import org.example.clotheswishlist.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
    private User userBean;

    @Override
    public String execute() throws Exception {
        if (userBean == null)
            return "null";

        return SUCCESS;
    }

    public User getUserBean() {
        return userBean;
    }

    public void setUserBean(User userBean) {
        this.userBean = userBean;
    }

    @Override
    public void validate() {
        if (userBean != null) {

            if (userBean.getName().isEmpty()) {
                addFieldError("userBean.name", "Name is required");
            }

            if (userBean.getPassword().isEmpty()) {
                addFieldError("userBean.password", "Password is required");
            }
        }
    }
}
