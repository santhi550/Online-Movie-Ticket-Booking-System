<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html  lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/1a63ab4674.js" crossorigin="anonymous"></script>
  <link href='https://fonts.googleapis.com/css?family=Aldrich' rel='stylesheet'>
  <link rel="stylesheet" href="/css/home.css">
</head>
<body>

<nav class="navbar navbar-expand-md  navbar-dark">
  <a class="navbar-brand" href="/"><h2>My Tickets</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
    <div class="dropdown">
<input type="text" placeholder="Search.." class="form-control" id="myInput" style="width:53vw;" autocomplete="off" onkeyup="filterFunction()">
    <div id="myDropdown" class="dropdown-content">
     <c:forEach items="${movie}" var="temp">
    <a href="javascript:void(0)" onclick="gotomovie(${temp.movie_id})">${temp.movie_name}</a>
    </c:forEach>
  </div>
  </div>
  <script>

  function filterFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    div = document.getElementById("myDropdown");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
    if(filter.length>0){
    document.getElementById("myDropdown").style.display="block";
    }
    else{
    document.getElementById("myDropdown").style.display="none";
    
    }
      txtValue = a[i].textContent || a[i].innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        a[i].style.display = "";
      } else {
        a[i].style.display = "none";
      }
    }
  }
  </script>
   
  <li class="nav-item dropdown">
      <a class="nav-link text-white dropdown-toggle" href="javascript:void(0)"  data-toggle="dropdown">
        <i class="fas fa-ad"></i> <span id="navbardrop1">${current_lan}</span>
      </a>
      <div class="dropdown-menu ">
              <a class="dropdown-item" href="javascript:void(0)" onclick="filterbylan('All languages')">All languages</a>
      <c:forEach items="${lans}" var="lan">
        <a class="dropdown-item" href="javascript:void(0)" onclick="filterbylan('${lan}')">${lan}</a>
        </c:forEach>

      </div>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link text-white dropdown-toggle" href="javascript:void(0)"  data-toggle="dropdown">
        <i class="fas fa-map-marker-alt"></i> <span id="navbardrop2">${location}</span>
      </a>
      <div class="dropdown-menu ">
      <c:forEach items="${alllocations}" var="loc">
        <a class="dropdown-item" href="javascript:void(0)" onclick="filterbyloc('${loc}');" >${loc}</a>
        </c:forEach>
      </div>
      <script>
      var lan_title=document.getElementById('navbardrop1');
      var loc_title=document.getElementById('navbardrop2');
      function filterbylan(lan){
    	  lan_title.innerHTML=lan;
    	  var xhttp = new XMLHttpRequest();
    	    xhttp.onreadystatechange = function() {
    	      if (this.readyState == 4 && this.status == 200) {
    	    	  document.getElementById('matter').innerHTML=this.responseText;
    	      }
    	    };
    	    xhttp.open("GET", "filter?language="+lan+"&location="+String(loc_title.innerHTML),true);
    	    xhttp.send();
          }
      function filterbyloc(loc){
    	  loc_title.innerHTML=loc;
    	  var xhttp = new XMLHttpRequest();
  	    xhttp.onreadystatechange = function() {
  	      if (this.readyState == 4 && this.status == 200) {
  	    	  document.getElementById('matter').innerHTML=this.responseText;
  	      }
  	    };
  	    xhttp.open("GET", "filter?language="+String(lan_title.innerHTML)+"&location="+loc,true);
  	    xhttp.send();
        }
      </script>
    </li>
    <c:if test = "${pageContext['request'].userPrincipal.principal.enabled != true}">
    <li class="nav-item">
        <a class="nav-link text-white " href="/login" ><i class="fas fa-user"></i>&nbsp;&nbsp;Login</a>
      </li>
      </c:if>
      <c:if test = "${pageContext['request'].userPrincipal.principal.enabled == true}">
         <li class="nav-item dropdown">
      <a class="nav-link text-white dropdown-toggle" href="javascript:void(0)" id="navbardrop2" data-toggle="dropdown">
        <i class="fas fa-user"></i> ${username}
      </a>
      <div class="dropdown-menu ">
        <a class="dropdown-item" href="/Account">Account</a>
        <a class="dropdown-item" href="/logout">Logout</a>
      </div>
    </li>
      </c:if>
    </ul>
  </div>
