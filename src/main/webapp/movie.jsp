<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
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
  <style>
    th{
      color:slateblue;
    }
    .movie-content{
      border-radius:12px;
      	box-shadow: 2px 2px 4px 4px rgba(0,0,0,0.3);
        margin:20px;
        background-color:white;
    }
    .movie-trailer{
      width:100%;
      height:500px;
      border-radius:12px;
      box-shadow: 2px 2px 4px 4px rgba(0,0,0,0.3);
      margin-top:20px;
    }
    .date_btn{
      width:200px;
      padding:10px;
      border-radius:0px;
      margin:10px;
      color:slateblue;
      border:1px solid slateblue;
    }
    .date_btn:hover,.date_btn:active,.date_btn:focus{
      background-color:slateblue;
      color:white;
    }
    .time_btn{
      width:150px;
      margin:10px;
      padding:10px;
    }
    .heading2{
      padding:10px;
    }
    .movie-theater{
      border-radius:12px;
      box-shadow: 1px 1px 2px 2px rgba(0,0,0,0.3);
      background-color:white;
      padding:10px;
      margin-top:20px;
      margin-left:auto;
      margin-right:auto;
      width:70%;
    }
    * {
  box-sizing: border-box;
}


.rcontainer {
  background-color:slateblue;
  display: -webkit-box;
  display: flex;
  flex-wrap: wrap;
  height: 50vh;
  -webkit-box-align: center;
          align-items: center;
  -webkit-box-pack: center;
          justify-content: center;
  padding: 0 20px;
  width:50%;
  border-radius:8px;
  margin:auto;
}

.rating {
  display: -webkit-box;
  display: flex;
  width: 100%;
  -webkit-box-pack: center;
          justify-content: center;
  overflow: hidden;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: reverse;
          flex-direction: row-reverse;
  height: 150px;
  position: relative;
}

.rating-0 {
  -webkit-filter: grayscale(100%);
          filter: grayscale(100%);
}

.rating > input {
  display: none;
}

.rating > label {
  cursor: pointer;
  width: 40px;
  height: 40px;
  margin-top: auto;
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23e3e3e3' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: center;
  background-size: 76%;
  -webkit-transition: .3s;
  transition: .3s;
}

.rating > input:checked ~ label,
.rating > input:checked ~ label ~ label {
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23fcd93a' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
}

.rating > input:not(:checked) ~ label:hover,
.rating > input:not(:checked) ~ label:hover ~ label {
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23d8b11e' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
}

.emoji-wrapper {
  width: 100%;
  text-align: center;
  height: 100px;
  overflow: hidden;
  position: absolute;
  top: 0;
  left: 0;
}

.emoji-wrapper:before,
.emoji-wrapper:after {
  content: "";
  height: 15px;
  width: 100%;
  position: absolute;
  left: 0;
  z-index: 1;
}

.emoji-wrapper:before {
  top: 0;
  background: -webkit-gradient(linear, left top, left bottom, from(white), color-stop(35%, white), to(rgba(255, 255, 255, 0)));
  background: linear-gradient(to bottom, white 0%, white 35%, rgba(255, 255, 255, 0) 100%);
}

.emoji-wrapper:after {
  bottom: 0;
  background: -webkit-gradient(linear, left bottom, left top, from(white), color-stop(35%, white), to(rgba(255, 255, 255, 0)));
  background: linear-gradient(to top, white 0%, white 35%, rgba(255, 255, 255, 0) 100%);
}

.emoji {
  display: -webkit-box;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
          flex-direction: column;
  -webkit-box-align: center;
          align-items: center;
  -webkit-transition: .3s;
  transition: .3s;
}

.emoji > svg {
  margin: 15px 0;
  width: 70px;
  height: 70px;
  flex-shrink: 0;
}

#rating-1:checked ~ .emoji-wrapper > .emoji {
  -webkit-transform: translateY(-100px);
          transform: translateY(-100px);
}

#rating-2:checked ~ .emoji-wrapper > .emoji {
  -webkit-transform: translateY(-200px);
          transform: translateY(-200px);
}

