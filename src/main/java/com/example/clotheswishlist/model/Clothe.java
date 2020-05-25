package com.example.clotheswishlist.model;

public class Clothe
{
    private String name;
    private String category;
    private String store;
    private String price;
    private String url;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getStore() {
        return store;
    }

    public void setStore(String store) {
        this.store = store;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Clothe {" +
                "name = '" + name + '\'' +
                ", category = '" + category + '\'' +
                ", store = '" + store + '\'' +
                ", price = " + price +
                ", url = '" + url + '\'' +
                '}';
    }
}
