<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <div class="user-info jumbotron ">
        <form action="/updateprofile" class="form-group" method="post">
          <label for="full_name"><b>Name</b></label>
          <input type="text" class="form-control" name="full_name" value="${user.full_name}">
          <label for="location"><b>Location</b></label>
          <select class="form-control" name="location" value="${user.location}">
          <option value="${user.location}">${user.location}</option>
            <c:forEach items="${locations}" var="temp">
            <c:if test="${user.location !=temp}">
            <option value="${temp}">${temp}</option>
            </c:if>
            </c:forEach>
          </select>
          <label for="Email"><b>Email</b></label>
          <input type="text" class="form-control" name="email" value="${user.email}" readonly>
          <center><button type="submit" name="button" class="btn btn-dark" >Update</button></center>
        </form>
      </div>