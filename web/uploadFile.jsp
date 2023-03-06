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
        if (request.getParameter("File_uploaded") != null) {
    %>
    <script>alert('File Uploaded Successfully');</script>
    <%            }
    %>
    <script type="text/javascript">
        function loadFile(o)
        {
            var fr = new FileReader();
            fr.onload = function (e)
            {
                showDataFile(e, o);
            };
            fr.readAsText(o.files[0]);
        }

        function showDataFile(e, o)
        {
            document.getElementById("data").innerText = e.target.result;
        }
    </script>
    <body>

        <div class="wrap">
            <header id="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <button id="primary-nav-button" type="button">Menu</button>

                            <nav id="primary-nav" class="dropdown cf">
                                <ul class="dropdown menu">
                                    <li><a href="patientHome.jsp">Home</a></li>
                                    <li><a style="color: blue" href="uploadFile.jsp">Upload File</a></li>
                                    <li><a href="myFiles.jsp">My Files</a></li>
                                    <li><a href="downloadedFiles.jsp">Downloaded Files</a></li>
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
                            <h1>Upload File</h1>
                        </div>
                    </div> 
                </div> 
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <%
                                String pid = (String) session.getAttribute("pid");
                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from patient_reg where id  ='" + pid + "' ");
                                    while (rs.next()) {
                            %>
                            <form action="upload" method="post" enctype="multipart/form-data">
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Name :</label><br>
                                        <input type="text" name="pname" value="<%=rs.getString("name")%>" class="form-control" readonly=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Age :</label><br>
                                        <input type="text" name="age" value="<%=rs.getString("age")%>" class="form-control" id="ageId" readonly=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Access Policy to Department :</label><br>
                                        <select name="dept" class="form-control" required="">
                                            <option value="">Select Medical Department</option>
                                            <option>Cardiology</option>
                                            <option>Dermatology</option>
                                            <option>Neurology</option>
                                            <option>Nephrology</option>
                                            <option>Orthopedic</option>
                                        </select><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Heart Rate :</label><br>
                                        <input type="text" class="form-control" name="heart_rate" placeholder="Enter Heart Rate" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Blood Group :</label><br>
                                        <input type="text" class="form-control" name="blood_group" placeholder="Enter Blood Group" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Height :</label><br>
                                        <input type="text" class="form-control" name="height" placeholder="Enter Height in cm" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Weight :</label><br>
                                        <input type="text" class="form-control" name="weight" placeholder="Enter Weight in kg" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Blood Pressure :</label><br>
                                        <input type="text" class="form-control" name="blood_pressure" placeholder="Enter Blood Pressure" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Blood Sugar :</label><br>
                                        <input type="text" class="form-control" name="blood_sugar" placeholder="Enter Blood Sugar" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Select File :</label><br>
                                        <input type="file" class="form-control" onchange="loadFile(this)" name="fileToUpload" accept=".xls,.xlsx,.slsm,.doc,.docx,.txt,.csv" required="required"><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <label>Preview File :</label><br>
                                        <textarea readonly="" class="form-control" pre id="data" style="height:120px; resize: none"></textarea><br><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <center><button type="submit" class="btn btn-success btn-lg">Upload</button></center>
                                    </fieldset>
                                </div>
                            </form>
                            <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
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