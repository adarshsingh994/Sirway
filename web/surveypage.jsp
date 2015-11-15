<%-- 
    Document   : surveypage
    Created on : Nov 14, 2015, 5:33:43 PM
    Author     : adars
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Complete Your Survey..</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
            <!-- Optional Bootstrap theme -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
            <style>
                .jumbotron{
                    background: gray;
                }
            </style>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="clientpage.jsp">Sir Way</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
                        <li><a ><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
                    </ul> 
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="jumbotron">
                <h1 style="text-align: center; font-family: cursive; font-size: 70px;">Survey Form</h1>
            </div>
               <form class="form-horizontal" role="form" method="POST">
                   <div class="form-group">
                        <label class="control-label" for="name">How many times in the past 6 months have you shopped in this store ? </label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q1" value="1-4"> 1-4</label><br/>
                                    <label><input type="radio" name="q1" value="5-10"> 5-10</label><br/>
                                    <label><input type="radio" name="q1" value="11-20"> 11-20</label><br/>
                                    <label><input type="radio" name="q1" value="21-30"> 21-30</label><br/>
                                    <label><input type="radio" name="q1" value="More Than That"> More Than That</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">When you shop at this store, do you come to browse or for some particular item ?</label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q2" value="Browse"> Browse</label><br/>
                                    <label><input type="radio" name="q2" value="Particular Item"> Particular Item</label><br/>
                                    <label><input type="radio" name="q2" value="Both"> Both</label><br/>
                                    <label><input type="radio" name="q2" value="Don't Know"> Don't Know</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">How often do you find what you are looking for ? </label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q3" value="Often"> Often</label><br/>
                                    <label><input type="radio" name="q3" value="Sometime"> Sometimes</label><br/>
                                    <label><input type="radio" name="q3" value="Never"> Never</label><br/>
                                    <label><input type="radio" name="q3" value="Every Time"> Every Time</label><br/>
                                    <label><input type="radio" name="q3" value="Don't Know"> Don't Know</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">How knowledgeable do you find the sales staff about the product we sell ?</label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q4" value="Very Knowledgeable"> Very Knowledgeable</label><br/>
                                    <label><input type="radio" name="q4" value="Somewhat Knowledgeable"> Somewhat Knowledgeable</label><br/>
                                    <label><input type="radio" name="q4" value="No Knowledge at all"> No Knowledge at all</label><br/>
                                    <label><input type="radio" name="q4" value="Can't Tell"> Can't Tell</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">How helpful do you find the sales staff of this store ? </label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q5" value="Very Helpful"> Very Helpful</label><br/>
                                    <label><input type="radio" name="q5" value="Somewhat Helpful"> Somewhat Helpful</label><br/>
                                    <label><input type="radio" name="q5" value="Not Helpful At All"> Not Helpful At All</label><br/>
                                    <label><input type="radio" name="q5" value="Don't Know"> Don't Know</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">How comfortable are you shopping at this store ? </label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q6" value="Very Comfortable"> Very Comfortable</label><br/>
                                    <label><input type="radio" name="q6" value="Little Comfortable"> Little Comfortable</label><br/>
                                    <label><input type="radio" name="q6" value="Not Comfortable"> Not Comfortable</label><br/>
                                    <label><input type="radio" name="q6" value="Don't Know"> Don't Know</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">What will you say about the cleanliness of this store ? </label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q7" value="Awesome Clean"> Awesome Clean</label><br/>
                                    <label><input type="radio" name="q7" value="Nicely Clean"> Nicely Clean</label><br/>
                                    <label><input type="radio" name="q7" value="OK Clean"> OK Clean</label><br/>
                                    <label><input type="radio" name="q7" value="Dirty"> Dirty</label><br/>
                                    <label><input type="radio" name="q7" value="Awful"> Awful</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">How was the ambiance of the store ?</label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q8" value="Awesome"> Awesome</label><br/>
                                    <label><input type="radio" name="q8" value="Good"> Good</label><br/>
                                    <label><input type="radio" name="q8" value="OK"> OK</label><br/>
                                    <label><input type="radio" name="q8" value="Bad"> Bad</label><br/>
                                    <label><input type="radio" name="q8" value="Don't Know"> Don't Know</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">Are you satisfied with the store timings ?</label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="radio" name="q9" value="Very Satisfied"> Very Satisfied</label><br/>
                                    <label><input type="radio" name="q9" value="Somewhat Satisfied"> Somewhat Satisfied</label><br/>
                                    <label><input type="radio" name="q9" value="Somewhat Dissatisfied"> Somewhat Dissatisfied</label><br/>
                                    <label><input type="radio" name="q9" value="Very Dissatisfied"> Very Dissatisfied</label><br/>
                                    <label><input type="radio" name="q9" value="Don't Know"> Don't Know</label><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label" for="name">Any Suggestions for us ? </label>
                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <textarea placeholder="Enter your suggestions here..." style="height: 40%; width: 50%;"></textarea><br/>
                                </div>
                            </div>
                        </div>
                    </div>
                   <button type="submit" class="btn btn-default">Submit</button>
               </form> 
        </div>
    </body>
</html>
