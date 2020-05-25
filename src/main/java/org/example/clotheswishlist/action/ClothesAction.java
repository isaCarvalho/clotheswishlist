package org.example.clotheswishlist.action;

import org.example.clotheswishlist.model.Clothe;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ClothesAction extends ActionSupport implements SessionAware
{
    private static final long serialVersionUID = 1L;
    private Clothe clotheBean;
    private Map<String, Object> session;
    private List<Clothe> clothes;

    public String execute() throws Exception {
        return SUCCESS;
    }

    public Clothe getClotheBean()
    {
        return this.clotheBean;
    }

    public void setClotheBean(Clothe clotheBean) {
        this.clotheBean = clotheBean;

        if (clothes == null)
            clothes = new ArrayList<>();

        clothes.add(clotheBean);

        session.put("clothes", clothes);
    }

    public List<Clothe> getClothes() {
        return clothes;
    }

    public void validate() {

        if (clotheBean != null) {

            if (clotheBean.getName().isEmpty())
                addFieldError("clotheBean.name", "Name is required");

            if (clotheBean.getCategory().isEmpty())
                addFieldError("clotheBean.category", "Category is required");

            if (clotheBean.getStore().isEmpty())
                addFieldError("clotheBean.store", "Store is required");
        }
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;

        if (session.containsKey("clothes"))
            clothes = (List<Clothe>) session.get("clothes");
    }
}
