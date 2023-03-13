<%-- 
    Document   : index
    Created on : 8 Jul, 2021, 11:02:39 AM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Secure Fine-Grained Encrypted Keyword Search</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

      

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
        <style>
         body 
         
         {
           margin: 0;
           box-sizing: border-box;
         }
         
        .header
        {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #3e545b;
       }
    
      .header .nav-items .logo 
      {
      font-size: 25px;
      font-family: 'Sriracha', cursive;
      color: #c4c4c4;
      text-decoration: none;
      padding-right: 30px;
      margin-left: 30px;
    }
    

    .nav-items {
      display: flex;
      justify-content: space-around;
      align-items: center;
      background-color: #3e545b;
      margin-right: 20px;
    }
    
    .nav-items .titlebar
    {
        margin-left: 400px;
    }

    .nav-items a {
      color: #c4c4c4;
      box-shadow: inset 0 0 0 0 #c4c4c4;
      padding: 0 .25rem;
      margin: 0 -.25rem;
      padding: 5px 10px 5px 10px;
      margin : 15px;
      transition: color .3s ease-in-out, box-shadow .3s ease-in-out;
    }
    
    .nav-items a:hover, .nav-items .logo:hover
    {
        color:#3e545b;
        box-shadow: inset 200px 0 0 0 #c4c4c4;
        border-radius: 5px;
    }
    
    .nav-items a
    {
      color: #c4c4c4;
      font-size: 18px;
      font-weight: 600;
      line-height: 1.5;
      text-decoration: none;
    }
    
   
    .nav-items .logo
    {
        padding-right: 500px;
    }
    
    .intro {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      width: 100%;
      height: 520px;
      background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.5) 100%), url("img/homepic.jpg");
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }

    .intro h2 {
      font-family: sans-serif;
      font-size: 60px;
      color: #fff;
      font-weight: bold;
      text-transform: uppercase;
      margin: 0;
    }

 
.content{
     position: absolute;
     top: 170%;
     left: 50%;
     z-index: 999;
     text-align: center;
     padding: 50px 100px 50px 50px;
     width: 80%;
     transform: translate(-50%,-50%);
     background: rgba(255,255,255,0.04);
     box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
}

.content header{
    color: white;
    font-size: 33px;
    font-weight: 600;
    margin: 0 0 35px 0;
    font-family: 'Montserrat',sans-serif;
  }



    
        </style>
    </head>
    <body>

       
                           <header class="header">
                            <nav class="nav-items">
                                
                                <a href="#" class="logo">
                                        Logo             </a>
                                <nav class="titlebar">
                                    <a href="index.jsp">Home</a>
                                    <a href="patientLogin.jsp">Patient</a>
                                    <a href="doctorLogin.jsp">Doctor</a>
                                    <a href="taLogin.jsp">Trusted Authority</a>
                                    <a href="cloudLogin.jsp">Cloud</a>
                                </nav>
                                
                            </nav><!-- / #primary-nav -->
                           </header>
        
       
                        <div class="intro">
                            <h2>Secure Fine-Grained Encrypted Keyword Search for E-Healthcare Cloud</h2>
         
                        </div>
       
                        <div class="content">
                            <h1>ABSTRACT</h1>
                       
                   
                <div class="row">
                   
                            <p align="justify" style="font-size:19px">
                                E-Healthcare systems are increasingly popular due to the introduction of wearable healthcare devices and sensors.
                                Personal health records (PHRs) are collected by these devices and stored in a remote cloud. Due to privacy concern, these records
                                should not be accessible by any unauthorized party, and the cloud providers should not be able to learn any information from the stored
                                records. To address the above issues, one promising solution is to employ attribute based encryption (ABE) for fine-grained access
                                control and searchable encryption for keyword search on encrypted data. However, most of existing ABE schemes leak the privacy of
                                access policy which may also contain sensitive information. On the other hand, for users’ devices with limited computing power and
                                bandwidth, the mechanism should enable them to be able to search the PHRs efficiently. Unfortunately, most existing works on ABE do
                                not support efficient keyword search on encrypted data. In this work, we propose an efficient hidden policy ABE scheme with keyword
                                search. Our scheme enables efficient keyword search with constant computational overhead and constant storage overhead.
                                Moreover, we enhance the recipient’s privacy which hides the access policy. As of independent interest, we present a trapdoor
                                malleability attack and demonstrate that some of previous schemes may suffer from such attack.
                            </p>
                        </div>
                     </div>
                
            
        

        <div class="sub-footer">
            <br><br><br><br>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/datepicker.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