#rating-3:checked ~ .emoji-wrapper > .emoji {
  -webkit-transform: translateY(-300px);
          transform: translateY(-300px);
}

#rating-4:checked ~ .emoji-wrapper > .emoji {
  -webkit-transform: translateY(-400px);
          transform: translateY(-400px);
}

#rating-5:checked ~ .emoji-wrapper > .emoji {
  -webkit-transform: translateY(-500px);
          transform: translateY(-500px);
}

.feedback {
  max-width: 360px;
  background-color: #fff;
  width: 100%;
  padding: 30px;
  border-radius: 8px;
  display: -webkit-box;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
          flex-direction: column;
  flex-wrap: wrap;
  -webkit-box-align: center;
          align-items: center;
  box-shadow: 0 4px 30px rgba(0, 0, 0, 0.05);
}
.comments{
  border:1px solid slateblue;
  border-radius:8px;
  height:500px;
  overflow-x:hidden;
}
.comment{
  padding:10px;
  box-shadow: 1px 1px 2px 2px rgba(0,0,0,0.3);
  background-color:white;
  margin:20px;
}
.review-form{

}
  </style>
</head>
<body onload="fun();">
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
     <c:forEach items="${movielist}" var="temp">
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
  <form id="movie_form" action="movie" method="POST">
<input name="movie_id" id="movie_id" style="display:none"/>
</form>
<script>
function gotomovie(id){
	document.getElementById('movie_id').value=id;
	document.getElementById('movie_form').submit();
}
</script>
  
    <li class="nav-item dropdown">
      <a class="nav-link text-white dropdown-toggle" href="javascript:void(0)"  data-toggle="dropdown">
        <i class="fas fa-map-marker-alt"></i> <span id="navbardrop2">${location}</span>
      </a>
      <div class="dropdown-menu ">
     <c:forEach items="${alllocations}" var="temp">
        <a class="dropdown-item" href="javascript:void(0)" onclick="filterbyloc('${temp}')">${temp}</a>
        </c:forEach>
      </div>
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
<div class="container-fluid">
  <div class="row">
    <div class="col-xl-5 movie-content">
      <div class="table-responsive">
        <table class="table">
          <tr>
            <th>Movie Name</th>
            <td>${movie.movie_name}</td>
          </tr>
          <tr>
            <th>Genre</th>
            <td>${movie_info.genre}</td>
          </tr>
          <tr>
            <th>Language</th>
            <td>${movie_info.lan }</td>
          </tr>
          <tr>
            <th>Release Date</th>
            <td>${movie_info.rd}</td>
          </tr>
          <tr>
            <th>Movie Length</th>
            <td>${movie_info.ml }</td>
          </tr>
          <tr>
            <th>Story</th>
            <td>${movie_info.story }</td>
          </tr>
          <tr>
            <th>Google Rating</th>
            <td>${movie_info.per }</td>
          </tr>
        </table>
      </div>
    </div>
    <div class="col-xl-6">
      <iframe class="movie-trailer" src="${movie_info.link}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>

  </div>
  </div>
