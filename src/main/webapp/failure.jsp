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
  .book-form{
  margin-left:auto;
  margin-right:auto;
  width:50%;
  margin-top:2%;
  background-color:white;
  box-shadow:0px 3px 8px rgba(0,0,0,0.5);
  }
  @media(max-width:768px){
  .book-form{
  width:90%;
  }
  }
  .failure{
text-align:left;
color:red;
} 
.check{
padding:15px;
margin:5px;
font-size:22px;
border-radius:50%;
background-color:red;
box-shadow:0px 3px 6px rgba(0,0,0,0.3);
color:white;
 animation-name: example;
  animation-duration: 0.5s;
}
@keyframes example {
  from {border-radius: 0%;
  background-color:white;
  color:red;
  }
  to {border-radius:50%;
  background-color:red;
  color:white;
  }
}
  </style>
</head>
<body>
<div class="jumbotron text-left book-form">
<h2 class="failure"><span class="check"><i class="fas fa-times"></i></span>Already Booked</h2>
<br>
<br>
<h5>Book Again</h5>

</div>
</body>
</html>