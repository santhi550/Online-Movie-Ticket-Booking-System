<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <style>
  ::-webkit-scrollbar {
      width: 10px;
    }
    ::-webkit-scrollbar-track {
      box-shadow: inset 0 0 5px white;
    }
    ::-webkit-scrollbar-thumb {
      background-color:slateblue;
    }
    ::-webkit-scrollbar-thumb:hover {
        background-color:slateblue;
    }
  body {
    background: #fbfbfd;
}
  .book-form{
  margin-left:auto;
  margin-right:auto;
  width:50%;
  margin-top:2%;
  background-color:white;
  box-shadow:0px 3px 8px rgba(0,0,0,0.5);
  }
  .proceed{
  width:100%;
  margin:5px;
  padding:5px;
  color:white;
  background-color:slateblue;
  }
  @media(max-width:768px){
  .book-form{
  width:90%;
  }
  }
  </style>
  </head>
  <body>
  <div class="jumbotron text-center book-form">
 <div class="row">
 <div class="col-xl-5">
 <img src="/images/${image}" class="img-reponsive" style="width:200px;height:300px">
 </div>
 <div class="col-xl-6 text-left">
<h5 class="heading">${movie_name}</h5>
  
  <h5 class="heading">${tname}</h5>
  
  <h5 class="heading">${bookingdate}</h5>
  
  <h5 class="heading">${time}</h5>
 
  <h5 class="heading">Seat nos : ${ticket}</h5>
  
  <h5 class="heading">Rs ${amount}</h5>
  
	</div>
	</div>
	<form action="/success" id="book" method="post">
	<input type="hidden" name="tid" value="${tid}" >
    <input type="hidden" name="date" value="${bookingdate}" >
    <input type="hidden" name="mid" value="${mid}" >
    <input type="hidden" name="time" value="${time}" >
    <input type="hidden" name="seq" value="${ticket}" >
   <input type="hidden" name="amount" value="${amount}" >
	<br>
	<p style="color:slateblue">Your tickets will be send to this email</p>
		<input class="form-control" id="email" name="email" value="${email}" placeholder="Enter Email" />
		<br>
	<button type="button" class="btn proceed" onclick="proceed()">Proceed</button>
	</form>
	</div>

  </body>
  </html>