<br>
<br>
<input type="number" id="mmovie_id" value="${movie_info.movie_id}"  hidden/>
<div class="jumbotron-fluid text-center">
<div class="dates">
 <c:forEach items="${dates}" var="date">
  <button type="button" class="btn  date_btn" onclick="filter_theatres('${date}')" id="${date}">${date}</button>
  </c:forEach>
  </div>
  <script>

  var loc_title=document.getElementById('navbardrop2');
  var dates =document.getElementsByClassName("dates")[0];
  var buttons=dates.getElementsByTagName("button");
  mid=document.getElementById('mmovie_id').value;
	  function filter_theatres(date){
		  
		  document.getElementById(date).style.background="slateblue";
		  document.getElementById(date).style.color="white";
		  for(itr=0;itr<buttons.length;itr++){
			  if(buttons[itr].innerHTML!=date){
				  document.getElementById(buttons[itr].innerHTML).style.background="white";
				  document.getElementById(buttons[itr].innerHTML).style.color="slateblue";
				  }
			  }
		  loc=String(loc_title.innerHTML);
		  
		  
		  var xhttp = new XMLHttpRequest();
		 
		    xhttp.onreadystatechange = function() {
		    	
		      if (this.readyState == 4 && this.status == 200) {
		    	  document.getElementById('matter').innerHTML=this.responseText;
		      }
		    };
		    xhttp.open("GET", "filter_theatres?date="+date+"&location="+loc+"&movie_id="+mid,true);
		    xhttp.send();
	  }

	  function filterbyloc(loc){

		  loc_title.innerHTML=loc;
		    filter_theatres(String(buttons[0].innerHTML));
		 }
  	  filterbyloc(String(loc_title.innerHTML));  
  	function rate_movie(rating){
  	  	if(rating!=0){
	    	var xhttp = new XMLHttpRequest();
			 
		    xhttp.onreadystatechange = function() {
		    	
		      if (this.readyState == 4 && this.status == 200) {
			      alert(this.responseText);
		      }
		    };
		    xhttp.open("GET", "ratemovie?rating="+rating+"&movie_id="+mid,true);
		    xhttp.send();
  	  	}
  }
   
function fun(){

	  document.getElementById("rating-${user_rating}").click();
}
  </script>
  <div id="matter">
  </div>
  
</div>
<br>
<br>

