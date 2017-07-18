<!--/*
 * index.php
 * Date 11/7/2017
 * @reference http://www.freeiconspng.com/img/3193
 * @reference https://en.facebookbrand.com/
 * @reference http://icons.iconarchive.com/icons/limav/flat-gradient-social/256/Twitter-icon.png
 * @reference, https://www.w3schools.com/xml/ajax_intro.asp
 * @author Alexander Corcoran, x14365561
 * @author Brian Doyle, x14322731
 */ -->

<html>
    <head>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <link href="css/style.css" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       
        <title>
        
            Gluten Free Locator
        </title>
        <script src = "script/jquery-3.2.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!--Map--->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCQ7s3SDGP6_X7I58U1L-ohsucunfhsyXc&callback=initMap"
        async defer></script>
        <script src="../map.js"></script>


        
    
    <script>
  /* global $ */
  $(document).ready(function(){
     $("#b").load( "html/Title.html" );
    
});
   
  
  </script>
    
    </head>
    
    <body style="background-color : cyan;">
        <header>
            <div class="header">
                <img src="images/Logo.png" alt="logo" style="display: block;
    margin: 0 auto; background-color: white; border-radius:85px;"/>
            </div>
            <div id="top-menu" class="menu-bar navbar navbar-default">
        
        <div class="col-xs-1"></div>
        <div class="col-xs-10">
		
		<ul id="nav">
         
        
        
          <button id="menu" class="btn btn-primary" type="button" onclick="firstBtn()" style="width:20%; font-family: Audimat, Georgia, Serif; ">Home</button>
          
          <a href="/html/map.html"><button id="menu" class="btn btn-primary" type="button" style="width:20%; font-family: Audimat, Georgia, Serif;">Map</button></a> 
          
          <button id="menu"  class="btn btn-primary" type="button" onclick="thirdBtn()" style="width:20%; font-family: Audimat, Georgia, Serif;">Gluten free foods</button>
          
          <button id="menu" class="btn btn-primary" type="button" onclick="fourthBtn()" style="width:20%; font-family: Audimat, Georgia, Serif;">What is gluten?</button>
         
        </ul>
        
        </div>
        <div class="col-xs-1"></div>
        
        </div>
        </header>
        <div class="col-xs-1"></div>
        <div class="col-xs-10">
        


        <div id="b" onload="myfunction()">
        </div>
     </div>
     <div class="col-xs-1"></div>
     
     <div class="col-xs-12">
     <footer>
        <div id="wrapper">
			<div id="social">
			    <!--/**
                * @reference
                https://en.facebookbrand.com/
                 */ -->
				<a href="https://www.facebook.com/Gluten-Free-Tracker-247069145789909/"><img src="images/facebook.png" height="30" width="30" alt="facebook" /></a>
				<!--/**
                * @reference
                 http://icons.iconarchive.com/icons/limav/flat-gradient-social/256/Twitter-icon.png
                 */ -->
				<a href="https://twitter.com/glutenfreetrac1"><img src="images/twitter.png" height="30" width="30" alt="twitter" /></a>
				<!--/**
                * @reference
                http://www.freeiconspng.com/img/3193
                 */ -->
				<a href="https://www.pinterest.com/glutenfreetracker/"><img src="images/pinterest.png" height="30" width="30" alt="twitter" /></a>
			</div>
		</footer>
		</div>
		</div>
  
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!--/**
    * @reference
    https://www.w3schools.com/xml/ajax_intro.asp
     */ -->
    <script>
        function myfunction(){
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        document.getElementById("b").innerHTML =
        this.responseText;
        }
        };
        xmlhttp.open("GET", "html/Title.html", true);
        xmlhttp.send(b);
        }
        
        function firstBtn() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        document.getElementById("b").innerHTML =
        this.responseText;
        }
        };
        xmlhttp.open("GET", "html/Title.html", true);
        xmlhttp.send(b);
        }
        function secondBtn() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        document.getElementById("b").innerHTML =
        this.responseText;
        }
        };
        xmlhttp.open("GET", "html/map.html", true);
        xmlhttp.send(b);
        }
        function thirdBtn() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        document.getElementById("b").innerHTML =
        this.responseText;
        }
        };
        xmlhttp.open("GET", "food.php", true);
        xmlhttp.send(b);
        }
        function fourthBtn() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        document.getElementById("b").innerHTML =
        this.responseText;
        }
        };
        xmlhttp.open("GET", "html/gluten.html", true);
        xmlhttp.send(b);
        }
    </script>

    
   
  

    
    </body>
</html>