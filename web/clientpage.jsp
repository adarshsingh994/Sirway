<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <title>Client Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- Optional Bootstrap theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style>
            .jumbotron{
                background: orangered;
                box-shadow: 10px 10px 20px black;
            }
        </style>
    </head>
    <body>
        <%
        try{
            String connectionURL = "jdbc:mysql://localhost:3306/phpexdatabase";
            Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection(connectionURL, "admin", "password");
            Statement stat=connection.createStatement();
            ResultSet rs=stat.executeQuery("select * from jsptable where Id = '"+session.getAttribute("ID")+"'");
            
             if(rs!=null&&rs.next()){
            %>
            <!-- NavBar Here-->
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span> 
                        </button>
                        <a class="navbar-brand" href="profile.jsp"><%=rs.getString(2)%>'s Page</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav navbar-right">
                            <form action="logout.jsp">
                                <li><button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-log-out"></span>  Logout</button></li>
                            </form>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End of NavBar-->
            <div class="container">
                <div class="jumbotron">
                    <h1 style="font-size: 70px; font-family: cursive; text-align: center;"> Welcome <%=rs.getString(2)%></h1>
                </div>
                <div class="col-md-2">
                    
                </div>
                <div class="col-md-8">
                    <form class="form-inline" role="form" style="text-align: center;">
                        <div class="form-group">
                            <input title="Enter Code Here To Complete The Surveys..." type="text" class="form-control" id="code" placeholder="Enter Code Here...">
                            <button type="submit" class="btn btn-default">Enter Code</button>
                        </div>
                    </form>
                    
                </div>
                <div class="col-md-2">
                    <h6 style="color: orangered; float: right;"><a href="#">Total Survey Done: <span class="badge">0</span></a></h6><br>
                </div>
            </div>
            <%
    }
        }
        catch(Exception ex){
            out.println("Error :"+ex);
        }
    %>
    </body>
</html>
