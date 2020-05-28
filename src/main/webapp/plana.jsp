<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
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
      .ticket{
        width:40px;
        font-size:15px;
        padding:5px;
        margin:5px;
        color:white;
        background-color:slateblue;
      }
      .ticket:hover,.ticket:active,.ticket:focus{
        color:white;
        background-color:slateblue;
      }
      footer{
        left:0;
        bottom:0;
        position:fixed;
        height:0px;
        transition:0.5s;
        width:100%;
        background-color:slateblue;
      }
      header{
        left:0;
        top:0;
        position:fixed;
        width:100%;
        background-color:slateblue;
        height:50px;
      }
      .budget{
        background-color:transparent;
        color:white;
        width:100px;
        font-size:30px;
        font-weight:500;
        border:none;
        outline:none;
        margin-left:10px;
        margin-top:5px;
        margin-bottom:5px;
        height:40px;
        float:left;
      }
      .rupee{
        font-size:25px;
        color:white;
        margin-left:100px;
        margin-top:5px;
        margin-bottom:5px;
        float:left;
      }
      .book{
        height:40px;
        margin-top:5px;
        margin-bottom:5px;
        margin-right:200px;
        width:300px;
        float:right;
      }
      .ticket_screen{
        margin-top:60px;
      }
      .heading3{
        color:white;
        margin:10px;
      }
      .theatre_screen{
        width:500px;
        margin-left:auto;
        margin-right:auto;
        padding:5px;
      }
    </style>
  </head>
  <body>
  <div id="matter">
         <header class="jumbotron-fluid text-left">
<h5 class="heading3">Booking for ${bookingdate}, ${time}</h5>
      </header>
<div class="jumbotron-fluid text-center ticket_screen" id="screenid">
</div>
<br>
<br>
  <div class="jumbotron text-center theatre_screen">
    Screen
    </div>
<footer id="footer" class="jumbotron-fluid text-center">
<span class="rupee">Rs</span><input id="budget" type="number" class="budget" value=0 readonly>
<button type="button" class="btn btn-light book" onclick="Bookticket()">Book</button>
</footer>
</div>
<script type="text/javascript">
  var gold_price=150;
  var silver_price=100;
  var gold_tickets=["A01","A02","A03","A04","A05","A06","A07","A08","A09","A10","A11","A12","A13","A14"
  ,"B01","B02","B03","B04","B05","B06","B07","B08","B09","B10","B11","B12","B13","B14"
  ,"C01","C02","C03","C04","C05","C06","C07","C08","C09","C10","C11","C12","C13","C14"
  ,"D01","D02","D03","D04","D05","D06","D07","D08","D09","D10","D11","D12","D13","D14"
  ,"E01","E02","E03","E04","E05","E06","E07","E08","E09","E10","E11","E12","E13","E14"];
  var silver_tickets=["F01","F02","F03","F04","F05","F06","F07","F08","F09","F10","F11","F12"
  ,"G01","G02","G03","G04","G05","G06","G07","G08","G09","G10","G11","G12"
  ,"H01","H02","H03","H04","H05","H06","H07","H08","H09","H10","H11","H12"
  ,"I01","I02","I03","I04","I05","I06","I07","I08","I09","I10","I11","I12"
  ,"J01","J02","J03","J04","J05","J06","J07","J08","J09","J10","J11","J12"];
  var already_booked=${booked};
  console.log(already_booked);
  const screenid=document.getElementById('screenid');
  document.getElementById('screenid').innerHTML="";
  for(i=0;i<gold_tickets.length;i++){
    if(already_booked.indexOf(gold_tickets[i])!=-1){
      document.getElementById('screenid').innerHTML+="<button type='button' class='btn btn-light ticket' id="+gold_tickets[i]+" name='button' disabled>"+gold_tickets[i]+"</button>";
    }
    else{
      document.getElementById('screenid').innerHTML+="<button type='button' class='btn btn-light gold ticket active_ticket' id="+gold_tickets[i]+" name='button'>"+gold_tickets[i]+"</button>";
    }
    if((i+1)%7==0){
      document.getElementById('screenid').innerHTML+='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
    }
    if((i+1)%14==0){
      document.getElementById('screenid').innerHTML+="<br>";
    }
  }
  document.getElementById('screenid').innerHTML+="<br>";
  document.getElementById('screenid').innerHTML+="<br>";
  for(i=0;i<silver_tickets.length;i++){
    if(already_booked.indexOf(silver_tickets[i])!=-1){
      document.getElementById('screenid').innerHTML+="<button type='button' class='btn btn-light ticket' id="+silver_tickets[i]+" name='button' disabled>"+silver_tickets[i]+"</button>";
    }
    else{
      document.getElementById('screenid').innerHTML+="<button type='button' class='btn btn-light silver ticket active_ticket' id="+silver_tickets[i]+" name='button'>"+silver_tickets[i]+"</button>";
    }
    if((i+1)%6==0){
      document.getElementById('screenid').innerHTML+='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
    }
    if((i+1)%12==0){
      document.getElementById('screenid').innerHTML+="<br>";
    }
  }
  var arr=[];
  $(document).ready(function(){
    $(".active_ticket").click(function(){
          if(arr.indexOf(String(this.id))!=-1){
            if($(this).hasClass('gold')){
              document.getElementById('budget').value=parseInt(document.getElementById('budget').value)-150;
            }
            else if($(this).hasClass('silver')){
              document.getElementById('budget').value=parseInt(document.getElementById('budget').value)-100;

            }
            $(this).css("background-color", "slateblue");
          arr.splice(arr.indexOf(String(this.id)),1);
          }
          else{
            if(arr.length<6){
                      if($(this).hasClass('gold')){
                        document.getElementById('budget').value=parseInt(document.getElementById('budget').value)+150;
                      }
                      else if($(this).hasClass('silver')){
                        document.getElementById('budget').value=parseInt(document.getElementById('budget').value)+100;

                      }
                      arr.push(String(this.id));
                      $(this).css("background-color", "mediumseagreen");
                    }
                else{
                  alert("At a time 6 tickets can be booked");
                }
              }
              if(parseInt(document.getElementById('budget').value)!=0){
                  document.getElementById('footer').style.height="60px";
                }
                else{
                    document.getElementById('footer').style.height="0px";
                }
    });
  });
  function Bookticket(){
		bookingdate='${bookingdate}';
		mid='${mid}';
		time='${time}';
		tid='${tid}';
		amount=String(document.getElementById('budget').value);
		var seq='';
		for(p=0;p<arr.length;p++){
			if(p==0){
			seq=arr[p];
			}else{
				seq+=","+arr[p]
			}
		}
		var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	    	document.getElementById('matter').innerHTML=this.responseText;
	   if (this.readyState == 4 && this.status == 200) {
	    	  document.getElementById('matter').innerHTML=this.responseText;
	      }
	    };
	    xhttp.open("GET", "bookticket?date="+bookingdate+"&mid="+mid+"&tid="+tid+"&time="+time+"&seq="+seq+"&amount="+amount,true);
	    xhttp.send();
	}
  </script>
  	<script>
	function proceed(){
		if(document.getElementById('email').value!=''){
			document.getElementById('book').submit();
		}
		else{
			alert("Email must be filled");
		}
	}
	
	</script>
  </body>
</html>
    