package com.example.clotheswishlist.action;

import com.example.clotheswishlist.model.Clothe;
import com.opensymphony.xwork2.ActionSupport;

public class ClothesAction extends ActionSupport
{
    private static final long serialVersionUID = 1L;
    private Clothe clotheBean;

    public String execute() throws Exception {
        return SUCCESS;
    }

    public Clothe getClotheBean()
    {
        return this.clotheBean;
    }

    public void setClotheBean(Clothe clotheBean) {
        this.clotheBean = clotheBean;
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
}
