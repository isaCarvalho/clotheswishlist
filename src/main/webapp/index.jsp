<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <meta charset="UTF-8" />
    <title>Clothes Wish List</title>

    <link rel="icon" href="images/garment.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="style/page.css">

    <body>
        <header>
            <img src="images/garment.png" alt="logo" style="width: 50px; height: auto">
            <h2>CLOTHES WISH LIST</h2>
        </header>

        <div class="form">
            <s:form action="index.action">
                <s:textfield name="clotheBean.name" label="Name"/>
                <s:textfield name="clotheBean.category" label="Category"/>
                <s:textfield name="clotheBean.store" label="Store"/>
                <s:textfield name="clotheBean.price" label="Price"/>
                <s:textfield name="clotheBean.url" label="URL"/>

                <s:submit style="margin: 10px 0; border-radius: 10px; height: 40px; border: none; background-color: #bb002f;border-color: #bb002f;color: white;"/>
            </s:form>

            <table>
                <tr>
                    <th>Clothes</th>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>Category</td>
                    <td>Price</td>
                    <td>Store</td>
                    <td>URL</td>
                </tr>
                <s:iterator var="clothe" value="clothes" >
                    <tr>
                        <td><s:property value="#clothe.name"/></td>
                        <td><s:property value="#clothe.category"/></td>
                        <td><s:property value="#clothe.price"/></td>
                        <td><s:property value="#clothe.store"/></td>
                        <td><s:property value="#clothe.url"/></td>
                    </tr>
                </s:iterator>
            </table>
        </div>
    </body>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>
