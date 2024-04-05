<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="layout/header.jsp"/>

<h3>${title}</h3>

<form action="/webapp-session/login" method="post">
  <div class="row my-2">
    <label for="username" class"form-label">Username</label>
    <div>
      <input type="text" name="username" id="username" class="form-control">
    </div>
  </div>
  <div class="row my-2">
    <label for="password" class"form-label">Password</label>
    <div>
      <input type="password" name="password" id="password" class="form-control">
    </div>
  </div>
  <div class="row my-2">
    <input type="submit" value="Login" class="btn btn-primary">
  </div>
</form>
<div class="my-2">
    <a class="btn btn-secondary" href="${pageContext.request.contextPath}/index.jsp">volver al inicio</a>
</div>

<jsp:include page="layout/footer.jsp"/>