<hr style="color:black">
<c:if test = "${avgrating !=0}">
<h1 class="heading" style="color:slateblue;font-size:40px">My Tickets Rating : ${avgrating}</h1>
</c:if>
<c:if test = "${pageContext['request'].userPrincipal.principal.enabled == true}">
<div class="rcontainer">
  <div class="feedback">
  <h3>Your Rating</h3>
    <div class="rating">
      <input type="radio" name="rating" id="rating-5" onclick="rate_movie(5);">
      <label for="rating-5"></label>
      <input type="radio" name="rating" id="rating-4" onclick="rate_movie(4);">
      <label for="rating-4"></label>
      <input type="radio" name="rating" id="rating-3" onclick="rate_movie(3);">
      <label for="rating-3"></label>
      <input type="radio" name="rating" id="rating-2" onclick="rate_movie(2);">
      <label for="rating-2"></label>
      <input type="radio" name="rating" id="rating-1" onclick="rate_movie(1);">
      <label for="rating-1"></label>
      <div class="emoji-wrapper">
        <div class="emoji">
          <svg class="rating-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
          <path d="M512 256c0 141.44-114.64 256-256 256-80.48 0-152.32-37.12-199.28-95.28 43.92 35.52 99.84 56.72 160.72 56.72 141.36 0 256-114.56 256-256 0-60.88-21.2-116.8-56.72-160.72C474.8 103.68 512 175.52 512 256z" fill="#f4c534"/>
          <ellipse transform="scale(-1) rotate(31.21 715.433 -595.455)" cx="166.318" cy="199.829" rx="56.146" ry="56.13" fill="#fff"/>
          <ellipse transform="rotate(-148.804 180.87 175.82)" cx="180.871" cy="175.822" rx="28.048" ry="28.08" fill="#3e4347"/>
          <ellipse transform="rotate(-113.778 194.434 165.995)" cx="194.433" cy="165.993" rx="8.016" ry="5.296" fill="#5a5f63"/>
          <ellipse transform="scale(-1) rotate(31.21 715.397 -1237.664)" cx="345.695" cy="199.819" rx="56.146" ry="56.13" fill="#fff"/>
          <ellipse transform="rotate(-148.804 360.25 175.837)" cx="360.252" cy="175.84" rx="28.048" ry="28.08" fill="#3e4347"/>
          <ellipse transform="scale(-1) rotate(66.227 254.508 -573.138)" cx="373.794" cy="165.987" rx="8.016" ry="5.296" fill="#5a5f63"/>
          <path d="M370.56 344.4c0 7.696-6.224 13.92-13.92 13.92H155.36c-7.616 0-13.92-6.224-13.92-13.92s6.304-13.92 13.92-13.92h201.296c7.696.016 13.904 6.224 13.904 13.92z" fill="#3e4347"/>
        </svg>
          <svg class="rating-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
          <path d="M512 256A256 256 0 0 1 56.7 416.7a256 256 0 0 0 360-360c58.1 47 95.3 118.8 95.3 199.3z" fill="#f4c534"/>
          <path d="M328.4 428a92.8 92.8 0 0 0-145-.1 6.8 6.8 0 0 1-12-5.8 86.6 86.6 0 0 1 84.5-69 86.6 86.6 0 0 1 84.7 69.8c1.3 6.9-7.7 10.6-12.2 5.1z" fill="#3e4347"/>
          <path d="M269.2 222.3c5.3 62.8 52 113.9 104.8 113.9 52.3 0 90.8-51.1 85.6-113.9-2-25-10.8-47.9-23.7-66.7-4.1-6.1-12.2-8-18.5-4.2a111.8 111.8 0 0 1-60.1 16.2c-22.8 0-42.1-5.6-57.8-14.8-6.8-4-15.4-1.5-18.9 5.4-9 18.2-13.2 40.3-11.4 64.1z" fill="#f4c534"/>
          <path d="M357 189.5c25.8 0 47-7.1 63.7-18.7 10 14.6 17 32.1 18.7 51.6 4 49.6-26.1 89.7-67.5 89.7-41.6 0-78.4-40.1-82.5-89.7A95 95 0 0 1 298 174c16 9.7 35.6 15.5 59 15.5z" fill="#fff"/>
          <path d="M396.2 246.1a38.5 38.5 0 0 1-38.7 38.6 38.5 38.5 0 0 1-38.6-38.6 38.6 38.6 0 1 1 77.3 0z" fill="#3e4347"/>
          <path d="M380.4 241.1c-3.2 3.2-9.9 1.7-14.9-3.2-4.8-4.8-6.2-11.5-3-14.7 3.3-3.4 10-2 14.9 2.9 4.9 5 6.4 11.7 3 15z" fill="#fff"/>
          <path d="M242.8 222.3c-5.3 62.8-52 113.9-104.8 113.9-52.3 0-90.8-51.1-85.6-113.9 2-25 10.8-47.9 23.7-66.7 4.1-6.1 12.2-8 18.5-4.2 16.2 10.1 36.2 16.2 60.1 16.2 22.8 0 42.1-5.6 57.8-14.8 6.8-4 15.4-1.5 18.9 5.4 9 18.2 13.2 40.3 11.4 64.1z" fill="#f4c534"/>
          <path d="M155 189.5c-25.8 0-47-7.1-63.7-18.7-10 14.6-17 32.1-18.7 51.6-4 49.6 26.1 89.7 67.5 89.7 41.6 0 78.4-40.1 82.5-89.7A95 95 0 0 0 214 174c-16 9.7-35.6 15.5-59 15.5z" fill="#fff"/>
          <path d="M115.8 246.1a38.5 38.5 0 0 0 38.7 38.6 38.5 38.5 0 0 0 38.6-38.6 38.6 38.6 0 1 0-77.3 0z" fill="#3e4347"/>
          <path d="M131.6 241.1c3.2 3.2 9.9 1.7 14.9-3.2 4.8-4.8 6.2-11.5 3-14.7-3.3-3.4-10-2-14.9 2.9-4.9 5-6.4 11.7-3 15z" fill="#fff"/>
        </svg>
          <svg class="rating-2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
          <path d="M512 256A256 256 0 0 1 56.7 416.7a256 256 0 0 0 360-360c58.1 47 95.3 118.8 95.3 199.3z" fill="#f4c534"/>
          <path d="M336.6 403.2c-6.5 8-16 10-25.5 5.2a117.6 117.6 0 0 0-110.2 0c-9.4 4.9-19 3.3-25.6-4.6-6.5-7.7-4.7-21.1 8.4-28 45.1-24 99.5-24 144.6 0 13 7 14.8 19.7 8.3 27.4z" fill="#3e4347"/>
          <path d="M276.6 244.3a79.3 79.3 0 1 1 158.8 0 79.5 79.5 0 1 1-158.8 0z" fill="#fff"/>
          <circle cx="340" cy="260.4" r="36.2" fill="#3e4347"/>
          <g fill="#fff">
            <ellipse transform="rotate(-135 326.4 246.6)" cx="326.4" cy="246.6" rx="6.5" ry="10"/>
            <path d="M231.9 244.3a79.3 79.3 0 1 0-158.8 0 79.5 79.5 0 1 0 158.8 0z"/>
          </g>
          <circle cx="168.5" cy="260.4" r="36.2" fill="#3e4347"/>
          <ellipse transform="rotate(-135 182.1 246.7)" cx="182.1" cy="246.7" rx="10" ry="6.5" fill="#fff"/>
        </svg>
          <svg class="rating-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
    <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
    <path d="M407.7 352.8a163.9 163.9 0 0 1-303.5 0c-2.3-5.5 1.5-12 7.5-13.2a780.8 780.8 0 0 1 288.4 0c6 1.2 9.9 7.7 7.6 13.2z" fill="#3e4347"/>
    <path d="M512 256A256 256 0 0 1 56.7 416.7a256 256 0 0 0 360-360c58.1 47 95.3 118.8 95.3 199.3z" fill="#f4c534"/>
    <g fill="#fff">
      <path d="M115.3 339c18.2 29.6 75.1 32.8 143.1 32.8 67.1 0 124.2-3.2 143.2-31.6l-1.5-.6a780.6 780.6 0 0 0-284.8-.6z"/>
      <ellipse cx="356.4" cy="205.3" rx="81.1" ry="81"/>
    </g>
    <ellipse cx="356.4" cy="205.3" rx="44.2" ry="44.2" fill="#3e4347"/>
    <g fill="#fff">
      <ellipse transform="scale(-1) rotate(45 454 -906)" cx="375.3" cy="188.1" rx="12" ry="8.1"/>
      <ellipse cx="155.6" cy="205.3" rx="81.1" ry="81"/>
    </g>
    <ellipse cx="155.6" cy="205.3" rx="44.2" ry="44.2" fill="#3e4347"/>
    <ellipse transform="scale(-1) rotate(45 454 -421.3)" cx="174.5" cy="188" rx="12" ry="8.1" fill="#fff"/>
  </svg>
          <svg class="rating-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <circle cx="256" cy="256" r="256" fill="#ffd93b"/>
          <path d="M512 256A256 256 0 0 1 56.7 416.7a256 256 0 0 0 360-360c58.1 47 95.3 118.8 95.3 199.3z" fill="#f4c534"/>
          <path d="M232.3 201.3c0 49.2-74.3 94.2-74.3 94.2s-74.4-45-74.4-94.2a38 38 0 0 1 74.4-11.1 38 38 0 0 1 74.3 11.1z" fill="#e24b4b"/>
          <path d="M96.1 173.3a37.7 37.7 0 0 0-12.4 28c0 49.2 74.3 94.2 74.3 94.2C80.2 229.8 95.6 175.2 96 173.3z" fill="#d03f3f"/>
          <path d="M215.2 200c-3.6 3-9.8 1-13.8-4.1-4.2-5.2-4.6-11.5-1.2-14.1 3.6-2.8 9.7-.7 13.9 4.4 4 5.2 4.6 11.4 1.1 13.8z" fill="#fff"/>
          <path d="M428.4 201.3c0 49.2-74.4 94.2-74.4 94.2s-74.3-45-74.3-94.2a38 38 0 0 1 74.4-11.1 38 38 0 0 1 74.3 11.1z" fill="#e24b4b"/>
          <path d="M292.2 173.3a37.7 37.7 0 0 0-12.4 28c0 49.2 74.3 94.2 74.3 94.2-77.8-65.7-62.4-120.3-61.9-122.2z" fill="#d03f3f"/>
          <path d="M411.3 200c-3.6 3-9.8 1-13.8-4.1-4.2-5.2-4.6-11.5-1.2-14.1 3.6-2.8 9.7-.7 13.9 4.4 4 5.2 4.6 11.4 1.1 13.8z" fill="#fff"/>
          <path d="M381.7 374.1c-30.2 35.9-75.3 64.4-125.7 64.4s-95.4-28.5-125.8-64.2a17.6 17.6 0 0 1 16.5-28.7 627.7 627.7 0 0 0 218.7-.1c16.2-2.7 27 16.1 16.3 28.6z" fill="#3e4347"/>
          <path d="M256 438.5c25.7 0 50-7.5 71.7-19.5-9-33.7-40.7-43.3-62.6-31.7-29.7 15.8-62.8-4.7-75.6 34.3 20.3 10.4 42.8 17 66.5 17z" fill="#e24b4b"/>
        </svg>
          <svg class="rating-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <g fill="#ffd93b">
            <circle cx="256" cy="256" r="256"/>
            <path d="M512 256A256 256 0 0 1 56.8 416.7a256 256 0 0 0 360-360c58 47 95.2 118.8 95.2 199.3z"/>
          </g>
          <path d="M512 99.4v165.1c0 11-8.9 19.9-19.7 19.9h-187c-13 0-23.5-10.5-23.5-23.5v-21.3c0-12.9-8.9-24.8-21.6-26.7-16.2-2.5-30 10-30 25.5V261c0 13-10.5 23.5-23.5 23.5h-187A19.7 19.7 0 0 1 0 264.7V99.4c0-10.9 8.8-19.7 19.7-19.7h472.6c10.8 0 19.7 8.7 19.7 19.7z" fill="#e9eff4"/>
          <path d="M204.6 138v88.2a23 23 0 0 1-23 23H58.2a23 23 0 0 1-23-23v-88.3a23 23 0 0 1 23-23h123.4a23 23 0 0 1 23 23z" fill="#45cbea"/>
          <path d="M476.9 138v88.2a23 23 0 0 1-23 23H330.3a23 23 0 0 1-23-23v-88.3a23 23 0 0 1 23-23h123.4a23 23 0 0 1 23 23z" fill="#e84d88"/>
          <g fill="#38c0dc">
            <path d="M95.2 114.9l-60 60v15.2l75.2-75.2zM123.3 114.9L35.1 203v23.2c0 1.8.3 3.7.7 5.4l116.8-116.7h-29.3z"/>
          </g>
          <g fill="#d23f77">
            <path d="M373.3 114.9l-66 66V196l81.3-81.2zM401.5 114.9l-94.1 94v17.3c0 3.5.8 6.8 2.2 9.8l121.1-121.1h-29.2z"/>
          </g>
          <path d="M329.5 395.2c0 44.7-33 81-73.4 81-40.7 0-73.5-36.3-73.5-81s32.8-81 73.5-81c40.5 0 73.4 36.3 73.4 81z" fill="#3e4347"/>
          <path d="M256 476.2a70 70 0 0 0 53.3-25.5 34.6 34.6 0 0 0-58-25 34.4 34.4 0 0 0-47.8 26 69.9 69.9 0 0 0 52.6 24.5z" fill="#e24b4b"/>
          <path d="M290.3 434.8c-1 3.4-5.8 5.2-11 3.9s-8.4-5.1-7.4-8.7c.8-3.3 5.7-5 10.7-3.8 5.1 1.4 8.5 5.3 7.7 8.6z" fill="#fff" opacity=".2"/>
        </svg>
        </div>
      </div>
    </div>
  </div>
</div>
</c:if>
<c:if test = "${pageContext['request'].userPrincipal.principal.enabled != true}">
<div class="jumbotron-fluid text-center"><h6>Login to submit your Rating</h6></div>
</c:if>
<br>
<br>


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
    