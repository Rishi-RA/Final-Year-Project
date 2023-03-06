<%-- 
    Document   : index
    Created on : 8 Jul, 2021, 11:02:39 AM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Secure Fine-Grained Encrypted Keyword Search</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <%
        if (request.getParameter("Failed") != null) {
    %>
    <script>alert('Login Failed');</script>
    <%            }
    %>
    <body>

        <div class="wrap">
            <header id="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <button id="primary-nav-button" type="button">Menu</button>

                            <nav id="primary-nav" class="dropdown cf">
                                <ul class="dropdown menu">
                                    <li><a href="doctorHome.jsp">Home</a></li>
                                    <li><a href="getSearchToken.jsp">Get Search Token</a></li>
                                    <li><a href="search.jsp">Search</a></li>
                                    <li><a style="color: blue" href="requestedFiles.jsp">Requested Files</a></li>
                                    <li><a href="index.jsp">Logout</a></li>
                                </ul>
                            </nav><!-- / #primary-nav -->
                        </div>
                    </div>
                </div>
            </header>
        </div>

        <section class="banner" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="banner-caption">
                            <h2>Secure Fine-Grained Encrypted Keyword
                                Search for E-Healthcare Cloud</h2>
                            <div class="line-dec"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="our-services" id="services">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h1>Download File</h1>
                        </div>
                    </div> 
                </div> 
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-lg-6">
                            <img src="img/download.jpg" width="450" height="400">
                        </div>
                        <div class="col-lg-6">
                            <div class="row">
                                <%
                                    String rid = request.getParameter("rid");
                                    String fid = request.getParameter("fid");
                                    String utime = request.getParameter("utime");

                                    System.out.println("Request ID : " + rid);
                                    Connection con = SQLconnection.getconnection();
                                    Statement st = con.createStatement();
                                    Statement st1 = con.createStatement();
                                    try {
                                        ResultSet rt = st1.executeQuery("Select * from request where id = '" + rid + "' AND status = 'Approved' ");
                                        if (rt.next()) {
                                %>
                                <form action="download1.jsp" method="post">
                                    <div class="col-lg-10">
                                        <fieldset>
                                            <input type="hidden" value="<%=fid%>" name="fid">
                                            <input type="hidden" value="<%=rid%>" name="rid">
                                            <input type="hidden" value="<%=utime%>" name="utime">
                                            <label>Secret Key :</label><br><br>
                                            <input type="text" name="dkey" class="form-control" placeholder="Enter Secret Key" autocomplete="off" required="">
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset><br><br>
                                            <i><button type="submit" class="btn btn-info btn-lg btn-circle fa fa-download">&nbsp;Download</button></i>
                                        </fieldset>
                                    </div>
                                </form>
                                <%                                        } else {
                                            response.sendRedirect("requestedFiles.jsp?Access_Not_Approved");
                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }


                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="sub-footer">
            <br><br><br><br>
            <p>&copy; 2021</p>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/datepicker.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
