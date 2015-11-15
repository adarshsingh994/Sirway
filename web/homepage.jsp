<%@page import="javax.jms.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- Optional Bootstrap theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style>
            body{
                background: black;
            }
            .jumbotron{
                padding: 5%;
                background:orangered;
                color: black;
            }
            #car{
                margin-left: 15%;
                height: 30%;
                width: 70%;
            }
            #myCarousel{
                background: black;
                margin: 10px;
            }
            #navvvv{
                background: black;
                position: static;
            }
            li{
                background: black;
                color: orangered;
                margin: 5px;
            }
            li:hover{
                background: red;
            }
        </style>
        <title>Home Page</title>
    </head>
    <body>
        <%
            try{
                String connectionURL = "jdbc:mysql://localhost:3306/phpexdatabase";
                Connection conn = null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conn=DriverManager.getConnection(connectionURL, "admin", "password");
                %>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="#">Sir Way</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Page 1</a></li>
                        <li><a href="#">Page 2</a></li> 
                        <li><a href="#">Page 3</a></li> 
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li data-toggle="modal" data-target="#myModal"><a>Login</a></li>
                        <li><a href="signup.jsp">Sign Up</a></li>
                    </ul>
                </div>
  </div>
</nav>
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Enter Your Details...</h2>
                        </div>
                        <div class="modal-body">
                            
                            <!--Form Goes Here-->
                            
                            
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Password:</label>
                    <div class="col-sm-10"> 
                        <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password">
                    </div>
                </div>
                <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox"> Remember me</label>
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary" type="submit">Login</button>
            </form>
                            <!--End Of Form-->
                            
                        </div>
                    </div>
                </div>
            </div>
        
        <%
                Statement stat = conn.createStatement();
                ResultSet rs = stat.executeQuery("select * from jsptable where Email = '"+request.getParameter("email")+"' and Password = '"+request.getParameter("password")+"'");
                if(rs!=null&&rs.next()){
                    if(request.getParameter("email").equals(rs.getString(3))&&request.getParameter("password").equals(rs.getString(4))){
                        // New location to be redirected
                        session.setAttribute("Email", rs.getString(3));
                        session.setAttribute("Password", rs.getString(4));
                        session.setAttribute("ID", rs.getString(1));
                        String site = new String("clientpage.jsp");
                        response.setStatus(response.SC_MOVED_TEMPORARILY);
                        response.setHeader("Location", site); 
                    } 
                }
                else if(request.getParameter("email").equals("")&&request.getParameter("password").equals("")){
            }
                else
                {
                    %>
                        <script>alert("Incorrect");</script>
                        <%
                }
            }
            catch(Exception ex){
                System.out.println("Error :"+ex);
            }
        %>
        
            <div class="jumbotron">
                <h1 style="font-size: 60px; text-align: center"><u>Sir Way</u></h1>
                <p>1000+ stores and still counting. Complete the survay of the stores to get upto 15% discount from that store. 
                    Register quickly to get the benefits.</p>
            </div>
        
        <!--Code for Carousel-->
            
            
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img id="car" src="http://blog.hdwallsource.com/wp-content/uploads/2015/01/food-wallpaper-5775-5940-hd-wallpapers.jpg" alt="Pizza">
                        <div class="carousel-caption">
                            <h3>Pizza</h3>
                            <p>This is a pizza.</p>
                        </div>
                </div>

                <div class="item">
                    <img id="car" src="http://images7.alphacoders.com/402/402852.jpg" alt="Roll">
                        <div class="carousel-caption">
                            <h3>Swizz Roll</h3>
                            <p>This is a Swizz Roll.</p>
                        </div>
                </div>

                <div class="item">
                    <img id="car" src="http://hdwallpaperbackgrounds.net/wp-content/uploads/2015/07/Food-Stake-Wallpaper.jpg" alt="meat">
                        <div class="carousel-caption">
                            <h3>Meat</h3>
                            <p>This is a Meat.</p>
                        </div>
                </div>

                <div class="item">
                    <img id="car" src="http://7-themes.com/data_images/out/23/6846505-food-wallpaper.jpg" alt="Burgers">
                        <div class="carousel-caption">
                            <h3>Burgers</h3>
                            <p>This is a Burger.</p>
                        </div>
                </div>
            </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        
        <div class="container">
            <div class="jumbotron">
                <h1 style="font-size: 50px; padding-left: 20%; float: right;"><u>Mainland China</u></h1>
                <p>Mainland China is a paradice for chinese food lovers.</p>
            </div>
            <div class="jumbotron">
                <h1 style="font-size: 50px; padding-right: 20%; float: left;"><u>Spice Caves</u></h1>
                <p>Go to Spice Caves for a cave like dining experience</p>
            </div>
            <div class="jumbotron">
                <h1 style="font-size: 50px; padding-left: 20%; float: right;"><u>Royal Cafe</u></h1>
                <p>This is royal cafe known for its basket chat.</p>
            </div>
            <div class="jumbotron">
                <h1 style="font-size: 50px; padding-right: 20%; float: left;"><u>Dastarkhwan</u></h1>
                <p>Enjoy the best of mughlai cuisine in Dastarkhwan</p>
            </div>
            <h1 style="font-size: 50px; text-align: center; color: orangered">And Many More.....</h1>
        </div>
    </body>
</html>