</nav>
<br>
<br>
<br>
<br>

<section class="pt-5 circle-1">
		<div class="container pb-5 position-relative">
				<div id="demo" class="carousel slide position-relative" data-ride="carousel">
					<ul class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class=""></li>
							<li data-target="#demo" data-slide-to="1" class="active"></li>
							<li data-target="#demo" data-slide-to="2" class=""></li>
						  </ul>
				<div class="carousel-inner">
				  <div class="carousel-item active carousel-item-left">
						<div class="d-flex">
								<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
										<a href="javascript:void(0)" id=1 class="introduce pb-3">
										<div class="flex-column-1 ">
										<img src="/images/001.jpg" style="width:100%;height:100%" />
										</div>
										<div class="flex-column-2 d-flex">
											<div class="information  flex-column pl-3 pt-2">
												<p>Man of Steel</p>
												<p class="text-gray">English</p>
											</div>
										</div>
										<span></span>
									</a>
								</div>
								<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
										<a href="javascript:void(0)" id=2 class="introduce pb-3">
											<div class="flex-column-1 ">
											<img src="/images/002.jpg" style="width:100%;height:100%" />
											</div>
											<div class="flex-column-2 d-flex">
												<div class="information  flex-column pl-3 pt-2">
													<p>Batman vs SuperMan</p>
													<p class="text-gray">English</p>
												</div>
											</div>
										</a>
									</div>
								<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column">
										<a href="javascript:void(0)" id=3 class="introduce pb-3">
											<div class="flex-column-1 ">
										<img src="/images/003.jpg" style="width:100%;height:100%" />
											</div>
											<div class="flex-column-2 d-flex">
												<div class="information  flex-column pl-3 pt-2">
													<p>Jurassic World</p>
													<p class="text-gray">English</p>
												</div>
											</div>
										</a>
									</div>
						</div>
					</div>
					<div class="carousel-item carousel-item-next carousel-item-left">
							<div class="d-flex">
									<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
											<a href="javascript:void(0)" id=4 class="introduce pb-3">
											<div class="flex-column-1 ">
												<img src="/images/004.jpg" style="width:100%;height:100%" />
											</div>
											<div class="flex-column-2 d-flex">
											<div class="information  flex-column pl-3 pt-2">
													<p>Avengers Infinity War</p>
													<p class="text-gray">English</p>
												</div>
											</div>
											<span></span>
										</a>
									</div>
									<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
											<a href="javascript:void(0)" id=5 class="introduce pb-3">
												<div class="flex-column-1 ">
												<img src="/images/005.jpg" style="width:100%;height:100%" />
												</div>
												<div class="flex-column-2 d-flex">
													<div class="information  flex-column pl-3 pt-2">
														<p>Aquaman</p>
														<p class="text-gray">English</p>
													</div>
												</div>
											</a>
										</div>
									<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column">
											<a href="javascript:void(0)" id=6 class="introduce pb-3">
												<div class="flex-column-1 ">
											<img src="/images/006.jpg" style="width:100%;height:100%" />
												</div>
												<div class="flex-column-2 d-flex">
													<div class="information  flex-column pl-3 pt-2">
														<p>One Nenokkadine</p>
														<p class="text-gray">Telugu</p>
													</div>
												</div>
											</a>
										</div>
							</div>
						</div>
						<div class="carousel-item ">
								<div class="d-flex">
										<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
												<a href="javascript:void(0)" id=7 class="introduce pb-3">
												<div class="flex-column-1 ">
												<img src="/images/007.jpg" style="width:100%;height:100%" />
												</div>
												<div class="flex-column-2 d-flex">
													<div class="information  flex-column pl-3 pt-2">
															<p>Spyder</p>
															<p class="text-gray">Telugu</p>
													</div>
												</div>
												<span></span>
											</a>
										</div>
										<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
												<a href="javascript:void(0)" id=8 class="introduce pb-3">
													<div class="flex-column-1 ">
													<img src="/images/008.jpg" style="width:100%;height:100%" />
													</div>
													<div class="flex-column-2 d-flex">
														<div class="information  flex-column pl-3 pt-2">
															<p>Wonder Woman</p>
															<p class="text-gray">English</p>
														</div>
													</div>
												</a>
											</div>
										<div class="col-lg-4 col-sm-12 col-12 d-flex flex-column">
												<a href="javascript:void(0)" id=9 class="introduce pb-3">
													<div class="flex-column-1 ">
													<img src="/images/009.jpg" style="width:100%;height:100%" />
                            </div>
													<div class="flex-column-2 d-flex">

														<div class="information  flex-column pl-3 pt-2">
															<p>2.0</p>
															<p class="text-gray">Tamil</p>
														</div>
													</div>
												</a>
											</div>
								</div>
							</div>
				</div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev" style="opacity: 1; left: -10%;">
