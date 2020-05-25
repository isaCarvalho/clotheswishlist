<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<html>
    <meta charset="UTF-8" />
    <title>Clothes Wish List - Criar Conta</title>

    <link rel="icon" href="images/garment.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="style/page.css">

    <s:head/>

    <body>
        <header>
            <img src="images/garment.png" alt="logo" style="width: 50px; height: auto">
            <h2>CLOTHES WISH LIST</h2>
        </header>

        <div class="form">
            <s:form action="register">
                <s:textfield key="userBean.name"/>
                <s:password key="userBean.password"/>

                <s:submit style="margin: 10px 0; border-radius: 10px; height: 40px; border: none; background-color: #bb002f;border-color: #bb002f;color: white;"/>
            </s:form>

            <s:property value="userBean.name"/>
        </div>
    </body>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>