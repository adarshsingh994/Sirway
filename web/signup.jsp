<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sign Up Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- Optional Bootstrap theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style>
        </style>
    </head>
    <body>
        <div class="jumbotron" style="background: lightblue;">
            <h1 style="font-size: 60px; font-family: cursive; text-shadow: 5px 5px 10px black; text-align: center; padding: 3%;">Sign Up Here...</h1>
        </div>
        <div class="container">
            <form class="form-horizontal" role="form" method="POST" action="signup.jsp">
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Name: </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email: </label>
                    <div class="col-sm-10"> 
                        <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pass">Password: </label>
                    <div class="col-sm-10"> 
                        <input type="password" class="form-control" name="pass" id="pass" placeholder="Enter password">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="passagain">Repeat: </label>
                    <div class="col-sm-10"> 
                        <input type="password" class="form-control" name="passrepeat" id="passagain" placeholder="Enter password agian">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pp">Profile Picture: </label>
                    <div class="col-sm-10"> 
                        <input type="file" class="form-control" name="pp" id="pp" size="50">
                    </div>
            </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label><input type="radio" name="gender" value="Male"> Male</label>
                    </div>
                </div>
            </div>
                <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label><input type="radio" name="gender" value="Female"> Female</label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pnumber">Phone Number: </label>
                    <div class="col-sm-10"> 
                        <input type="number" class="form-control" name="phnumber" id="pnumber" placeholder="Enter phone number">
                    </div>
            </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label><input type="checkbox"> Remember me</label>
                    </div>
                </div>
            </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Submit</button>
                </div>
            </div>
        </form>
            <%
                
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String pass = request.getParameter("pass");
                String passrepeat = request.getParameter("passrepeat");
                String pp = request.getParameter("pp");
                String gender = request.getParameter("gender");
                String phno = request.getParameter("phnumber");
                try{
                    String connectionURL = "jdbc:mysql://localhost:3306/phpexdatabase";
                    Connection conn=null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
                    conn = DriverManager.getConnection(connectionURL,"admin","password");
                    
                    Statement stat = conn.createStatement();
                    int insert = stat.executeUpdate("INSERT INTO jsptable (Name, Email, Password, Profile_Picture, Gender, Phone_Number) VALUES ('"+name+"','"+email+"','"+pass+"','"+pp+"','"+gender+"','"+phno+"')");
                    if(name.equals("")&&email.equals("")&&pass.equals("")&&passrepeat.equals("")&&pp.equals("")&&gender.equals("")&&phno.equals("")){
                    }
                    conn.close();
                }
                catch(Exception ex){
                    System.out.println("Connection Error :"+ex);
                }
            %>
        </div>
    </body>
</html>