<i class="fas fa-chevron-left" style="color:#5969f6; font-size:30px;"></i></a>
<a class="carousel-control-next" href="#demo" data-slide="next" style="opacity: 1; transform: rotate(-180deg); right: -10%;">
<i class="fas fa-chevron-left" style="color:#5969f6; font-size:30px;"></i></a>
		</div>
	</div>
</section>
<div id="matter">
<div class="container" style="margin-left:15%;">
<div class="row" >
<c:forEach items="${movie}" var="temp">
  <div  class="col-xl-3 col-md-4 col-sm-4 col-8 movie">
    <a href="javascript:void(0)" onclick="gotomovie(${temp.movie_id})" class="movie-link">
		<div class="img-responsive">
      <img src="/images/${temp.img }" class="movie-img">
      	<br>
      	<h4 class="heading" >${temp.movie_name}</h4>
    	</div>
  </a>
  </div>
  </c:forEach>
  <c:if test = "${movie.size() == 0 }">
<div class="jumbotron text-center" style="background-color:slateblue">
<h1 class="heading">No Movies Available</h1>
</div>
</c:if>
</div>
</div>
</div>
<br>
<br>
<br>
<br>
<form id="movie_form" action="movie" method="POST">
<input name="movie_id" id="movie_id" style="display:none"/>
</form>
<script>
function gotomovie(id){
	document.getElementById('movie_id').value=id;
	document.getElementById('movie_form').submit();
}
$(document).ready(function(){
	$(".introduce").click(function(){
	document.getElementById('movie_id').value=this.id;
	document.getElementById('movie_form').submit();
	});
});
</script>

<footer class="new_footer_area bg_color">
            <div class="new_footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="f_widget social-widget pl_70 wow fadeInLeft" data-wow-delay="0.8s" style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInLeft;">
                                <h3 class="f-title f_600 t_color f_size_18">Contact us</h3>
                                <div class="f_social_icon">
                                    <a href="https://www.facebook.com/" target="_blank" class="fab fa-facebook"></a>
                                    <a href="https://twitter.com/home?lang=en" target="_blank" class="fab fa-twitter"></a>
                                    <a href="https://www.linkedin.com/feed/" target="_blank" class="fab fa-linkedin"></a>
                                    <a href="https://www.youtube.com/" target="_blank" class="fab fa-youtube"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer_bg">
                    <div class="footer_bg_one"></div>
                    <div class="footer_bg_two"></div>
                </div>
            </div>
            <div class="footer_bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12 col-sm-7">
                            <p class="mb-0 f_400">  Copyright 2020 © MyTickets Pvt. Ltd. All Rights Reserved.
    The content and images used on this site are copyright protected and copyrights vests with the respective owners. The usage of the content and images on this website is intended to promote the works and no endorsement of the artist shall be implied. Unauthorized use is prohibited and punishable by law.</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
</body>
</html>
