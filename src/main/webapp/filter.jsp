<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container" style="margin-left:15%;">
<div class="row" >
<c:forEach items="${movie_list}" var="temp">
  <div  class="col-xl-3 col-md-4 col-sm-4 col-8 movie">
    <a href="javascript:void(0)" onclick="gotomovie(${temp.movie_id})" class="movie-link">
		<div class="img-responsive">
      <img src="/images/${temp.img}" class="movie-img">
      	<br>
      	<h4 class="heading" >${temp.movie_name}</h4>
    	</div>
  </a>
  </div>
  </c:forEach>
  
</div>
</div>
<c:if test = "${movie_list.size() == 0 }">
<div class="jumbotron text-center" style="background-color:slateblue;width:50%;margin:auto;">
<h1 class="heading">No Movies Available</h1>
</div>
</c:if>