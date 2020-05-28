
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container ticks">
<div class="row">
<c:forEach items="${bookings}" var="book">
<div class="col-xl-5 ticket">
<table class="table">
	<tr>
		<th>
		Transaction Id
		</th>
		<td>
		${book.trans_id}
		</td>
	</tr>
	<tr>
		<th>
		Movie Name
		</th>
		<td>
		<c:forEach items="${movies}" var="entry">
			<c:if test = "${entry.key == book.trans_id}" >
			${entry.value}
			</c:if>
		</c:forEach>
		</td>
	</tr>
	<tr>
		<th>
		Theatre Name
		</th>
		<td>
		<c:forEach items="${theatres}" var="entry">
			<c:if test = "${entry.key == book.trans_id}" >
			${entry.value}
			</c:if>
		</c:forEach>
		</td>
	</tr>
	<tr>
		<th>
		Tickets
		</th>
		<td>
		<c:forEach items="${tickets}" var="entry">
			<c:if test = "${entry.key == book.trans_id}" >
			${entry.value}
			</c:if>
		</c:forEach>
		</td>
	</tr>
	<tr>
		<th>
		Date
		</th>
		<td>
		${book.date}
		</td>
	</tr>
	<tr>
		<th>
		Show Time
		</th>
		<td>
		${book.time}
		</td>
	</tr>
	<tr>
		<th>
		Amount
		</th>
		<td>
		${book.amount}
		</td>
	</tr>
</table>
</div>
</c:forEach>
</div>
</div>