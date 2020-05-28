<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="jumbotron-fluid text-left movie-theater">
<c:forEach items="${theatres}" var="theatre">
    <h6 class="heading2">${theatre.tname}</h6>
    <form action="${theatre.seating_plan}" method="post">
    <input type="hidden" name="tid" value="${theatre.tid}" >
    <input type="hidden" name="date" value="${bookingdate}" >
    <input type="hidden" name="mid" value="${mid}" >
    <input type="hidden" id="${theatre.tid}" name="time" >
    <c:forEach items="${times}" var="time">
		<c:if test = "${time.tid == theatre.tid}" >
			<c:forEach var="entry" items="${hm}">
			    <c:if test = "${entry.key == time.id}" >
			    	<c:if test = "${entry.value != 'default'}" >
			    		<button type="submit" class="btn btn-outline-${entry.value} time_btn" onclick="document.getElementById('${theatre.tid}').value='${time.time}';">${time.time}</button>
			    	</c:if>
			    	<c:if test = "${entry.value == 'default'}" >
			    		<button type="submit" class="btn btn-outline-${entry.value} time_btn" disabled>${time.time}</button>
			    	</c:if>
			    </c:if>
			</c:forEach>
		</c:if>
    </c:forEach> 
 </form>
</c:forEach>
<c:if test = "${theatres.size() == 0 }">
<div class="jumbotron text-center" style="background-color:slateblue">
<h1 class="heading">No Shows Available</h1>
</div>
</c:if>



  </div>